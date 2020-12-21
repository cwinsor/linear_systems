#!/bin/bash
#
################################################
# activate the virtual environment
# reference:   https://packaging.python.org/tutorials/installing-packages/#optionally-create-a-virtual-environment
#
# if venv folder does not exist - create it
#
FILE=venv_linux/bin/activate

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo ""
    echo "$FILE does not exist - creating now..."

    # confirm at least we have python with pip
    python3 --version
    python3 -m pip --version

    # create an empty virtualenv
    python3 -m venv venv_linux
fi

# activate the venv
source "$FILE"

# ensure pip, setuptools and wheels are up to date
#python3 -m pip install --upgrade pip setuptools wheel

# get the libraries specified in requirements.txt and show a list
pip install -r requirements.txt
pip list

# document package versions - historical reference
pip freeze > requirements_detailed_linux.txt

################################################
# add to PYTHONPATH for python modules
#$Env:PYTHONPATH= '.'
#$Env:PYTHONPATH= $Env:PYTHONPATH + ';' + $PWD
#$Env:PYTHONPATH= $Env:PYTHONPATH + ';' + $PWD + '\foodir'


#################################################
# print instructions on what to do next...
echo " "
echo "Environment setup is complete"
echo " "

