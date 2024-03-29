##5. Quines esp�cies apar�ixen m�s aprop del cam� i quines m�s allunyades? Feu un script 
##per generar un plot que us permeti exemplificar-ho. Nota, variable dependent: esp�cie; 
##variable independent: dist�ncia al cam�
getwd()
setwd("C:/Users/Propietario/Documents/BOT�NICA/PR�CTIQUES/practica-botanica-3")
library(dplyr)


## llegim el fitxer .csv
data <- read.csv("practica-3-botanica.csv")

colnames(data) <- c("Parcela", "Distancia", "Especie", "Estrat", "Individus")
plantes <- c("light green", "dark green", "light blue", "dark blue", "yellow", "orange", "red", "pink", "grey", "brown", "violet", "light pink", "purple", "gold", "coral", "cornsilk")
plot(data$Distancia, Especies, col=plantes[Especies], pch=16, xlab="Dist�ncia al cam�", ylab="Esp�cie", xlim=c(0,30), ylim=c(Especies) main = "Esp�cies residents segons la dist�ncia al cam�") 


## fem un plot per exemplificar quines esp�cies apareixen m�s a prop del cam� i quines m�s allunyades:
## variable independent (x) = Dist�ncia al Cam�. Variable dependent: (y) = Esp�cie

Parcel.la_0 <- data[data$PARCEL.LA == "0",]
Ulex_parviflorus <- factor(data$ESPECIE == "Ulex_parviflorus",)
Arbustus_unedo <- factor(data$ESPECIE == "Arbustus_unedo",)
Quercus_cerricoides <- factor(data$ESPECIE == "Quercus_cerricoides",)
Hedera_helix <- factor(data$ESPECIE == "Hedera_helix",)
Viburnum_tinus <- factor(data$ESPECIE == "Viburnum_tinus",)
Rubia_peregrina <- factor(data$ESPECIE == "Rubia_peregrina",)
Cistus_salviifolis <- factor(data$ESPECIE == "Cistus_salviifolis",)
Pistacea_lentiscus <- factor(data$ESPECIE == "Pistacea_lentiscus",)
Doryonium_pentaphyllum <- factor(data$ESPECIE == "Doryonium_pentaphyllum",)
Cistus_albidus <- factor(data$ESPECIE == "Cistus_albidus",)
Quercus_coccifera <- factor(data$ESPECIE == "Quercus_coccifera",)
Erica_arborea <- factor(data$ESPECIE == "Erica_arborea",)
Lonicera_implexa <- factor(data$ESPECIE == "Lonicera_implexa",)
Quercus_ilex <- factor(data$ESPECIE == "Quercus_ilex",)
Quercus_suber <- factor(data$ESPECIE == "Quercus_suber",)
Smilax_aspera <- factor(data$ESPECIE == "Smilax_aspera",)
Ulex_europaeus <- factor(data$ESPECIE == "Ulex_europaeus",)



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





y <- c("Ulex_parviflorus", "Arbustus_unedo", "Quercus_cerricoides", "Hedera_helix", "Viburnum_tinus", "Rubia_peregrina", "Cistus_salviifolis", "Pistacea_lentiscus", "Doryonium_pentaphyllum", "Cistus_albidus", "Quercus_coccifera", "Lonicera_implexa", "Quercus_ilex", "Erica_arborea", "Smilax_aspera", "Quercus_suber")

## Creem un plot per representar quines esp�cies es troben a m�s dist�nica del cam� i quines en s�n m�s properes.


plot(x, y, xlab="Dist�ncia al cam�", ylab="Esp�cie", main = "Esp�cies residents segons la dist�ncia al cam�")

