#!/bin/bash
echo "anrede"
echo "------"

firstname="helmut"
lastname="BLAKLDAS"
age=19
title="Prof"
gender='w'

if (( $(bc <<< "$age < 18") == 1 )); then
  echo "hello" $firstname
else
  if [ $gender == 'w' ]; then
    anrede="Sehr geehrte Frau"
  else
    anrede="Sehr geehrter Herr"
  fi

  if [[ -n $title ]]; then
    title=$title
  else
    title=""
  fi
fi

echo $anrede $title $lastname
