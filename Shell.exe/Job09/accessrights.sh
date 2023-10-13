#!/bin/bash

#csvlocation="/home/debian/Shell.exe/Job09"
csv_file="/home/debian/Shell.exe/Job09/Shell_Userlist.csv"
delimiter=","

#awk -F',' '{print $1 "," $2 "," $3 "," $4 "," $5}' $csvfile


while IFS="$delimiter" read -r id prenom nom password role
do


if [ "$id" == "Id" ];
then continue
fi

if id "$prenom$nom" &>/dev/null
then
echo "User $prenom$nom already exists. Skipping."
continue
fi


if [ "$role" == "Admin" ];
then sudo useradd -m -G sudo -p "$password" "$prenom$nom"
else sudo useradd -m -p "$password" "$prenom$nom"
fi

echo "User $prenom$nom created with ID $id and role $role."

done < "$csv_file"

