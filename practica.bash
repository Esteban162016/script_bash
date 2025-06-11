#!/bin/bash
#archico = practica.txt



read -p"ingrese edad: " edad
#edades= ($edad)
echo $edad

if (($edad <= 13)); then
   echo 'es niño'
elif (($edad <= 17)); then
    echo 'es adolecente'
elif (($edad <= 64)); then
     echo 'es Adulto'
fi

    
