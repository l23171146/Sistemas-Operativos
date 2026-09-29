# Variables, entrada del usuario y automatización con Bash

## Descripción

Esta práctica tiene como propósito conocer y utilizar scripts básicos en Bash para trabajar con variables, recibir información del usuario, realizar operaciones matemáticas y ejecutar comandos del sistema.

También se configura un script para ejecutarse automáticamente al iniciar Ubuntu mediante `cron` y la regla `@reboot`.

## Objetivos de aprendizaje

* Comprender el uso de variables en Bash.
* Solicitar información al usuario mediante `read`.
* Mostrar información mediante `echo`.
* Realizar operaciones matemáticas sencillas.
* Ejecutar comandos de Linux desde un script.
* Crear carpetas mediante `mkdir`.
* Crear y modificar archivos de texto desde un script.
* Comprender el funcionamiento de `cron`.
* Configurar una tarea automática mediante `@reboot`.

## Scripts realizados

### Variables y entrada del usuario

Este script solicita el nombre del usuario y posteriormente muestra un mensaje de bienvenida.

```bash
#!/bin/bash
echo "¿Cómo te llamas?"
read NOMBRE
echo "¡Hola, $NOMBRE! Bienvenido a Ubuntu."
```

### Información del sistema

Este script muestra el usuario actual y la carpeta en la que se encuentra trabajando.

```bash
#!/bin/bash
echo "=== INFORMACIÓN DE TU SESIÓN ==="
echo "Tu usuario actual es:"
whoami
echo "Estás parado en la carpeta:"
pwd
```

### Operaciones matemáticas sencillas

Este script utiliza variables para almacenar dos números y realiza una suma mediante una operación aritmética de Bash.

```bash
#!/bin/bash
NUMERO1=10
NUMERO2=5

# Hace la suma de las dos variables
RESULTADO=$((NUMERO1 + NUMERO2))

echo "La suma de $NUMERO1 más $NUMERO2 es igual a: $RESULTADO"
```

### Crear una carpeta desde el script

Este script solicita al usuario el nombre de una carpeta y posteriormente la crea utilizando `mkdir`.

```bash
#!/bin/bash
echo "¿Qué nombre le quieres poner a tu nueva carpeta?"
read NOMBRE_CARPETA

# Crea la carpeta en tu sistema
mkdir "$NOMBRE_CARPETA"

echo "¡Listo! Se creó la carpeta '$NOMBRE_CARPETA' en este directorio."
```

### Archivo de bienvenida al reiniciar Ubuntu

Se creó el script `auto_inicio.sh`, encargado de generar un archivo llamado `mensaje_reinicio.txt` cada vez que se inicia Ubuntu.

```bash
#!/bin/bash

# Crea o sobrescribe un archivo de texto cada vez que enciende la PC
echo "=============================================" > $HOME/mensaje_reinicio.txt
echo " ¡EL SCRIPT SE EJECUTÓ AL INICIAR UBUNTU! " >> $HOME/mensaje_reinicio.txt
echo " Sistema iniciado el: $(date)" >> $HOME/mensaje_reinicio.txt
echo "=============================================" >> $HOME/mensaje_reinicio.txt
```

## Automatización con cron

Para permitir la ejecución automática del script se le dieron permisos de ejecución:

```bash
chmod 777 auto_inicio.sh
```

Posteriormente se configuró `cron` mediante `crontab -e` utilizando la regla `@reboot`.

Como el script se encuentra en la carpeta `Documents` del usuario `gabriel`, la ruta utilizada es:

```cron
@reboot /home/gabriel/Documents/auto_inicio.sh
```

La tarea puede comprobarse mediante:

```bash
crontab -l
```

Al reiniciar la computadora, el script genera el archivo `mensaje_reinicio.txt` dentro del directorio personal del usuario.

## Desactivación de la tarea

Para evitar que el script se ejecute automáticamente al iniciar Ubuntu, se puede comentar la línea en el crontab:

```cron
# @reboot /home/gabriel/Documents/auto_inicio.sh
```

## Conclusiones

La práctica permitió comprender el funcionamiento básico de los scripts Bash y la forma en que pueden utilizarse para automatizar tareas en Linux. Se trabajó con variables, entrada de datos, comandos del sistema, operaciones matemáticas y creación de archivos y carpetas.

Además, se comprendió el uso de `cron` y de la regla `@reboot` para ejecutar automáticamente un script al iniciar el sistema.
