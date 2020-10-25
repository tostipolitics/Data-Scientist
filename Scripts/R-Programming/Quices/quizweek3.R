#QUIZ WEEK 3

#1.
library(datasets)
data(iris)
?iris
iris
tapply(iris$Sepal.Length,iris$Species, mean)

#-------------------------------------------------------------------------------

#2.¿Cuál saca un vector con la media de las variables?
apply(iris,2,mean)
apply(iris[,1:4],2,mean)#esta es la respuesta
apply(iris,1,mean)
apply(iris[,1:4],1,mean)
colMeans(iris)
rowMeans(iris)

#------------------------------------------------------------------------------

#3.Calcular promedio de millas por galón (mpg) por número de cilindros (cyl)
library(datasets)
data(mtcars)
?mtcars
mtcars



#¿Cuáles aplican?
split(mtcars,mtcars$cyl)
with(mtcars,tapply(mpg,cyl, mean))#SI
sapply(split(mtcars$mpg,mtcars$cyl),mean)#SI
tapply(mtcars$cyl,mtcars$mpg, mean)
apply(mtcars,2,mean)
mean(mtcars$mpg,mtcars$cyl)
sapply(mtcars,cyl,mean)
lapply(mtcars, mean)
tapply(mtcars$mpg,mtcars$cyl, mean)#SI

#------------------------------------------------------------------------------

#4.

#------------------------------------------------------------------------------

#5.