# Monitoreo de la salud del sistema en Ubuntu

## Descripción

Esta práctica consiste en desarrollar un script en Bash para registrar información básica sobre el estado de una computadora con Ubuntu Desktop.

El script obtiene información relacionada con el uso de la memoria RAM, el almacenamiento, la carga del sistema y el tiempo de actividad del equipo. La información se guarda en un archivo dentro de la carpeta personal del usuario.

Para automatizar el proceso se utiliza `cron`, configurando una tarea que ejecuta el script cada 2 minutos en segundo plano.

## Objetivos de aprendizaje

* Comprender el funcionamiento básico de los scripts en Bash.
* Utilizar comandos de Linux para obtener información del sistema.
* Consultar el uso de la memoria RAM.
* Consultar el espacio utilizado del almacenamiento.
* Obtener información sobre la carga y el tiempo de actividad del sistema.
* Guardar información generada por un script en un archivo de texto.
* Utilizar variables y rutas dentro de un script Bash.
* Automatizar la ejecución de un script mediante `cron`.
* Comprender el funcionamiento de una tarea programada cada 2 minutos.

## Comandos utilizados

### `chmod`

Se utilizó `chmod` para otorgar permisos de ejecución al script y permitir que pueda ejecutarse como un programa.

### `mkdir`

Se utilizó `mkdir` para crear la carpeta donde se almacenan los registros generados por el script.

### `free`

El comando `free` permite consultar información relacionada con el uso de la memoria RAM del sistema.

### `df`

El comando `df` permite consultar el espacio utilizado y disponible en los sistemas de archivos.

### `uptime`

El comando `uptime` permite obtener información sobre el tiempo que lleva funcionando el sistema y la carga del sistema.

### `crontab`

El comando `crontab` permite configurar tareas programadas para que se ejecuten automáticamente en determinados intervalos de tiempo.

En esta práctica se utilizó la siguiente configuración:

```text
*/2 * * * * /home/gabriel/Documents/Practica_Salud/Codigo/monitor_salud.sh
```

Esta expresión indica que el script debe ejecutarse cada 2 minutos.

### `cat`

Se utilizó `cat` para consultar el contenido del archivo donde se almacenan los registros generados por el script.

## Funcionamiento del script

El script `monitor_salud.sh` crea la carpeta `salud_computadora` dentro del directorio personal del usuario si esta no existe.

Posteriormente registra la fecha y hora de cada ejecución y obtiene información sobre:

* Memoria RAM.
* Espacio de almacenamiento.
* Carga del sistema.
* Tiempo de actividad del equipo.

Toda esta información se almacena en el archivo `registro_salud.txt`.

Al utilizar `cron`, el proceso se realiza automáticamente cada 2 minutos sin necesidad de ejecutar manualmente el script.

## Evidencias

Las capturas de los comandos ejecutados durante la práctica se encuentran en la carpeta [Terminal](Terminal).

### Resultado 1

[Resultado1.jpeg](Terminal/Resultado1.jpeg)

### Resultado 2

[Resultado2.jpeg](Terminal/Resultado2.jpeg)

### Resultado 3

[Resultado3.jpeg](Terminal/Resultado3.jpeg)

### Resultado 4

[Resultado4.jpeg](Terminal/Resultado4.jpeg)

### Resultado 5

[Resultado5.jpeg](Terminal/Resultado5.jpeg)

## Código

El script utilizado en la práctica se encuentra en la carpeta [Codigo](Codigo).

* [monitor_salud.sh](Codigo/monitor_salud.sh)

## Reporte

El documento PDF con el análisis de la práctica se encuentra en la carpeta [Reporte](Reporte).

* [Reporte.pdf](Reporte/Reporte.pdf)

## Conclusiones técnicas

La práctica permitió comprender cómo Bash puede utilizarse para automatizar tareas relacionadas con la supervisión de un sistema Linux. Mediante diferentes comandos fue posible obtener información sobre recursos importantes como la memoria RAM, el almacenamiento, la carga y el tiempo de actividad del sistema.

También se comprobó la utilidad de `cron` para ejecutar procesos automáticamente en intervalos determinados. En esta práctica, el script se configuró para ejecutarse cada 2 minutos y almacenar los resultados en un archivo dentro de la carpeta personal del usuario.

Los registros obtenidos muestran que los recursos del sistema pueden cambiar con el paso del tiempo dependiendo de los procesos y aplicaciones que se encuentren ejecutándose. El almacenamiento de estos datos permite conservar un historial sencillo del estado de la computadora y observar dichas variaciones.
