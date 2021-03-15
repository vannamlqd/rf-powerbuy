I. Setup environment
1. Download and install python from: https://www.python.org/downloads/
2. Set path Python to your environment variables.
- Create new system variable PYTHON_HOME with value of Python's directory
    Example:
    C:\Users\Personal\AppData\Local\Programs\Python\Python39
- Add below path to Window path
    Example:
    %PYTHON_HOME%
    %PYTHON_HOME%\Scripts
- Check Python and pip are installed and configured successfully with command:
    python --version
    pip --version
3. Install dependencies with command: 
- robotframework: "pip install robotframework"
- seleniumlibrary: "pip install robotframework-seleniumlibrary"
4. Download chromedriver match with your chrome version from: https://chromedriver.chromium.org/downloads and put into: C:\Windows\System32

II. How to run
Run file run.bat