#!/bin/bash


login_url="https://alcasar.laplateforme.io/intercept.php?res=notyet&uamip=10.10.0.1&uamport=3990&challenge=dbac5635f4cbe0b79b1c55f38068471b&called=68-05-CA-3A-2E-49&mac=2C-3B-70-FC-AA-45&ip=10.10.2.18&nasid=alcasar.laplateforme.io&sessionid=1697182314000000c7&ssl=https%3a%2f%2f1.0.0.1%3a3991%2f&userurl=http%3a%2f%2fsublimebrightfreshsong.neverssl.com%2fonline&md=24EB5C75B9DD2F3CA8AA75959FE65980"
username="thomas.bourdet@laplateforme.io"
password="alcalpf1#"

response=$(curl -d "username=$username & password=$password" -X POST $login_url)

if [[ $response == *"Bienvenue"* ]]; then
    echo "Connexion reussie"
else
    echo "echec de la connexion"
fi
