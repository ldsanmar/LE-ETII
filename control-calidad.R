#Paquetes
library(readr)
install.packages(tidyverse)
library(stringr)


#importar datos
datos <-  read_csv("datos.csv")


#Control de calidad

#Variable1 studyname
levels(factor(datos$studyName))
#verificado sin errores

#Variable 2 
datos$'Sample Number'
#se aprecian secuencias que se reinician

#Variable 3 Species
levels(factor(datos$Species))
datos$Species <- gsub("Adeli Penguin (Pygoscelis adeliae)|Adelie Penguin (Pygoscelis adeliae)", "ADELIE PENGUIN (PYGOSCELIS ADELIAE)", datos$Species)
print(datos)

datos$Species <- gsub("(Adeli Penguin|Adelie Penguin) \\(Pygoscelis adeliae\\)", "ADELIE PENGUIN (PYGOSCELIS ADELIAE)", datos$Species, ignore.case = TRUE)
