#Enunciat:La diversitat espec�fica �s una propietat de les comunitats biol�giques que es relaciona amb la 
##varietat dins d'aquestes comunitats. El principal component d'aquesta diversitat �s el nombre 
##d'esp�cies presents i es denomina riquesa espec�fica.
##Les condicions ambientals (intensitat lum�nica, pendent, substrats, etc.) dins una mateixa 
##comunitat provoquen variacions en la diversitat espec�fica i indiquen diferents par�metres 
##d'inter�s com el grau de conservaci�, valor ecol�gic..

#Exercici:
##1. Per la realitzaci� de l'exercici haureu d'introduir les dades recollides en excel i exportarles a un fitxer CSV.
##2. Feu un script de R que llegeixi el fitxer CSV creat a l'exercici 1 i calculeu la riquesa 
##espec�fica de cadascuna de les parcel�les d'estudi. Feu anar un repositori de GitHub per 
##emmagatzemar el script. 
##3. Hi ha variaci� de la riquesa espec�fica de la comunitat amb la dist�ncia al cam�? Com �s 
##aquesta variaci�? Feu un script de R per generar un plot que us permeti justificar i 
##exemplificar aquesta variaci�. Nota, variable dependent: riqueza espec�fica; variable 
##independent: distancia al cam�.
##4. Com explicaries aquest fet?
##5. (en un altre Script de R: practica_3_2_botanica.R) Quines esp�cies apar�ixen m�s aprop del cam� i quines m�s allunyades? Feu un script 
##per generar un plot que us permeti exemplificar-ho. Nota, variable dependent: esp�cie; 
##variable independent: dist�ncia al cam�

getwd()
setwd("C:/Users/Propietario/Documents/BOT�NICA/PR�CTIQUES/practica-botanica-3")
library(dplyr)


## llegim el fitxer .csv
data <- read.csv("practica-3-botanica.csv")

## ara calcularem el nombre d'esp�cies per a cada parcel.la (5m de llargada)
Parcel.la_0 <- data[data$PARCEL.LA == "0",]
n_especies_Parcel.la_0 <- count(Parcel.la_0)
Parcel.la_1 <- data[data$PARCEL.LA == "1",]
n_especies_Parcel.la_1 <- count(Parcel.la_1)
Parcel.la_2 <- data[data$PARCEL.LA == "2",]
n_especies_Parcel.la_2 <- count(Parcel.la_2)
Parcel.la_3 <- data[data$PARCEL.LA == "3",]
n_especies_Parcel.la_3 <- count(Parcel.la_3)
Parcel.la_4 <- data[data$PARCEL.LA == "4",]
n_especies_Parcel.la_4 <- count(Parcel.la_4)
Parcel.la_5 <- data[data$PARCEL.LA == "5",]
n_especies_Parcel.la_5 <- count(Parcel.la_5)

##agrupem els valors de riquesa espec�fica
y <- c(n_especies_Parcel.la_0, n_especies_Parcel.la_1, n_especies_Parcel.la_2, n_especies_Parcel.la_3, n_especies_Parcel.la_4, n_especies_Parcel.la_5)
x <- c(2.5, 7.5, 12.5, 17.5, 22.5, 27.5)

## creaci� d'un plot (gr�fica) amb eix x= dist�ncia al cam� (variable independent) i eix y= riquesa espec�fica (variable dependent)
par(bg="lightgreen")
plot(x, y, xlab = "Distancia al Cam� (m)", ylab = "Riquesa Espec�fica (Nombre d'Especies)", xlim=c(0, 30), ylim=c(0, 13), pch=16, main="Riquesa Espec�fica en Funci� de la Dist�ncia al Cam�")

# El fet que s'aprecii una clara tend�ncia a la baixa pel que fa a la riquesa espec�fica a mesura que ens anem allunyant del cam�, aix� es deu a........

# Anotacions: Degut a que cadascuna de les 5 parcel.les comprenia 5 metres de llargada, en el plot s'ha decidit enquibir els punts en la meitat de cada interval. Ex: interval (0-5m, a 2.5) 





