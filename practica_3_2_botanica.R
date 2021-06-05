##5. Quines espècies aparèixen més aprop del camí i quines més allunyades? Feu un script 
##per generar un plot que us permeti exemplificar-ho. Nota, variable dependent: espècie; 
##variable independent: distància al camí

getwd()
setwd("C:/Users/Propietario/Documents/BOTÀNICA/PRÀCTIQUES/practica-botanica-3")
library(dplyr)


## llegim el fitxer .csv
data <- read.csv("practica-3-botanica.csv")


## fem un plot per exemplificar quines espècies apareixen més a prop del camí i quines més allunyades:
## variable dependent (y): espècie; variable independent (x): distància al camí