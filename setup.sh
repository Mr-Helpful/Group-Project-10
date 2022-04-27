# Should be capable of full setup from a blank c++ docker env
# Try running with `bash -e setup.sh` (the -e option fails if any commands fail)
echo "----------------------------------------------------------------"
echo "-                 Installing gcc prerequesites                 -"
echo "----------------------------------------------------------------"
sudo apt update
sudo apt install gcc gcc-arm-none-eabi

# Brew install
echo "----------------------------------------------------------------"
echo "-                     Installing Homebrew                      -"
echo "----------------------------------------------------------------"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/vscode/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential

# Python + C tools install
echo "----------------------------------------------------------------"
echo "-                 Installing Python & C tools                  -"
echo "----------------------------------------------------------------"
brew install gcc make cmake python
pip3 install tensorflow tensorflowjs flask
pip3 install --extra-index-url https://google-coral.github.io/py-repo/ tflite_runtime

# Repository setup
echo "----------------------------------------------------------------"
echo "-                  Setting up git repository                   -"
echo "----------------------------------------------------------------"
git submodule update --init --recursive
make -C micropython-microbit-v2/lib/micropython/mpy-cross
make -C micropython-microbit-v2/src