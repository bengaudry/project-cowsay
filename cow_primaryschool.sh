#!/bin/bash

if [ $# -ne 1 ] 
then 
    echo "Exactement un argument attendu"
    exit
fi

for (( i=1; i<=$1; i++ ))
do
    clear
    cowsay $i
    sleep 1
done

clear
cowsay -d " "
