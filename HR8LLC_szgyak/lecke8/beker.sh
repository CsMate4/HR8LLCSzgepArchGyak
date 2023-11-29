#!/bin/bash
read -p "Kérem, írja be a nevét: " name
read -p "Kérem, írja be a telefonszámát: " phone_number

echo "{" > HR8LLC.json
echo "	\"name\" : \"$name\", " >> HR8LLC.json
echo "	\"phone\" : \"$phone_number\"" >> HR8LLC.json
echo "}" >> HR8LLC.json
