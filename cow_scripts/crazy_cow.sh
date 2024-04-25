#!/bin/bash

# Ce script attend trois arguments a, b, c représentant une équation de la forme "ax^2+bx+c=0"

# On quitte avec une erreur si le nombre d'arguments est différent de 3
if [ "$#" -ne 3 ]; then
  echo "Trois arguments requis (a, b, c -> ax^2+bx+c=0)"
  exit 1
fi

a="$1"
b="$2"
c="$3"

# On calcule le discriminant de l'équation
delta=$((b*b-4*a*c))

if [ "$delta" -gt 0 ]
then
  # On calcule sqrt(delta) et les solutions puis on les affiche
  rac=$(echo "sqrt($delta)" | bc -l)
  x1=$(echo "(-$b-$rac)/(2*$a)" | bc -l)
  x2=$(echo "(-$b+$rac)/(2*$a)" | bc -l)
  cowsay "x=$x1 ou x=$x2"
elif [ "$delta" -eq 0 ]
then
  # On calcule puis on affiche l'unique solution
  sol=$(echo "-$b/(2*$a)" | bc -l)
  cowsay "x = $sol"
else
  cowsay "Pas de solutions réelles"
fi
