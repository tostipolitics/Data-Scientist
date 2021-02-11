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

## Matrices
x <- matrix(1:6, 2, 3) # r x c
x
x[1, 2]
x[2, 1]
x[1, ]
x[, 2] # devuelve un vector de largo 1
x[1, 2, drop = F] # devolver matriz o preservar dimensiones
x[1, , drop = F]

#-------------------------------------------------------------------------------

## [[]] - extraer un elemento de una lista o data frame, de cualquier clase

## $ - extraer elementos de una lista o data frame por el nombre
