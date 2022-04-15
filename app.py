from flask import Flask, request, render_template, abort, send_from_directory, make_response
from werkzeug.utils import secure_filename
import os, shlex, subprocess, shutil
import tensorflow as tf
import tensorflowjs as tfjs


app = Flask(__name__)
app.config['UPLOAD_EXTENSIONS'] = ['.json', '.bin']
app.config['UPLOAD_PATH'] = 'uploads'
app.config['XXDI_LOC'] = 'assets/xxdi.py'
app.config['MPY_SRC'] = 'micropython-microbit-v2/src'
app.config['TEMPLATES_AUTO_RELOAD'] = True
app.jinja_env.auto_reload = True


@app.route('/', methods=['GET', 'POST'])
def index():
	if request.method == 'GET':
		return render_template('index.html')
	elif request.method == 'POST':
		save_file(request.files["model.json"])
		save_file(request.files["model.weights.bin"])

		try:
			convert_to_tflite()

			convert_to_cpp()

			build()
		
			response = make_response(send_from_directory(app.config['MPY_SRC'], 'MICROBIT.hex', as_attachment=True))
			response.headers['Access-Control-Allow-Origin'] = '*'
			return response
		except:
			abort(500)

def save_file(uploaded_file):
	filename = secure_filename(uploaded_file.filename)
	if filename != '':
		file_ext = os.path.splitext(filename)[1]
		if file_ext not in app.config['UPLOAD_EXTENSIONS']:
			abort(400)
		uploaded_file.save(os.path.join(app.config['UPLOAD_PATH'], filename))

def convert_to_tflite():
	model = tfjs.converters.load_keras_model("uploads/model.json")
	model.save("model_files")

	converter = tf.lite.TFLiteConverter.from_saved_model("model_files")
	tflite_model = converter.convert()
	open("model_files/converted_model.tflite", "wb").write(tflite_model)

def convert_to_cpp():
	args = shlex.split('python3 ' + app.config['XXDI_LOC'] + ' model_files/converted_model.tflite model_files/converted_model.cpp')
	proc = subprocess.Popen(args)
	proc.wait()

	shutil.copy('model_files/converted_model.cpp', app.config['MPY_SRC'] + '/codal_app/tflite/model.cpp')

def build():
	args = shlex.split('make -C ' + app.config['MPY_SRC'])
	proc = subprocess.Popen(args)
	proc.wait()

if __name__ == '__main__':
	app.run(host='0.0.0.0', port='3000', debug=True)
