# USING TEXTUAL AND BINARY FORMATS FOR STORING DATA

#-------------------------------------------------------------------------------

#TEXTUAL FORMATS
  ##metadata
  ##editable
  ##a lot of space

#dputing - solo un objeto
y <- data.frame(a = 1, b = "a")
y
dput(y)
dput(y, file = "y.R")
new.y <- dget("y.R")
new.y

#dumping - varios objetos
x <- "foo"
y <- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x, y)
source("data.R")
y
x

#-------------------------------------------------------------------------------

# BINARY FORMATS
  ## numeric

# save() - individual R objects
a <- data.frame(x = rnorm(100), y = runif(100))
b <- c(3, 4.4, 1/3)
save(a, b, file = "mydata.rda")
load("mydata.rda")

# save.image() - multiple objects
save.image(file = "mydata.Rdata")
load("mydata.RData")

# serialize() - convertir objetos individuales en un formato binario que puede ser enviado a otra red 
  ## vector codificado en un formato hexadecimal
x <- list(1, 2, 3)
serialize(x, NULL)




