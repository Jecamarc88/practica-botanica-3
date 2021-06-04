#enunciat:La diversitat específica és una propietat de les comunitats biològiques que es relaciona amb la 
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
## llegim el fitxer csv
data <- read.csv("practica-3-botanica.csv")






