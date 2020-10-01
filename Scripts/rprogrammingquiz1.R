#Quiz 1

#Convertir base de datos
quiz1<-hw1_data

#Ver nombres de las columnas
colnames(quiz1)

#Ver nombres de las variables
str(quiz1)

#Extraer filas [n,]
quiz1[1:2,]

#Extraer columnas [,n]
quiz1[,1]

#Extraer dato [n,m]
quiz1[1,1]

#Extraer últimos datos
tail(quiz1)

#contar columnas y filas
ncol(quiz1);nrow(quiz1)

#Contar valores nulos por columna
sapply(quiz1,function(x)sum(is.na(x)))

#Eliminar todos los valores nulos (pocos)
quiz1
complete.cases(quiz1)#valores NA son F
which(complete.cases(quiz1))#filas SIN valores faltantes
which(!complete.cases(quiz1))#filas CON valores faltantes
naquiz1<-which(!complete.cases(quiz1))
naquiz1
quiz1nona<-quiz1[-naquiz1,]
quiz1nona#forma 1

quiz1nona<-na.omit(quiz1)
quiz1nona#forma 2


#Sacar media de una columna (también aplica para las demás operaciones aritméticas)
colMeans(quiz1nona[1])#de una columna en específico
colMeans(quiz1nona)#de todas las columnas


#Sacar media con un condicional
filter(quiz1nona,"Ozone">31&"Temp">90)
quiznona1
