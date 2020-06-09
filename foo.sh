#!/usr/bin/env bash

echo ==== file ====
file 'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows'
echo ">>>" $?

echo ==== rlimit: no args ====
'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows'
echo ">>>" $?

echo ==== rlimit: ls ====
'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows' 5 ls
echo ">>>" $?

echo ==== rlimit: python ====
'C:\\hostedtoolcache\\windows\\Python\\3.8.3\\x64\\lib\\site-packages\\e3\\os\\data\\rlimit-x86-windows' 5 python -c'print("hello")'
echo ">>>" $?
