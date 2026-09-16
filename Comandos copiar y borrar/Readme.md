````markdown
# Crear, copiar, mover y eliminar archivos y carpetas

## Objetivos

- Comprender el funcionamiento de comandos básicos de la terminal de Ubuntu para administrar archivos y carpetas.
- Utilizar `mkdir` para crear directorios.
- Utilizar `cp` para copiar archivos.
- Utilizar `cp -r` para copiar directorios y su contenido.
- Utilizar `rm` para eliminar archivos.
- Utilizar `rm -r` para eliminar directorios y su contenido.
- Comprender el uso de rutas relativas y absolutas durante las operaciones realizadas.

## Explicación de comandos

### `mkdir`

Se utilizó para crear las carpetas `practica1` y `practica2`.

```bash
mkdir practica1
mkdir practica2
````

### `ls -l`

Se utilizó para mostrar información detallada de los archivos y directorios.

```bash
ls -l
```

### `cp`

Se utilizó para copiar el archivo `Readme.txt` de `practica1` a `practica2`.

```bash
cp Readme.txt ../practica2/
```

La ruta `../practica2/` se utilizó porque la terminal se encontraba dentro de `practica1`. Los dos puntos (`..`) permiten acceder al directorio padre.

### `cp -r`

Se utilizó para copiar las carpetas `Vacia` e `info` junto con su contenido.

```bash
cp -r ~/Documents/practica2/Vacia ~/Documents/practica1
cp -r ~/Documents/practica2/info ~/Documents/practica1
```

La opción `-r` permite copiar directorios de forma recursiva, incluyendo los archivos y subdirectorios que contienen.

### `rm`

Se utilizó para eliminar el archivo `Readme.txt`.

```bash
rm Readme.txt
```

### `rm -r`

Se utilizó para eliminar la carpeta `info` junto con su contenido.

```bash
rm -r info/
```

## Código

Los comandos utilizados durante la práctica se encuentran en el archivo:

[Ver código](Codigo/readme.txt)

```markdown
## Terminal

Las siguientes capturas muestran de forma nítida los comandos ejecutados durante la práctica y los resultados obtenidos.

### Resultado 1

![Resultado 1](Terminal/Resultado1.jpeg)

### Resultado 2

![Resultado 2](Terminal/Resultado2.jpeg)

### Resultado 3

![Resultado 3](Terminal/Resultado3.jpeg)

### Resultado 4

![Resultado 4](Terminal/Resultado4.jpeg)

### Resultado 5

![Resultado 5](Terminal/Resultado5.jpeg)

### Resultado 6

![Resultado 6](Terminal/Resultado6.jpeg)

[Ver carpeta con las capturas](Terminal)


## Video

El video muestra en vivo el funcionamiento de los comandos utilizados durante la práctica.

[Ver información del video](Video/readme.txt)

[Ver video en YouTube](PEGAR_AQUI_EL_ENLACE_DEL_VIDEO)

## Reporte

El reporte contiene el análisis del comportamiento del sistema operativo y la justificación teórica de las observaciones realizadas durante la práctica.

[Ver Reporte](Reporte/Reporte.pdf)

## Conclusiones técnicas

La práctica permitió comprender el funcionamiento de diferentes comandos de la terminal de Ubuntu para administrar archivos y directorios. `mkdir` permite crear directorios, mientras que `cp` y `cp -r` permiten copiar archivos y carpetas respectivamente.

También se comprendió la diferencia entre rutas absolutas y relativas. El uso de `../practica2/` permitió acceder a una carpeta ubicada en el mismo directorio padre que `practica1`.

Finalmente, los comandos `rm` y `rm -r` permitieron eliminar archivos y directorios. Las actividades demostraron la importancia de utilizar correctamente las rutas y verificar los elementos antes de realizar operaciones de copia o eliminación.

```

Solo queda una cosa pendiente: **poner el enlace real de YouTube** cuando termines de grabar el video.
```
