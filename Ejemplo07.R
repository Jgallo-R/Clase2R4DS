rm(list = ls())
setwd("C:/Users/JGALLO/Desktop/Clase2R4DS")
dir()

#### Cargamos la data ####
retail <- read.csv(file = "RetailSales.csv.txt")

#### Alguna informacion del DF ####
class(retail)
str(retail)
colnames(retail)
View(retail)


#### limpieza de datos #####
# notamos que existen filas que poseen elementos vacios
# asi como elementos NA
help("na.omit")
retail <- na.omit(retail)
# na.omit elimina todas las filas que tengan un elemento NA

str(retail)


#### retail: analisis por año ####
# veamos cuanto es lo que produjo de ventas por año
retail
retail[retail$Year==2000, ]
class(retail[retail$Year==2000, ])
retail[retail$Year==2000, ]$Sales
sum(retail[retail$Year==2000, ]$Sales)
unique(retail$Year)

# Utilicemos una estructura FOR para crear un DF en donde almacenaremos 
# un resumen por año.
ResumenSales <- data.frame(Year = integer(),
                           VentaTotal = double())
NuevaFila <- data.frame()

for(y in unique(retail$Year)){
  NuevaFila <- data.frame(Year = y , VentaTotal =sum(retail[retail$Year==y, ]$Sales))
  ResumenSales <- rbind(ResumenSales, NuevaFila)
}


plot(x = ResumenSales$Year , y = ResumenSales$VentaTotal)

#### Comportamiento de la data por mes ####
retail[retail$Month == "Jan", ]$Sales
unique(retail$Month)
help("aggregate")

RetailMes <- aggregate(Sales ~ Month , data = retail, FUN = sum)
RetailMes

month.abb
month.name


RetailMes <- RetailMes[order(match(RetailMes$Month, month.abb)), ]

 













