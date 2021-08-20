#!/bin/bash
echo "Versandkosten"
echo "Gewicht: "
read kg

if [[ "$kg" -le 20 || "$kg" -ge 0 ]] ; then
    echo "Paket kann nicht angenommen werden!!!!"
elif [[ "$kg" -gt 10 && "$kg" -lt 20 ]]
    echo "14 Euro"
elif [[ "$kg" -gt 5 && "$kg" -lt 10 ]]
    echo "10,50 Euro"
else
    echo "10,50 Euro"
fi
