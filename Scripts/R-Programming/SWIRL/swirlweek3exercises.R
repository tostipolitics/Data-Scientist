#SWIRL EXERCISE WEEK 3

#1. lapply and sapply
head(flags)
dim(flags)
viewinfo()
class(flags)

#Ver clase de datos por columna
cls_list <- lapply(flags, class)
cls_list#devuelve una lista
class(cls_list)
as.character(cls_list)#simplificar resultado en un vector de caracteres

cls_vect<- sapply(flags, class)
cls_vect#info simplificada
class(cls_vect)#vector de caracteres si cada elemento es de largo 1, si no devuelve una lista

#Número de banderas por color
sum(flags$orange)#naranja

flag_colors <- flags[, 11:17]
head(flag_colors)
lapply(flag_colors, sum)

sapply(flag_colors, sum)#simplificado

sapply(flag_colors,mean)#proporción por color de banderas

#Formas de las banderas
flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)#mínimo y máximo

shape_mat<-sapply(flag_shapes, range)
shape_mat#mínimo y máximo simplificado
class(shape_mat)#matriz

#Eliminar elementos duplicados
unique(c(3, 4, 5, 5, 5, 6, 6))
unique_vals<-lapply(flags, unique)#lista
unique_vals

sapply(flags, unique)#lista: vector lenght>1

sapply(unique_vals, length)

#Obtener un item de un vector
lapply(unique_vals, function(elem) elem[2])#elem es una variable dummy, función anónima

#-------------------------------------------------------------------------------

#2.vapply and tapply
head(flags)
dim(flags)
viewinfo()
class(flags)

sapply(flags, unique)

#Especificar el formato del resultado
vapply(flags,unique, numeric(1))#cada elemento del resultado debe ser un vector numérico de largo 1
ok()

sapply(flags, class)
vapply(flags, class,character(1))

?tapply#aplicar una función sobre una matriz irregular

table(flags$landmass)
table(flags$animate)

tapply(flags$animate,flags$landmass, mean)#toma la FUN (mean) de X (animate) de acuerdo con Y (landmass)

tapply(flags$population,flags$red, summary)
tapply(flags$population,flags$landmass, summary)

