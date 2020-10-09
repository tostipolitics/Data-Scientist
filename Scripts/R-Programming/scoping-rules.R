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


#Optimización: el argumento es un vector de parámetros
make.NegLogLik<-function(data,fixed=c(F,F)){
  params<-fixed
  function(p){
    para[!fixed]<-p
    nu<-params[1]
    sigma<-params[2]
    a<- -0.5*length(data)*log(2*pi*sigma*2)
    b<- -0.5*sum((data-mu)*2)/(sigma*2)
    -(a+b)
  }
}#constructor, se usa el símbolo negativo para minimizar
set.seed(1);normals<-rnorm(100,1,2)
nLL<-make.NegLogLik(normals)
nLL
function(p){
  para[!fixed]<-p
  nu<-params[1]
  sigma<-params[2]
  a<- -0.5*length(data)*log(2*pi*sigma*2)
  b<- -0.5*sum((data-mu)*2)/(sigma*2)
  -(a+b)
}
ls(environment((nLL)))#maximizar una distribución normal


#Estimar parámetros
optim(c(mu=0,sigma=1),nLL)$par

nLL<-make.NegLogLik(normals,c(F,2))
optimize(nLL,c(-1,3))$minimun

