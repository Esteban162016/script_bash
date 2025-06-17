#!/bin/bash

echo -n "Ingrese un número: "
read numero

if ! [[ "$numero" =~ ^[0-9]+$ ]]; then
  echo "Error: Ingrese un número entero positivo."
  exit 1
fi

if (( numero <= 1 )); then
  echo "$numero no es primo."
  exit 0
fi

es_primo=true
for ((i=2; i<=numero/2; i++)); do
  if (( numero % i == 0 )); then
    es_primo=false
    break
  fi
done

if $es_primo; then
  echo "$numero es primo."
else
  echo "$numero no es primo."
fi