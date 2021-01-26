#MISSING VALUES, DATA FRAMES, NAMES AND SUMMARY

#-------------------------------------------------------------------------------

#MISSING VALUES: denotados por NA o NaN para operaciones indeterminadas

is.na(x)  ##mira si hay NA
is.nan(x) ##mira si hay NaN

#NA tiene una clase (entero, caracter,etc.)
#NaN es también NA, pero al revés no

x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)
x<-c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

#-------------------------------------------------------------------------------

#DATA FRAME: lista especial con elementos del mismo largo

row.names(x)  #nombre de campo
read.table(x)
read.csv(x) 
data.matrix() ##convertir a matriz

x<-data.frame(foo=1:4,bar=c(T,T,F,F))
x
nrow(x)
ncol(x)

#-------------------------------------------------------------------------------

#NAMES

#data frame
x<-1:3
names(x)
names(x)<-c("foo","bar","norf")
x
names(x)

#list
x<-list(a=1,b=2,c=3)
x

#matrix
m<-matrix(1:4,nrow = 2,ncol = 2)
dimnames(m)<-(list(c("a","b"),c("c","d")))
m

#-------------------------------------------------------------------------------


