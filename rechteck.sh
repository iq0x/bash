#!/bin/bash
echo "Rechteck Rechner"
read -p "a: " a
read -p "b: " b

echo "b :" $a
echo "b :" $b

area=$(echo "$a * $b" | bc)

fleache=$(echo "2 * ($a * $b)" | bc)

echo "area:" $area
echo "fleache:" $fleache
