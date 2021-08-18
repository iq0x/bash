#!/bin/bash
echo "DM to Euro Converter"
read -p "DM: " dm
echo "DM :" $dm
ek=1.9558
euro=$(echo "$dm / $ek" | bc)
echo $euro
