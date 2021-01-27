#GETTING DATA IN AND OUT OF R

#-------------------------------------------------------------------------------

#READING DATA

#tabular data
read.table()
  ##file: the name of a file or connection
  ##header:logical indicating if the file has a header line that indicates vaariables names
  ##sep: a string indicating how the columns are separated (commas, spaces,semicolons, etc.)
  ##colClasses: a character vector indicating the class of each column in the dataset
  ##nrows: the number of rows in the dataset
  ##comment.char: a character string indicating the comment character, generally skips lines that begin with #
  ##skip: the number of lines to skip from the beginning
  ##stringsAsFactors: shoud character variables be coded as factors?
read.csv()
  ##es igual pero el separador predeterminado son las comas


#text files
readLines()

#R code files
source()
dget()

#saved workspaces
load()

#single R objects in binary form
unserialize()

#-------------------------------------------------------------------------------

#WRITING DATA

#tabular data
write.table()

#text files
writeLines()

#R code files
dump()
dput()

#Saved workspaces
save()

#single R objects in binary form
serialize()

#-------------------------------------------------------------------------------
