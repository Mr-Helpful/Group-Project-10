if __name__ == '__main__':
    """Verification of required Python and C++ dependancies, and finalisation of server setup."""

    ## Ensure required Python modules are installed and available on PATH.
    try:
        import sys, os
        from flask import Flask, request, render_template, abort, send_from_directory, make_response
        from werkzeug.utils import secure_filename
        import shlex, subprocess, shutil
        import tensorflow as tf
        import tensorflowjs as tfjs
        print("Required modules imported succesfully.\n")
    except ImportError as e:
        print("Module import failed. Please ensure flask, tensorflow and tensorflowjs are installed on PATH. Details:\n")
        print(e)
        sys.exit(1)
    

    ## Ensure git submodules are updated.
    try:
        args = shlex.split("git submodule update --init --recursive")
        proc = subprocess.Popen(args)
        proc.wait()
        print("\nGit submodules updated successfully.\n")
    except FileNotFoundError as e:
        print("\nFailed to update git submodules. Details:\n")
        print(e)
        sys.exit(1)


    ## Ensure 'make' is installed and MicroPython mpy-cross is built for the micro:bit
    try:
        args = shlex.split("make -C micropython-microbit-v2/lib/micropython/mpy-cross")
        proc = subprocess.Popen(args)
        proc.wait()
        print("\nMicroPython mpy-cross built successfully.\n")
    except FileNotFoundError as e:
        print("\nFailed to build MicroPython mpy-cross. Ensure 'make' and required toolchains are installed, and git submodules updated. Details:\n")
        print(e)
        sys.exit(1)
    

    ## Build a sample version of MicroPython to speed up future builds.
    try:
        args = shlex.split("make -C micropython-microbit-v2/src")
        proc = subprocess.Popen(args)
        proc.wait()
        print("\nMicroPython built successfully.\n")
    except FileNotFoundError as e:
        print("\nFailed to build MicroPython. Ensure 'make' and required toolchains are installed, and git submodules updated. Details:\n")
        print(e)
        sys.exit(1)
    
    print("\nAll required prerequesites verified.")
    sys.exit(0)
    