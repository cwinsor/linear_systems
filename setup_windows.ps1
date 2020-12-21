################################################
# activate the virtual environment
# reference:   https://packaging.python.org/tutorials/installing-packages/#optionally-create-a-virtual-environment

# if venv folder does not exist - create it
if (-NOT (Test-Path '.\venv_windows\Scripts\activate' -PathType Leaf)) {

    " "
    "did not find venv_windows\Scripts\activate - creating now..."

    # confirm at least we have python with pip
    python --version
    python -m pip --version


    # create an empty virtualenv
    python -m venv venv_windows

    }

# activate the venv
.\venv_windows\Scripts\activate

# ensure pip, setuptools and wheels are up to date
#python -m pip install --upgrade pip setuptools wheel

# get the libraries specified in requirements.txt and show a list
pip install -r requirements.txt
pip list

# document package versions - historical reference
pip freeze >.\requirements_detailed_windows.txt

################################################
# add to PYTHONPATH for python modules
$Env:PYTHONPATH= '.'
$Env:PYTHONPATH= $Env:PYTHONPATH + ';' + $PWD
$Env:PYTHONPATH= $Env:PYTHONPATH + ';' + $PWD + '\foodir'


#################################################
# print instructions on what to do next...
" "
"Environment setup is complete"
" "

