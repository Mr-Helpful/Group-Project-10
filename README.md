# Group-Project-10
Code base for the Flask server used for model conversion.

## Setting up
1. Install required Python modules with `pip install tensorflow tensorflowjs flask`
2. Install Tensorflow Lite runtime with `pip3 install --extra-index-url https://google-coral.github.io/py-repo/ tflite_runtime`
3. Install a C/C++ compiler so that `make` can be run
4. Install the `arm-none-eabi-gcc` toolchain, e.g. with `sudo apt install gcc-arm-none-eabi` 
5. Update git submodules with `git submodule update --init --recursive`
6. Build MicroPython mpy-cross with `make -C micropython-microbit-v2/lib/micropython/mpy-cross`
7. Build MicroPython with `make -C micropython-microbit-v2/src`

After step 4, running the `setup.py` script with `python3 setup.py` will complete steps 5, 6, and 7, and verify the installations.

## Deployment
Lauch the server with `python3 app.py`. By default, this serves `http://localhost:3000/` which can be changed in `app.py`.

The server expects a POST request of the form as in Tensorflow JS's `model.save(*server address*)` and will respond with the built MicroPython hex file `MICROBIT.hex`.