#SWIRL Week 2 exercises

#1. Logic operations and functions in R
==      #igual
<       #menor
<=      #menor o igual
>       #mayor
>=      #mayor o igual
!=      #no igual
!T      #no verdadero
!F      #no falso
!       #niega la expresión
&       #Y, se evaluán antes que el O
&&      #solo se evalúa el primer elemento del vector
|       #O
||      #solo se evalúa el primer elemento del vector
  
isTRUE(6>4)
identical('twins', 'twins')
xor(5 == 6, !FALSE)#si alguna es T entonces es T

ints <- sample(10)
ints
ints>5
which(ints>7)
any(ints<0)
all(ints>0)

#------------------------------------------------------------------------------

#2. Functions
