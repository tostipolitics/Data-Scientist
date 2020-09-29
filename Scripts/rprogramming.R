# Ver cuáles variables tengo
source()

#Valores faltantes
is.na()#valores faltantes que tienen una clase, operaciones matemáticas infedinidas
is.nan()#valores faltantes que la convergencia es falsa
x<-c(1,2,NA,10,3,NaN)
is.na(x)
is.nan(x)


# Assignment operator 
x<-1:20
msg<-"hello"

#Evaluar función
print(x)

# []esto muestra el número del vector

#Crear secuencias de números enteros
1:10

#Vectores
vector()#"tipo de objeto",largo
x<-vector("numeric",length = 10)
c()
x<-c(0.5,0.6)#numérico
x<-c(T,F)#lógico
x<-c("a","b","c")#caracter
x<-c(9:29)#entero
x<-c(1+0i,2+4i)#complejo

#Combinando objetos (coerción implícita)
y<-c(1.7,"a")#caracter
y<-c(T,2)#numérico
y<-c("a",T)#caracter

#Coerción explícita
x<-0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)
as.complex(x)
as.integer(x)

#Listas
x<-list(1,"a",T,1+4i)#es un tipo de vector que contiene elementos de diferentes clases

#Matrices
m<-matrix(nrow = 2,ncol = 3)#es un tipo de vector con el atributo de una dimensión
m<-matrix(1:6,nrow = 2,ncol = 3)#las matrices se construyen a partir de las columnas
dim(m)
attributes(m)

#Crear una matriz a partir de un vector
m<-1:10
m
dim(m)<-c(2,5)
m

#Crear matrices por medio de la vinculación de columnas y filas
x<-1:3
y<-10:12
cbind(x,y)
rbind(x,y)

#Factores: para información categórica nominal u ordinal
x<- factor(c("yes","yes","no","yes","no"))#muestra los niveles y los organiza alfabéticamente (nominal)
x
table(x)
unclass(x)#mostrar cómo R reconoce el factor 
x<- factor(c("yes","yes","no","yes","no"),levels = c("yes","no"))#asignar el orden (ordinal)
x
lm()
glm()



#Enteros
#L sufijo
1L

#Número infinitos - Inf
1/0 
1/Inf

#No es un número - NaN
0/0

#Atributos
attributes()

#Data frames
row.names()#atributo especial como el ID del sujeto
read.table()
read.csv()#crear tabla
data.matrix()#convertir data frame en matriz
x<-data.frame(food=1:4,bar=c(T,T,F,F))
x
nrow(x)
ncol(x)

#Atribuir nombres
x<-1:3
names(x)
names(x)<-c("foo","bar","norf")
names(x)#Lo objetos de R pueden tener nombres, lo cual es útil para escribir código comprensible
x<-list(a=1,b=2,c=3)
x#Las listas también pueden tener nombres
m<-matrix(1:4,nrow = 2,ncol = 2)
dimnames(m)<-list(c("a","b"),c("c","d"))
m#las matrices pueden tener nombres

#Leer datos en R
read.table()
read.csv()#leer datos tabulares
readLines()#leer líneas de un documento de texto
source()
dget()#leer archivos de código en R
load()#leer en espacios de trabajo guardados
unserialize()#leer objetos sencillos de R en forma binaria
initial<-read.table("datatable.txt",nrows = 100)
classes<-sapply(initial,class)
tabALL<-read.table(colClasses = classes)#leer grandes bases de datos

#Escribir datos en R
write.table()
writeLines()
dump()
dput()
save()
serialize()

#Formatos de texto
y<-data.frame(a=1,b="a")
dput(y)
dput(y,file = "y.R")
new.y<-dget("y.R")
new.y#dput usado en un solo objeto
x<-"foo"
y<-data.frame(a=1,b="a")
dump(c("x","y"),file = "data.R")
rm(x,y)
source("data.R")
y
x#dump usado en varios objetos


#Interfaces con el mundo externo
file()#abre una conexión con un archivo
gzfile()#abre una conexión con un archivo comprimido con gzip
bzfile()#abre una conexión con un archivo comprimido con bzip2
url()#abre una conexión con una página web
str(file)# "r"=leer/"w"=escribir/"a"=añadir/"rb"-"wb"-"ab"-código binario
con<-file("archivo","r")
data<-read.csv(con)
close(con)
#lo anterior es igual a:
data<-read.csv("archivo")


#Leer líneas 
con<-gzgile("words.gz")
x<-readLines(con,10)
x#documento de texto
con<-url("http://www.jhsph.edu","r")
x<-readLines(con)
head(x)#página web


#Subconjuntos básicos
x<-c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u<- x >"a"#lógica
u#devuelve objetos de la misma clase que la original


#Subconjuntos listas
x<-list(foo=1:4,bar=0.6)
x[1]#extrae una lista
x[[1]]#es solo una secuencia
x$bar
x[["bar"]]
x["bar"]#extrae el elemento del nombre
x<-list(foo=1:4,bar=0.6,baz="hello")
x[c(1,3)]#extraer múltiples elementos de una lista []\
x<-list(foo=1:4,bar=0.6,baz="hello")
name<-"foo"
x[[name]]#índice computado para "foo" [[]]
x$name#elemento name no existe
x$foo#elemento "foo" no existe
x<-list(a=list(10,12,14),b=c(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]#extraer un único elemento


#Subconjuntos de matrices (i,j)
x<-matrix(1:6,2,3)
x
x[1,2]
x[2,1]
x[1,]
x[,2]
a[1,2]#devuelve un vector de largo 1
x[1,2,drop=F]
x[1,,drop=F]#devuelve una matriz de 1x1/1X3


#Subconjuntos: emparejamiento parcial (ahorrar tiempo)
x<-list(aardvark=1:5)
x$a#busca un nombre que se empareje a la letra
x[["a"]]#no funciona
x[["a",exact=F]]#aproximación


#Subconjuntos de valores faltantes












