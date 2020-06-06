#### Data Frame en R ####

# Definicion : 
Nota1 <- runif(10, 1,19)
Nota2 <- sample(1:20,10)
MiPrimerDF <- data.frame(NOTAP = Nota1, NOTAF = Nota2)
class(MiPrimerDF)
dim(MiPrimerDF)
str(MiPrimerDF)
View(MiPrimerDF)

#### acceso a la informacion en un DF ####
MiPrimerDF$NOTAP
MiPrimerDF[[1]]
MiPrimerDF[,1]

# Desean ingresar algun parametor por teclado 
help("readline")





