# Overview

## Prerequisite
### Python3
Recommended tested with Python version 3.7
Make sure you decide to add Python to the PATH during the installation procedure and do not tick the option to download the debug libraries.

After the installation you should see the following when typing the command in a prompt:
```bash
C:\Windows\system32> python --version
Python 3.7.0
```

Make sure that the Python library called **Virtualenv** is installed.
```bash
C:\Windows\system32> virtualenv --version
virtualenv 20.4.3 from <your_directory>
```

IF NOT, this can be achieved by typing the command in a prompt like below EXAMPLE:
```bash
C:\Windows\system32>pip install virtualenv
Collecting virtualenv
  Using cached https://files.pythonhosted.org/packages/62/77/6a86ef945ad39aae34aed4cc1ae4a2f941b9870917a974ed7c5b6f137188/virtualenv-16.7.8-py2.py3-none-any.whl

Installing collected packages: virtualenv
Successfully installed virtualenv-16.7.8
```

Download chromedriver match with your chrome version from: https://chromedriver.chromium.org/downloads and put into: C:\Windows\System32

### Execution
Edit and Run batch cmd: run.bat