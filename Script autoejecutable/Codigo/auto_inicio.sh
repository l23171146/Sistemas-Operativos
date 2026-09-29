#!/bin/bash

# Crea o sobrescribe un archivo de texto cada vez que enciende la PC
echo "=============================================" > $HOME/mensaje_reinicio.txt
echo " ¡EL SCRIPT SE EJECUTÓ AL INICIAR UBUNTU! " >> $HOME/mensaje_reinicio.txt
echo " Sistema iniciado el: $(date)" >> $HOME/mensaje_reinicio.txt
echo "=============================================" >> $HOME/mensaje_reinicio.txt
