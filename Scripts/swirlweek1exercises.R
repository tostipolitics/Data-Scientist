#SWIRL Lesson 1: Basic Building Blocks

#Operadores aritméticos
+      #suma
-      #resta
/      #división
^      #elevado
sqrt() #raíz cuadrada


#SWIRL Lesson 2: Workspace and Files

#Saber directorio en el que estoy trabajando
getwd()

#Lista de archivos en el directorio de trabajo
list.files()
dir()

#Asignar directorio actual a una variable
old.dir <- getwd()

#Crear nuevo directorio en el directorio actual
dir.create("testdir")

#Configurar/asignar directorio 
setwd("testdir")

#Crear un archivo en el directorio de trabajo
file.create("mytest.R")

#Ver si un archivo existe en el directorio de trabajo
file.exists("mytest.R")

#Ver información de un archivo
file.info("mytest.R")

#Acceder a ciertos items de un archivo
file.info("mytest.R")$mode

#Cambiar nombre de un archivo
file.rename("mytest.R","mytest2.R")

#Mostrar objetos en el espacio local de trabajo
ls()

#Hacer copia de un archivo
file.copy("mytest2.R","mytest3.R")

#Asignar ruta a un arhivo y carpetas
file.path("mytest3.R")
file.path("folder1","folder2")

#Crear directorio X con subdirectorio Y
dir.create(file.path('testdir2', 'testdir3'), recursive = T)

#Ver argumentos de una función
args(funcion)

