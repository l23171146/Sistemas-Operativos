#!/bin/bash

# Demonio para monitorear el estado básico del sistema

ARCHIVO="$HOME/salud_systemd/registro.log"

# Crear la carpeta de registros si no existe
mkdir -p "$HOME/salud_systemd"

# Ejecutar continuamente
while true
do
    FECHA=$(date '+%Y-%m-%d %H:%M:%S')
    PROCESOS=$(ps -e --no-headers | wc -l)
    RAM=$(free -h | awk '/^Mem:/ {print $7}')

    echo "Fecha y hora: $FECHA | Procesos activos: $PROCESOS | RAM disponible: $RAM" >> "$ARCHIVO"

    sleep 5
done
