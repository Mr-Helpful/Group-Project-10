# Group-Project-10
Code base for the Flask server used for model conversion.

## Setting up
* Update submodules with `git submodule update --init --recursive`
* Install required Python modules with `pip install tensorflow tensorflowjs flask`
* Install Tensorflow Lite runtime with `pip3 install --extra-index-url https://google-coral.github.io/py-repo/ tflite_runtime`
* Install a C/C++ compiler so that `make` can be run
* Install the `arm-none-eabi-gcc` toolchain, e.g. with `sudo apt install gcc-arm-none-eabi` 
* Build MicroPython mpy-cross with `make -C micropython-microbit-v2/lib/micropython/mpy-cross`
* Build MicroPython with `make -C micropython-microbit-v2/src`

## Deployment
Lauch the server with `python3 app.py`. By default, this serves `http://localhost:3000/` which can be changed in `app.py`.

The server expects a POST request of the form as in Tensorflow JS's `model.save(*server address*)` and will respond with the built MicroPython hex file `MICROBIT.hex`.