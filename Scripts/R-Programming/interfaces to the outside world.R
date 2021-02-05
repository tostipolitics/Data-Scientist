# INTERFACES TO THE OUTSIDE WORLD

#-------------------------------------------------------------------------------

## file()
str(file)

  ## description - name of the file

  ## open ()
    ### r - read only
    ### w - writing and initializing a new file
    ### a - appending
    ### "rb", "wb", "ab" - reading, writing, or appending in binary mode

con <- file("x", "r")
data <- read.csv(con)
close(con)
### ==
data <- read.csv("x")

#-------------------------------------------------------------------------------

  ## gzfile() - gzip - reading lines of a text file
con <- gzfile("archivo")
x <- readLines(con, 10)
x

#-------------------------------------------------------------------------------

  ## url() - reading lines in webpages
con <- url("https://www.instagram.com/")
x <- readLines(con)
head(x)
close(con)

#-------------------------------------------------------------------------------

bz()     ### bzip2
