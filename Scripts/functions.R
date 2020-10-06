#Mi primera función en R
add2<-function(x,y){
  x+y
}


above<-function(x,n){
  use<-x>n
  x[use]
}
x<-1:20
above(x,12)


above<-function(x,n=10){
  use<-x>n
  x[use]
}#dejar un default de 10 para mejorar la vida del usuario
above(x)


columnmean<-function(y,removeNA=T){
  nc<-ncol(y)
  means<-numeric(nc)
  for(i in 1:nc){
    means[i]<-mean(y[,i],na.rm=removeNA)
  }
  means
}
columnmean(airquality)
columnmean(airquality,F)

#----------------------------------------------------------------------------------------

#Funciones: transición del usuario de R a programador

f<-function(<argumento>){
  ##hacer algo
}

#Coincidencia de funciones: lor agumentos de las funciones pueden coincidir posicionalmente o por nombre
#todas estas sd son equivalentes
mydata<-rnorm(100)
sd(mydata)
sd(x=mydata)
sd(x=mydata,na.rm = F)
sd(na.rm = F,x=mydata)
sd(na.rm = F,mydata)
#lm equivalentes
lm(data=mydata,y-x,model = F,1:100)
lm(y-x,mydata,1:100,model = F)
#Combinar coincidencia posicional y por nombre
args(lm)




