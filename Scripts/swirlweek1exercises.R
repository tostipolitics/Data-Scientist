#SWIRL Lesson 1: Basic Building Blocks

#Operadores aritméticos
+      #suma
-      #resta
/      #división
^      #elevado
sqrt() #raíz cuadrada

#------------------------------------------------------------------------------

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

#-----------------------------------------------------------------------------

#SWIRL Lesson 3: Sequences of Numbers

#Secuencia de números
1:20
pi:10#incrementos/decrementos de 1 a 1
15:1

#Ayuda con operadores
?':'

#Mayor control sobre la secuencia
seq(1,20)
seq(0,10,by=0.5)#incrementos de a 0.5
seq(5,10,length=30)#secuencia de n#

#Largo de una variable
length()

#Generar secuencia desde # a n de la variable 
1:length(my_seq)#forma 1
seq(along.with = my_seq)#forma 2
seq_along(my_seq)#forma 3:más sencilla

#Repetir una secuencia
rep(0, times = 40)#vector con 40 ceros
rep(c(0, 1, 2),times=10)#vector que repite n veces un vector
rep(c(0, 1, 2), each = 10)#10 ceros, 10 unos, 10 dos

#------------------------------------------------------------------------------

#SWIRL Lesson 4: Vectors

#Atómicos
#1.Numéricos
num_vect<-c(0.5,55,-10,6)

#2.Enteros

#3.Complejos

#4.Caracteres
my_char<-c("My","name","is")
paste(my_char,collapse = " ")#unir en uno solo
my_name<-c(my_char,"Juan")#adicionar caracteres
paste("Hello","world!",sep = " ")#unir con caracteres que los separen

#5.Lógicos (V, F o NA)
tf<- num_vect<1
num_vect>=6

#Operadores lógicos
'<' 
'<='
'>'
'>='
'=='
'!='
'&'
'|'#or
'!'#negation

#Listas
paste(1:3,c("X","Y","Z"),sep = "")#operar y unir sin espacios, se recicla o repite el vector más pequeño

#------------------------------------------------------------------------------

#SWIRL Lesson 5: Missing Values

#Muestra de un conjunto de datos
my_data<-sample(c(y,z),100)

#Cantidad de NAs
my_na<-is.na(my_data)#T los cuenta como 1 y F los cuenta como 0
sum(my_na)

#NaN no es un número o es indefinido
0/0
Inf-Inf

#------------------------------------------------------------------------------

#SWIRL Lesson 6: Subsetting Vectors

