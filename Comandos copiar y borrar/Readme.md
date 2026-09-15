
# Crear, copiar, mover y eliminar archivos y carpetas

## Descripción

Esta práctica tiene como propósito conocer y utilizar comandos básicos de la terminal de Ubuntu para crear, copiar y eliminar archivos y carpetas. Durante la práctica se trabajó con los comandos `mkdir`, `cp`, `cp -r` y `rm`, realizando diferentes operaciones sobre archivos y directorios desde la terminal.

## Objetivos de aprendizaje

* Comprender el funcionamiento básico de los comandos para administrar archivos y carpetas en Ubuntu.
* Utilizar el comando `mkdir` para crear carpetas desde la terminal.
* Utilizar el comando `cp` para copiar archivos entre diferentes carpetas.
* Utilizar la opción `-r` del comando `cp` para copiar carpetas completas.
* Utilizar el comando `rm` para eliminar archivos.
* Utilizar el comando `rm -r` para eliminar carpetas y su contenido.
* Comprender la importancia de verificar las rutas antes de copiar o eliminar archivos y carpetas.

## Comandos utilizados

En esta práctica se utilizaron los siguientes comandos:

```bash
mkdir practica1
mkdir practica2
sudo gedit Readme.txt
ls -l
cp archivo_origen.txt /ruta/de/la/carpeta_destino/
cp ~/Documents/practica1/Readme.txt ~/Documents/practica2/
cp -r ~/Documents/practica2/Vacia ~/Documents/practica1
cp -r ~/Documents/practica2/info ~/Documents/practica1
rm Readme.txt
rm -r info/
```

El comando `mkdir` se utilizó para crear las carpetas `practica1` y `practica2`. Posteriormente se creó un archivo de texto dentro de `practica1` y se utilizó `ls -l` para visualizar los archivos existentes.

El comando `cp` permitió copiar el archivo `Readme.txt` de `practica1` a `practica2`. Para copiar carpetas completas se utilizó la opción `-r` del comando `cp`.

Finalmente, se utilizaron los comandos `rm` y `rm -r` para eliminar el archivo `Readme.txt` y la carpeta `info` de `practica1`.

[Ver comandos utilizados](Codigo/readme.txt)

## Diagrama

Esta práctica no requiere un diagrama de circuito, ya que se realizó mediante comandos en la terminal de Ubuntu.

## Video del funcionamiento

[Readme](Video/readme.txt)

[Ver video en YouTube](PEGAR_AQUI_EL_ENLACE_DEL_VIDEO)

## Evidencias

Las evidencias de la práctica incluyen imágenes de la terminal donde se muestran los comandos ejecutados, la creación de archivos y carpetas, las operaciones de copia y la eliminación de archivos y directorios.

* [Ver evidencia 1](Diagramas/Basico1.jpeg)
* [Ver evidencia 2](Diagramas/Basico2.jpeg)

Las evidencias principales se encuentran en la carpeta **Diagramas**.

## Reporte

El reporte contiene la explicación de los comandos utilizados, su función y el procedimiento realizado durante la práctica.

[Ver Reporte](Reporte/Reporte.pdf)

## Resultados

El documento de resultados contiene las evidencias y los resultados obtenidos al ejecutar los diferentes comandos de la práctica.

[Ver Resultados](Resultados/Resultados.pdf)

## Conclusiones

La práctica permitió conocer diferentes comandos de la terminal de Ubuntu utilizados para administrar archivos y carpetas. Mediante `mkdir` fue posible crear nuevos directorios, mientras que `cp` permitió copiar archivos y, utilizando la opción `-r`, copiar carpetas completas.

También se practicaron los comandos `rm` y `rm -r` para eliminar archivos y carpetas. Estas operaciones permitieron comprender la importancia de utilizar correctamente las rutas y verificar los elementos antes de realizar una copia o eliminación, especialmente al utilizar `rm`, ya que los archivos y carpetas eliminados mediante este comando no pasan por una papelera de reciclaje.
