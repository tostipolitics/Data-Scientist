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


