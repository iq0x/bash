#!/bin/bash
echo "Versandkosten"
echo "Gewicht: "
read kg

if (( $(bc <<< "$kg > 20.0") == 1 )); then
  echo "paket kann nicht angenommen werden"
else
  if (( $(bc <<< "$kg < 20.0 && $kg > 10.0") == 1 )); then
    preis=14
  else
    if (( $(bc <<< "$kg < 10.0 && $kg > 5.0") == 1 )); then
      preis=10.50
    else
      preis=7
    fi
  fi
fi

echo "das paket kostet" $preis "Euro"
