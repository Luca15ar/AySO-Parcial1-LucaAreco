#!/bin/bash

echo "Mi IP Publica es: $(curl -s ifconfig.me)" > Filtro_Avanzado.txt
echo "Mi usuario es: $(grep $(whoami) /etc/passwd | cut -d: -f1)" >> Filtro_Avanzado.txt
echo "El Hash de mi usuario es: $(sudo grep $(whoami) /etc/shadow | cut -d: -f2)" >> Filtro_Avanzado.txt
