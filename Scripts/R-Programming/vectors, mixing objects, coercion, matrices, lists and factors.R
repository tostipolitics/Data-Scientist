#VECTORS, MIXING OBJETS, COERCION, MATRICES, LISTS AND FACTORS

#-------------------------------------------------------------------------------

#CREATING VECTORS

x<-c(0.5,0.6)     ##numeric
x<-c(T,F)         ##logical
x<-c("a","b","c") ##character
x<-c(1+0i,2+4i)   ##complex
x<-vector("numeric",length = 10)

#-------------------------------------------------------------------------------

#MIXING OBJECTS AND COERCION

y<-c(1.7,"a") ##character
y<-c(T,2)     ##numeric
y<-c("a",T)   ##character

#Cuando diferentes objetos son combinados en un vector, ocurre coercion para que cada elemento en el vector quede de la misma clase

#-------------------------------------------------------------------------------

#EXPLICIT COERCION

x<-0:6
class(x)
#numeric
as.numeric(x)
#logical
as.logical(x)
#character
as.character(x)
#complex
as.complex(x)

#-------------------------------------------------------------------------------

#MATRICES: son vectores con una dimensión atribuída

#La dimensión es un vector entero de largo 2 (nrow,ncol)

#las mactrices se construyen desde las columnas

m<-matrix(1:6,nrow = 2,ncol = 3)
m
dim(m)
attributes(m)

#Agregar dimensión a vector para que sea una matriz

m<-1:10
m
dim(m)<-c(2,5)
m

#Column/row binding

x<-1:3
y<-10:12
cbind(x,y)
rbind(x,y)

#-------------------------------------------------------------------------------

#LISTS

x<-list(1,"a",T,1+4i)
x
x<-vector("list",length = 5)
x

#-------------------------------------------------------------------------------

#FACTORS: son usados para representar datos categóricos nominales y ordinales

#vector donde cada entero tiene una etiqueta

lm(x)
glm()

x<-factor(c("yes","yes","no","yes","no"))
x
table(x)
unclass(x)
attr(x,"levels")

x<-factor(c("yes","yes","no","yes","no"),levels = c("yes","no"))
x
