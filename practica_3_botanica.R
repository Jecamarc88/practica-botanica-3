#Enunciat:La diversitat específica és una propietat de les comunitats biològiques que es relaciona amb la 
##varietat dins d'aquestes comunitats. El principal component d'aquesta diversitat és el nombre 
##d'espècies presents i es denomina riquesa específica.
##Les condicions ambientals (intensitat lumínica, pendent, substrats, etc.) dins una mateixa 
##comunitat provoquen variacions en la diversitat específica i indiquen diferents paràmetres 
##d'interés com el grau de conservació, valor ecològic..

#Exercici:
##1. Per la realització de l'exercici haureu d'introduir les dades recollides en excel i exportarles a un fitxer CSV.
##2. Feu un script de R que llegeixi el fitxer CSV creat a l'exercici 1 i calculeu la riquesa 
##específica de cadascuna de les parcel·les d'estudi. Feu anar un repositori de GitHub per 
##emmagatzemar el script. 
##3. Hi ha variació de la riquesa específica de la comunitat amb la distància al camí? Com és 
##aquesta variació? Feu un script de R per generar un plot que us permeti justificar i 
##exemplificar aquesta variació. Nota, variable dependent: riqueza específica; variable 
##independent: distancia al camí.
##4. Com explicaries aquest fet?
##5. Quines espècies aparèixen més aprop del camí i quines més allunyades? Feu un script 
##per generar un plot que us permeti exemplificar-ho. Nota, variable dependent: espècie; 
##variable independent: distància al camí

getwd()

## llegim el fitxer .csv
data <- read.csv("practica-3-botanica.csv")

## ara calcularem el nombre d'espècies per a cada parcel.la (5m de llargada)
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

##agrupem els valors de riquesa específica
y <- c(n_especies_Parcel.la_0, n_especies_Parcel.la_1, n_especies_Parcel.la_2, n_especies_Parcel.la_3, n_especies_Parcel.la_4, n_especies_Parcel.la_5)
x <- c(2.5, 7.5, 12.5, 17.5, 22.5, 27.5)

## creació d'un plot (gràfica) amb eix x= distància al camí (variable independent) i eix y= riquesa específica (variable dependent)
par(bg="lightblue")
plot(x, y, xlab = "Distancia al Camí (m)", ylab = "Riquesa Específica (Nombre d'Espècies)", xlim=c(0, 30), ylim=c(0, 12), pch=16, main="Riquesa Específica en Funció de la Distància al Camí")

# El fet que s'aprecii una clara tendència a la baixa pel que fa a la riquesa específica a mesura que ens anem allunyant del camí, això es deu a........

# Anotacions: Degut a que cadascuna de les 5 parcel.les comprenia 5 metres de llargada, en el plot s'ha decidit enquibir els punts en la meitat de cada interval. Ex: interval (0-5m, a 2.5) 





