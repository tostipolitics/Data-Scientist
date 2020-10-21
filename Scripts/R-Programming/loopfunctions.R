#LOOP FUNCTIONS

#lapply
#Hace genera un bucle sobre una lista y evalúa la función en cada elemento
#Tiene 3 argumentos
#1.Lista (x): si x no es una lista se hará coerción as.list
#2.Función (FUN)
#3.Argumentos de la función (...)
lapply
x<-list(a=1:5,b=rnorm(10),c=rnorm(20,1),d=rnorm(100,5))
lapply(x,mean)#cada elemento de la lista, siempre devuelve una lista
x<-1:4
lapply(x,runif,min=0,max=10)

x<-list(a=matrix(1:4,2,2),b=matrix(1:6,3,2))
x#pasa como una función anónima

lapply(x,function(elt)elt[,1])#usar función anónima para extraer la primera columna

#-------------------------------------------------------------------------------

#sapply
#Lo mismo que lapply, pero simplifica el resultado 
#a. si los elementos del resultado son de largo uno, devuelve un vector
#b. si los elementos del resultado son mayores a 1, devuelve una matriz
#c. Si no puede solucionar el asunto, devuelve una lista
x<-list(a=1:5,b=rnorm(10),c=rnorm(20,1),d=rnorm(100,5))
lapply(x,mean)
sapply(x, mean)

#-------------------------------------------------------------------------------

#apply
# aplica una función sobre una colección de datos, tablas o matrices
#a. Usualmente aplica una función a las matrices
#b. Se puede usar con matrices generales
#c. No es tan rápida como escribir un loop, pero funciona en una línea

str(apply)
#X es un array es un vector que tiene dimensiones
#MARGIN es un vector de enteros indicando las márgenes
#FUN es la función a aplicar
#... son los argumentos de FUN

x<-matrix(rnorm(200),20,10)
x
apply(x,2,mean)#media de las columnas
apply(x,1,mean)#media de las filas

#col/row sums and means
#rowSums
apply(x, 1, sum)
#rowMeans
apply(x, 1, mean)
#colSums
apply(x, 2, sum)
#colMeans
apply(x, 2, mean)

#Calcular quartiles
x<-matrix(rnorm(200),20,10)
apply(x,1,quantile,probs=c(0.25,0.75))

#Media de una array
a<-array(rnorm(2*2*10),c(2,2,10))
apply(a, c(1,2),mean)
rowMeans(a,dims = 2)#collapse third dimension

#-------------------------------------------------------------------------------

#mapply
#versión multivariada (múltiples listas) de lapply, corre la función en paralelo sobre un conjunto de argumentos
str(mapply)
#FUN es una función a aplicar
#... argumentos
#MoreArgs es una lista de argumentos a FUN
#SIMPLIFY indica si el resultado debe ser simplificado
list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
mapply(rep, 1:4,4:1)#simplificar

noise<-function(n,mean,sd){
  rnorm(n,mean,sd)
}
noise(5,1,2)
noise(1:5,1:5,2)
mapply(noise, 1:5,1:5,2)

list(noise(1,1,2),noise(2,2,2),noise(3,3,2),noise(4,4,2),noise(5,5,2))

#-------------------------------------------------------------------------------

#tapply
#aplica una función sobre los subconjuntos de un vector
str(tapply)
#X es un vector
#INDEX es un factor o lista de factores
#FUN is la función a aplicar}
#... argumentos
#simplify ¿debo simplificar el resultado?
x<-c(rnorm(10),runif(10),rnorm(10,1))
x
f<-gl(3,10)#3 niveles repetidos 10 veces
f
tapply(x, f, mean)#vector
tapply(x, f, mean,simplify = F)#lista
tapply(x, f, range)# min y max

#-------------------------------------------------------------------------------
#split
#función auxiliar en conjunto con lapply
