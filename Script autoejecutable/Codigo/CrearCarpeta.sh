#!/bin/bash
echo "¿Qué nombre le quieres poner a tu nueva carpeta?"
read NOMBRE_CARPETA

# Crea la carpeta en tu sistema
mkdir "$NOMBRE_CARPETA"

echo "¡Listo! Se creó la carpeta '$NOMBRE_CARPETA' en este directorio."
