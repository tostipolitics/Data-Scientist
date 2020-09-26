# Ctrl + Enter         -- correr el código de una línea
# Ctrl + Shift + Enter -- correr todo el código

#Versión R
version
sessionInfo()

#Actualizar R
install.packages("installr")
library(installr)
updateR()

#Proyectos en R
GITHUB


#Instalar paquete/s
install.packages(c("ggplot2", "devtools", "lme4"))

#Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.11")
biocLite()
biocLite("GenomicFeatures")

#GitHub
install.packages("devtools")
library(devtools)
install_github("paquete")

#Instalar paquete
install.packages("paquete")

#Desinstalar paquetes
remove.packages("paquete")

#Cargar paquete
library(paquete)

#Descargar paquetes
detach("package:ggplot2", unload = T)

#Actualiza paquetes
old.packages()
update.packages()
installed.packages("paquete")

#Ayuda de los paquetes
browseVignettes("")

#Crear matriz
example<-matrix(c(1,2,3,4,5,6,7,8),nrow=4,ncol=2)
View(example)

#Abrir muchos proyectos al tiempo
##Open Project in New Session

#R Markdown
install.packages("rmarkdown")
#Negrilla -- **texto**
#Itálica -- "texto*
#Tachar      -- ~~texto~~
#Título      -- #      
#Subtítulo   -- ##
#Subtítulo 2 -- ###
#Bullet points - + espacio + texto + 2 espacios
# Ctrl + Alt + i -- Insertar código en R maarkdown
#Links       - [links](link)
