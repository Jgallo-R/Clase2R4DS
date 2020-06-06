#### Cargar datos en memoria ####
dir()
gluc <- read.table(file = "glucosa.txt", header = TRUE)
class(gluc)
str(gluc)
colnames(gluc)[2:3]
class(colnames(gluc))
gluc$glucosa
mean(gluc$glucosa)
median(gluc$glucosa)
sd(gluc$glucosa)
var(gluc$glucosa)
quantile(gluc$glucosa,probs= 0.1)
quantile(gluc$glucosa,probs= 0.5)
quantile(gluc$glucosa,probs= c(0.1,0.9))

gluc$temperatura
#
help("plot")
plot(x = 1:31, y =gluc$temperatura)
plot(x = 1:31, y =gluc$temperatura,
     main = "Dataset glucosa.txt", xlab = "Indices", ylab = "Temperatura" )
plot(x = 1:31, y =gluc$temperatura,
     main = "Dataset glucosa.txt", xlab = "Indices", ylab = "Temperatura",
     type = 'l')#grafico de lineas
plot(x = 1:31, y =gluc$temperatura,
     main = "Dataset glucosa.txt", xlab = "Indices", ylab = "Temperatura",
     type = 'b')#grafico lineas con puntos
plot(x = 1:31, y =gluc$temperatura,
     main = "Dataset glucosa.txt", xlab = "Indices", ylab = "Temperatura",
     type = 's')#Grafico forecast

# text()
# lines()
# hist()
# barplot()
# pie()





