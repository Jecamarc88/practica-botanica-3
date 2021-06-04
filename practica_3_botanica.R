#enunciat:La diversitat espec�fica �s una propietat de les comunitats biol�giques que es relaciona amb la 
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
##5. Quines esp�cies apar�ixen m�s aprop del cam� i quines m�s allunyades? Feu un script 
##per generar un plot que us permeti exemplificar-ho. Nota, variable dependent: esp�cie; 
##variable independent: dist�ncia al cam�

getwd()
## llegim el fitxer csv
data <- read.csv("practica-3-botanica.csv")





