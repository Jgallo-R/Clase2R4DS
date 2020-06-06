#### Estructura de definicion IF ####
x <- runif(1,0,10)
if(x<5){
  y <- TRUE
}else{
  y <- FALSE
}

# # en general
# if(cond1){
#   # bloque de codigo
# }else if (cond2){
#   # bloque de codigo
# }else{
#   # otro bloque de codigo
# }


#### Estructura de repeticion FOR ####
for(i in 1:5){
  print(i)
}

# en general 
# for(variable in ObjetoIterable){
#   # algo de codigo que depende de variable
# }


#### Paquetes o librerias en R ####
sessionInfo()


# Para cargar el paquete ExtraDistR
library(extraDistr) # cargamos el paquete de libreria extraDistr
help("extraDistr")# accedemos a la yuda del paquete
library(help = "extraDistr")# mostramos la informacion que posee el paquete 
help("BetaPrime")# accedemos a la ayuda deuna funcion

#### Definicion de funciones de usuario en R ####
# Sintaxis

# NombreDeLaFuncion <- function(arg1,arg2.....){
#   # alguna funcionalidad
# }










