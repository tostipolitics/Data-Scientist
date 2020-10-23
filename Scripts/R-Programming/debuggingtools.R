#Debugging Tools - Técnicas de depuración
#Saber qué está mal después de descubrir un problema

#a. Diagnosticar el problema
#MESSAGE: mensaje de notificación, pero continua con la ejecución

#Nombre de la función
#Input
#¿Qué espero?: output, mensaje, resultados
#¿Qué obtengo?
#¿Cómo difiere de la expectativa?
#¿Puedo reproducir el problema?

#WARNING: indicación de que algo está mal, pero no fatal. La ejecución continua.Función warning
log(-1)

#ERROR: un problema fatal ocurrió, se frena la ejecución.Función stop
printmessage<-function(x){
  if(x>0)
    print("x is greater than zero")
  else
    print("x is less than or equal to zero")
  invisible(x)
}
printmessage(1)
printmessage(NA)

printmessage2<-function(x){
  if(is.na(x))
    print("x is a missing value!")
  else if (x>0)
    print("x is greater than zero")
  else
    print("x is less than or equal to zero")
  invisible(x)
}
x<-log(-1)
printmessage2(x)
printmessage2(1)
printmessage2(0)

#CONDITION:algo indica que algo inesperado ocurrió, puede crear sus propias condiciones. 

#b. Herramientas básicas

#c. Uso de las herramientas
