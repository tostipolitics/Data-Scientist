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


