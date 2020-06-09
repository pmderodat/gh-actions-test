import os
import sys
from e3.os.process import get_rlimit
import subprocess


cwd = os.path.abspath(os.path.dirname(__file__))

rlimit = get_rlimit()
argv = [rlimit, "5", sys.executable, "subp.py"]
print("Argv:", argv)
print("Cwd:", cwd)
subprocess.run(argv, cwd=cwd)
