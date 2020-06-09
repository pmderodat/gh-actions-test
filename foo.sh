#!/usr/bin/env bash

trap 'echo "ERROR at line ${LINENO} (code: $?)" >&2' ERR
trap 'echo "Interrupted" >&2 ; exit 1' INT

# On Windows, python3/pip3 don't explicitly exist
if [ "${OS:-}" == "Windows_NT" ]; then
    run_python=python
    run_pip=pip
else
    run_python=python3
    run_pip=pip3
fi

echo Python version: $($run_python --version)
echo Pip version: $($run_pip --version)

$run_pip install --upgrade e3-testsuite
echo Python search paths:
$run_python -c "import sys; print('\n'.join(sys.path))"

echo ==== 1 ====
file 'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows'
echo ">>>" $?

echo ==== 2 ====
'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows'
echo ">>>" $?

echo ==== 3 ====
'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows' 5 ls
echo ">>>" $?

echo ==== 4 ====
$run_python test.py
echo ">>>" $?
