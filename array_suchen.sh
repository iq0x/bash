#!/bin/bash

array=("lol" "lol1" "lol6" "lol5" "lol9")

suchen="lol6"

if [[ " ${array[@]} " =~ " ${suchen} " ]]; then
	echo $suchen gefunden
   
   else
   echo nicht gefden
fi
