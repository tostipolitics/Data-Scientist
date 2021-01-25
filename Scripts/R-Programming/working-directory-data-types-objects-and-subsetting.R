#WORKING DIRECTORY, DATA TYPES, OBJECTS, ATTRIBUTES AND SUBSETTING

#-------------------------------------------------------------------------------
#Working directory

getwd()
dir()
source()#traer archivo
ls()
read.csv("mydata.csv")
#Ctrl + a : seleccionar todo

#-------------------------------------------------------------------------------

#ASIGNAR VARIABLE

x<-1
print(x)
x ##auto-printing
msg<-"hello"
msg
x<-1:20 ##crear secuencias
x

# el [1] indica que es x es un vector y que 1 es su primer elemento

#-------------------------------------------------------------------------------

#TIPOS DE DATOS

class(x)
#character
a
#numeric
3.6
#integer
1L
#complex
#logical
T
F
#Inf
1/0
1/Inf=0
#NaN
0/0#indeterminado
#valor faltante

#-------------------------------------------------------------------------------

#OBJETOS

#Vector: solo puede contener objetos de la misma clase
vector()#class,length
#Lista: es representado como un vector, pero puede contener objetos de distintas clases

#-------------------------------------------------------------------------------

#ATRIBUTOS

attributes(x)

#names, dimnames
names(x)
dimnames(x)
#dimensions (matrices, arrays)
dim(x)
#class
class(x)
#lenght
length(x)
#metadata (other user-defined attributes)

#-------------------------------------------------------------------------------
