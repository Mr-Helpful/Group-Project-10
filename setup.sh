sudo apt install gcc-arm-none-eabi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install gcc make cmake python
pip3 install tensorflow tensorflowjs flask
pip3 install --extra-index-url https://google-coral.github.io/py-repo/ tflite_runtime

git submodule update --init --recursive
make -C micropython-microbit-v2/lib/micropython/mpy-cross
make -C micropython-microbit-v2/src