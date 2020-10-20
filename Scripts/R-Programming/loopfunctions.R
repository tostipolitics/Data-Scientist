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

#-------------------------------------------------------------------------------

#mapply
#versión multivariada de lapply

#-------------------------------------------------------------------------------

#tapply
#aplica una función sobre los subconjuntos de un vector

#-------------------------------------------------------------------------------
#split
#función auxiliar en conjunto con lapply
