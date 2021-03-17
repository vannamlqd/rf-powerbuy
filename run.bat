@ECHO OFF
CALL python -m virtualenv venv

CALL venv/Scripts/activate.bat
CALL python -m pip install -r requirements.txt
setlocal
CALL python -m robot -d reports "tests/AddToCard.robot"
endlocal
pause