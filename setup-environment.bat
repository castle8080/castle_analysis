@echo off 
echo Setting up python environment.

REM Change to directory of current script.
cd /D "%~dp0"

REM Deactivate the python venv if there is one
call deactivate 2>nul

REM Create python virtual environment
if not exist venv\ (
    python -mvenv venv
)

REM Activate the environment.
call venv\scripts\activate

REM Install requirements
pip install -r requirements.txt
