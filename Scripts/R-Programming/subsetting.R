# SUBSETTING R OBJECTS

#-------------------------------------------------------------------------------

## [] - devuelve un objeto (puede extraer varios elementos) de la misma clase que el original
x <- c("a", "b", "c", "d", "a")
x[1]
x[1:4]
x[x > "a"]
u <- x > "a"
u
x[u]

#-------------------------------------------------------------------------------

## [[]] - extraer un elemento de una lista o data frame, de cualquier clase

## $ - extraer elementos de una lista o data frame por el nombre
