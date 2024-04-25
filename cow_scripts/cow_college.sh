#!/bin/bash

if [ $# -ne 1 ] 
then 
    echo "Exactement un argument attendu"
    exit
fi

u0=1
u1=1

say () {
    cowsay $1
    sleep 1
    clear
}  

say $u0
say $u1

for (( i=1; i<=$(($1-2)); i++ ))
do
    un=$(($u1+$u0))
    say $un
    u0=$u1
    u1=$un
done