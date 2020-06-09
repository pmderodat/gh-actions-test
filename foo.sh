#!/usr/bin/env bash

echo ==== file: rlimit ====
file 'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows'

echo ==== file: ls ====
which ls
file $(which ls)
echo ">>>" $?

echo ==== file: python ====
which python
file $(which python)
echo ">>>" $?

echo ==== rlimit: no args ====
'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows'
echo ">>>" $?

echo ==== rlimit: run itself ====
'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows' \
    5 'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows'
echo ">>>" $?

echo ==== rlimit: ls ====
'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows' 5 ls
echo ">>>" $?

echo ==== rlimit: python ====
'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows' 5 python -c'print("hello")'
echo ">>>" $?
