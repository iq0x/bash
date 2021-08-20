#!/bin/bash
echo "Kraftstoffverbrauch"
read -p "km: " km
echo "km :" $km
x=0.069583333
y=$(echo "$km * $x" | bc)
echo $y
