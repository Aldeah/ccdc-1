#!/bin/sh
echo 'checking for no-passwords'
grep -v ':x:' /etc/passwd
read -p 'press key to continue..' -n1 -s
echo 'checking for setuid binaries'
find / -perm +4000 2> /dev/null
find / -perm +2000 2> /dev/null
read -p 'press key to continue..' -n1 -s
echo 'enabling aslr'
sysctl -w kernel.randomize_va_space=2