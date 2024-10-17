#!/bin/bash

grep MemTotal /proc/meminfo > Filtro_Basico.txt
sudo dmidecode -t chassis | grep "Chassis Information" >> Filtro_Basico.txt
sudo dmidecode -t chassis | grep "Manufacturer" >> Filtro_Basico.txt
