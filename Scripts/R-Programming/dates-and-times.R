#Fechas 
class(date)
#Son guardadas como el número de días desde 1970-01-01
x<-as.Date("1970-01-01")
x
class(x)
unclass(x)#0 días desde 1971-01-01
unclass(as.Date("1970-01-02"))#1 día desde 1971-01-01


#Horas
class(POSIXct or POSTIXlt)
x<-Sys.time()
x
unclass(x)#POSTIXct
p<-as.POSIXlt(x)
p
names(unclass(p))
p$sec#POSIXlt
#Son guardadas como el número de segundos desde 1970-01-01


#Para convertir en objetos de tiempo
datestring<-c("January 10, 2012 10:40","December 9, 2011 9:10")
x<-strptime(datestring, "%B %d, %Y %H:%M")
x
class(x)


#Operaciones entre fechas y horas
x<- as.Date("2012-01-01")
y<-strptime("9 Jan 2011 11:34:21","%d %b %Y %H:%M:%S")
x
y
x<-as.POSIXlt(x)
x
x-y
#diferencia de tiempo en dos zonas horarias
x<-as.POSIXct("2012-10-25 01:00:00")
y<-as.POSIXct("2012-10-25 06:00:00", tz="GMT")
x
y
y-x


#Funciones genéricas
weekdays(x)
months(x)
quarters(x)
