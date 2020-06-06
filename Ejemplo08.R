rm(list = ls())
getwd()

library(help  = "datasets")

class(AirPassengers)
help(ts)
plot(AirPassengers)

class(CO2)
help(CO2)
str(CO2)

data(cars)
data(CO2)

library(car)
data(Prestige)

str(Prestige)
head(Prestige)
tail(Prestige)

summary(Prestige)

Prestige[is.na(Prestige$type), ]

help("Prestige")
# Analisis de correlacion entre todas las variables numericas.
cor(Prestige[,-6])

library(corrplot)
corrplot(cor(Prestige[,-6]))
install.packages("corrplot")

