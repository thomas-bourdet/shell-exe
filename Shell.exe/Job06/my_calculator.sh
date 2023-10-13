#!/bin/bash

# result=$(($1$2$3))
# echo Result is $result

if [ $# -eq 3 ]
then
	echo "$1 $2 $3" | bc -l
else
 	echo "Veuillez entrer un calcul (espace entre chaque variable)"
fi

