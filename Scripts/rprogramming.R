# Ver cuáles variables tengo
source()

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




