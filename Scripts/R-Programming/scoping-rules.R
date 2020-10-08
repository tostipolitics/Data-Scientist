#Scoping Rules/Reglas de alcance
#son las reglas asociadas a un valor con una variable libre en una función

#Asignar un valor a un símbolo de acuerdo con lo que está en el ambiente o paquetes
lm<-function(x){x*x}
lm
search()


#Lexical scoping/Alcance léxico
f<-function(x,y){
  x^2+y/z
}#la z es una variable libre: no son argumentos formales ni variables locales
make.power<-function(n){
  pow<-function(x){
    x^n
  }
  pow
}#una función dentro de otra función
cube<-make.power(3)
cube(3)
square<-make.power(2)#n
square(3)#x


#Exloring a Function Closure
ls(environment(cube))
get("n",environment(cube))
get("n",environment(square))


#Lexical vs Dynamic Scoping
y<-10
f<-function(x){
  y<-2
  y^2+g(x)
}
g<-function(x){
  x*y
}
f(3)