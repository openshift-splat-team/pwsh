#!/bin/sh

python3 -m venv azure-cli
. azure-cli/bin/activate
pip3 install --pre azure-cli==2.72.0 --extra-index-url https://azurecliprod.blob.core.windows.net/edge --upgrade-strategy=eager
