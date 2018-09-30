#!/bin/bash

# Check if there are two parameters, else quit.
if [[ "$#" -ne 2 ]]; then
echo "Pass two parameters"
exit 127
fi
: '
c=$(tar -cvf backup.tar -g snapshot.snar-0 $1)
echo 
g=$(gzip backup.tar | mv backup.tar.gz $2 )
echo
echo $#
 '

echo "Changed This"
