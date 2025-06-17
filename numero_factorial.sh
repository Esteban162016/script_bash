#!/bin/bash

echo -n "Ingrese un numero:  "
read numero

if ! [[ "$numero" =~ ^[0-9]+$ ]]; then
  echo "Error: Ingrese un número entero positivo."
  exit 1
fi

