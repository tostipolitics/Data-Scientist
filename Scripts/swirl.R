#SWIRL

#Instalar SWIRL
install.packages("swirl")
packageVersion("swirl")

#Cargar SWIRL
library(swirl)

#Instalar curso R Programming
install_from_swirl("R Programming")

#Comenzar SWIRL
swirl()

#Salir SWIRL
#Esc key
bye()

#Comandos en SWIRL
skip() #allows you to skip the current question.
play() #lets you experiment with R on your own; swirl will ignore what you do...
nxt()  #will regain swirl's attention.
bye()  #causes swirl to exit. Your progress will be saved.
main() #returns you to swirl's main menu.
info() #displays these options again.

#Ayuda
help.start()
?funcion

