#!/bin/bash

if [ $# -ne 1 ]
then
  echo "Un argument requis"
  exit 1
fi

is_prime() {
    if [ $1 -lt 1 ] 
    then
        return 1
    elif [ $1 -eq 1 ]
    then 
      return 0
    fi
    for (( i=2; i<$1; i++ ))
    do
        if [ $(($1 % $i)) -eq 0 ]
        then
            return 1
        fi
    done
    return 0
}

n=$1

echo "Nombres premiers inférieurs à $n :"
for (( j=1; j<n; j++ ))
do
    if is_prime $j
    then
        clear
        cowsay $j
        sleep 1
    fi
done
