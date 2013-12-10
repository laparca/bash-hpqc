HPQC Command Line Tool
======================

Contenidos
----------

1. Introducción
2. Configuración y directorios
3. Creación de plugins

Introducción
------------

HPQC Command Line Tool es una herramienta que permite acceder a la información
almacenada en un servidor de HP Quality Center. Aunque su principal misión es
completamente consultiva, se espera que en un futuro cercano permita también la
modificación de las distintas entidades que en la herramienta pueden utilizarse.

Configuración y directorios
---------------------------

Creación de plugins
-------------------

Cuando se crea un nuevo plugin hay que tener presente que este debe ajustarse al
sistema de plugins ya existente. Para ello debe cumplir las siguientes normas:

1. Todos los plugins deben implementar una funcion help:

	function help() {}

2. La función help recibira un parámetro indicando si está siendo llamada desde
   el sistema de autocompletado (valor 1), para recibir una descripcion corta
   del plugin (valor 2).

3. Si $1 es 1 y no hay más argumentos, help devolverá la lista de todos las
   funcionalidades de primer nivel del plugin separados por espacio.

4. Si $1 es 0 y no hay más argumentos, help mostrará un texto de ayuda en el que
   se mostrará todas las funcionalidades de primer nivel.

5. En caso de que haya más de un argumento, help deberá devolver la ayuda
   referente a la funcionalidad elegida. 

6. Debe existir un metodo call que recibe el nombre de la funcionalidad llamada
   y la lista de argumentos de la misma.
