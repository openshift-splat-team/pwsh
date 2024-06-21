# Overview

This repo creates a shell image for powershell. This image is intended to be used in a multi-stage build with the upi-installer image.  The upi-installer image should copy `powershell.tar.gz` and `install-pwsh.sh`. `install-pwsh.sh` should be run to install powershell in the upi-installer image.