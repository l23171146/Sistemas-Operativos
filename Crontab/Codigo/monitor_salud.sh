#!/bin/bash

# Script para registrar el estado básico del sistema

CARPETA="$HOME/salud_computadora"
ARCHIVO="$CARPETA/registro_salud.txt"

# Crear la carpeta si no existe
mkdir -p "$CARPETA"

# Registrar fecha y hora
echo "=============================================" >> "$ARCHIVO"
echo "REGISTRO DE SALUD DEL SISTEMA" >> "$ARCHIVO"
echo "Fecha y hora: $(date)" >> "$ARCHIVO"

# Registrar información de la memoria RAM
echo "--- MEMORIA RAM ---" >> "$ARCHIVO"
free -h >> "$ARCHIVO"

# Registrar información del almacenamiento
echo "--- ALMACENAMIENTO ---" >> "$ARCHIVO"
df -h "$HOME" >> "$ARCHIVO"

# Registrar la carga del sistema
echo "--- CARGA DEL SISTEMA ---" >> "$ARCHIVO"
uptime >> "$ARCHIVO"

# Registrar el tiempo de actividad
echo "--- TIEMPO DE ACTIVIDAD ---" >> "$ARCHIVO"
uptime -p >> "$ARCHIVO"

echo "=============================================" >> "$ARCHIVO"
