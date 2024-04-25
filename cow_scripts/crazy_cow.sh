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

delta=$((b*b-4*a*c))
if [ "$delta" -gt 0 ]; then
  rac=$(bc -l <<<"sqrt($delta)")
  x1=$(bc -l <<<"(-$b-$rac)/(2*$a)")
  x2=$(bc -l <<<"(-$b+$rac)/(2*$a)")
  echo "Les solutions sont x1 = $x1 et x2 = $x2"
elif [ "$delta" -eq 0 ]; then
  sol=$(bc -l <<<"-$b/(2*$a)")
  echo "La solution double est x = $sol"
else
  echo "Pas de solution réelle"
fi
