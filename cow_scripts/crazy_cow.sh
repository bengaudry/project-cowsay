#!/bin/bash

# Ce script attend trois arguments a, b, c représentant une équation de la forme "ax^2+bx+c=0"

# On quitte avec une erreur si le nombre d'arguments est différent de 3
if [ $# -ne 3 ]
then
  echo "Trois argument requis (a,b,c -> ax^2+bx+c=0)"
  exit 1
fi

a=$1
b=$2
c=$3

delta=$(($b*$b-4*$a*$c))
if [ $delta -gt 0 ]
then
  rac=$(bc -l <<<"sqrt($delta)")
  x1=$((-$b-$rac/(2*$a)))
  x2=$((-$b+$rac/(2*$a)))
  cowsay "$1 et $2"
elif [ $delta -eq 0 ]
then
  sol=$((-$b/2*$a))
  cowsay $sol
else
  cowsay "Pas de solution réelle"
fi