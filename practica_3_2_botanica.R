##5. Quines espècies aparèixen més aprop del camí i quines més allunyades? Feu un script 
##per generar un plot que us permeti exemplificar-ho. Nota, variable dependent: espècie; 
##variable independent: distància al camí

getwd()
setwd("C:/Users/Propietario/Documents/BOTÀNICA/PRÀCTIQUES/practica-botanica-3")
library(dplyr)


## llegim el fitxer .csv
data <- read.csv("practica-3-botanica.csv")


## fem un plot per exemplificar quines espècies apareixen més a prop del camí i quines més allunyades:
## variable independent (x) = Distància al Camí. Variable dependent: (y) = Espècie

x <- c(2.5, 7.5, 12.5, 17.5, 22.5, 27.5)

y <- c("Ulex_parviflorus", "Arbustus_unedo", "Quercus_cerricoides", "Hedera_helix", "Viburnum_tinus", "Rubia_peregrina", "Cistus_salviifolis", "Pistacea_lentiscus", "Doryonium_pentaphyllum", "Cistus_albidus", "Quercus_coccifera", "Lonicera_implexa", "Quercus_ilex", "Erica_arborea", "Smilax_aspera", "Quercus_suber")

## creem variables per al nombre d'individus de cada especie en funció de la parcela en la que es troben


plot(x, y, xlab="Distància al camí", ylab="Espècie", main = "Gráfico de dispersión")

