##5. Quines esp�cies apar�ixen m�s aprop del cam� i quines m�s allunyades? Feu un script 
##per generar un plot que us permeti exemplificar-ho. Nota, variable dependent: esp�cie; 
##variable independent: dist�ncia al cam�

getwd()
setwd("C:/Users/Propietario/Documents/BOT�NICA/PR�CTIQUES/practica-botanica-3")
library(dplyr)


## llegim el fitxer .csv
data <- read.csv("practica-3-botanica.csv")


## fem un plot per exemplificar quines esp�cies apareixen m�s a prop del cam� i quines m�s allunyades:
## variable dependent (y): esp�cie; variable independent (x): dist�ncia al cam�