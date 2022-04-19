from flask import Flask, request, render_template, abort, send_from_directory, make_response
from flask_cors import CORS, cross_origin
from werkzeug.utils import secure_filename
import os, sys, shlex, subprocess, shutil
import tensorflow as tf
import tensorflowjs as tfjs


## Set global variables for flask server
app = Flask(__name__)
app.config['UPLOAD_EXTENSIONS'] = ['.json', '.bin']
app.config['UPLOAD_PATH'] = 'uploads'
app.config['XXDI_LOC'] = 'assets/xxdi.py'
app.config['MPY_SRC'] = 'micropython-microbit-v2/src'
app.config['TEMPLATES_AUTO_RELOAD'] = True
app.jinja_env.auto_reload = True
CORS(app) ## This should be removed as soon as possible to prevent CSRF attacks


## The app allows GET and POST requests to 'http://localhost:5000/convert'
@app.route('/convert', methods=['GET', 'POST'])
@cross_origin()
def index():
  ## A GET request serves a simple page describing how to use the server.
  if request.method == 'GET':
    return render_template('index.html')

  ## A POST request expects the TensorFlow JS model files in a standard HTML form submission
  elif request.method == 'POST':
    try:
      ## The model files are saved to the server
      save_file(request.files["model.json"])
      save_file(request.files["model.weights.bin"])

      ## The model is converted to a hex file in stages.
      convert_to_tflite()

      convert_to_cpp()

      build()
    
      ## A POST response is constructed to send the hex file back, with the correct CORS header
      response = make_response(send_from_directory(app.config['MPY_SRC'], 'MICROBIT.hex', as_attachment=True))
      return response
    except Exception as e:
      print(e)
      abort(500)


def save_file(uploaded_file):
  """Savees a file locally. Ensures the filename is secure and the extension is allowed."""
  filename = secure_filename(uploaded_file.filename)
  if filename != '':
    file_ext = os.path.splitext(filename)[1]
    if file_ext not in app.config['UPLOAD_EXTENSIONS']:
      abort(400)
    uploaded_file.save(os.path.join(app.config['UPLOAD_PATH'], filename))
  else:
    abort(400)


def convert_to_tflite():
  """Converts a TF JS model to the TFLite FlatBuffer format via the TF SavedModel format."""
  model = tfjs.converters.load_keras_model("uploads/model.json")
  model.save("model_files")

  converter = tf.lite.TFLiteConverter.from_saved_model("model_files")
  tflite_model = converter.convert()
  open("model_files/converted_model.tflite", "wb").write(tflite_model)


def convert_to_cpp():
  """Converts the TFLite model to a C++ hex array using the 'xxd -i' Python script."""
  args = shlex.split('python3 ' + app.config['XXDI_LOC'] + ' model_files/converted_model.tflite model_files/converted_model.cpp')
  proc = subprocess.Popen(args)
  proc.wait()

  shutil.copy('model_files/converted_model.cpp', app.config['MPY_SRC'] + '/codal_app/tflite/model.cpp')


def build():
  """Builds MicroPython using CMake and the model array."""
  args = shlex.split('make -C ' + app.config['MPY_SRC'])
  proc = subprocess.Popen(args)
  proc.wait()


if __name__ == '__main__':
  ## Ensure the relevant MicroPython files are already built (this is handled by setup.py).
  if not os.path.exists("micropython-microbit-v2/lib/micropython/mpy-cross/build") or not os.path.exists(app.config['MPY_SRC'] + "/build"):
    print("MicroPython build is not detected. Run the setup.py script to install dependancies.")
    sys.exit(1)

  ## Serve the flask app
  app.run(host='0.0.0.0', port='5000', debug=True)
