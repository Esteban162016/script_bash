#!/bin/bash

# echo -n "Ingrese un numero:  "
# read numero

# if ! [[ "$numero" =~ ^[0-9]+$ ]]; then
#   echo "Error: Ingrese un número entero positivo."
#   exit 1
# fi

# if ((numero == 1)); then
#     echo " Su factorizacion es 1 "
# else (($n = $numero - 1)); then
#     f = $numero * $n
#     if ((n == 1)); then
#         echo "El resultado es $f"
# fi
factorial() {
  local n=$1
  local result=1
  for ((i=1; i<=n; i++)); do
    result=$((result * i))
  done
  echo $result
}

read -p "Introduce un número entero positivo: " num
if [[ "$num" =~ ^[0-9]+$ ]]; then
  if [[ "$num" -ge 0 ]]; then
    echo "El factorial de $num es: $(factorial $num)"
  else
    echo "Por favor, introduce un número entero positivo."
  fi
else
  echo "Por favor, introduce un número entero válido."
fi
