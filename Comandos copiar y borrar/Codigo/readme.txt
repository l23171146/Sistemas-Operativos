#!/bin/bash

# Crear las carpetas de trabajo
mkdir practica1
mkdir practica2

# Crear el archivo Readme.txt dentro de practica1
sudo gedit Readme.txt

# Mostrar los archivos de practica1 con información detallada
ls -l

# Ejemplo de sintaxis general para copiar un archivo.
# Este comando es únicamente un ejemplo de las instrucciones
# y no fue utilizado literalmente durante la práctica.
cp archivo_origen.txt /ruta/de/la/carpeta_destino/

# Copiar Readme.txt de practica1 a practica2.
# Se utilizó una ruta completa para indicar el origen y destino.
cp ~/Documents/practica1/Readme.txt ~/Documents/practica2/

# Copiar la carpeta Vacia de practica2 a practica1.
# La opción -r permite copiar una carpeta completa.
cp -r ~/Documents/practica2/Vacia ~/Documents/practica1

# Copiar la carpeta info de practica2 a practica1.
# La opción -r permite copiar la carpeta junto con su contenido.
cp -r ~/Documents/practica2/info ~/Documents/practica1

# Eliminar el archivo Readme.txt de practica1
rm Readme.txt

# Eliminar la carpeta info y su contenido
rm -r info/
