# Should be capable of full setup from a blank linux env
sudo apt update
sudo apt install gcc gcc-arm-none-eabi

# Brew install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/vscode/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential

# Python + C tools install
brew install gcc make cmake python
pip3 install tensorflow tensorflowjs flask
pip3 install --extra-index-url https://google-coral.github.io/py-repo/ tflite_runtime

# Repository setup
git submodule update --init --recursive
make -C micropython-microbit-v2/lib/micropython/mpy-cross
make -C micropython-microbit-v2/src