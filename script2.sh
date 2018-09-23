#!/bin/bash

$1
$2

c=$(tar -cvf backup.tar -g snapshot.snar-0 $1)
echo 
g=$(gzip backup.tar | mv backup.tar.gz $2 )
echo
echo $#
