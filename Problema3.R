#Codigo para problema 3

#x<- 1:20

x <- c(-8,5,2,-8,9,5,2,-3,1,-1,4,-4,9,3,-9,7,0,-7,8,-4,1,7,-6,4,5,-9,-2,-8,5,-5) # Definimos vector con 'c'(concatenar)

#Suma de todos los elementos del vector

sum(x) #R = 3

# Crea un vector Y apartir de X eliminando las posicions 21,2,26

x[15] #1a posicion es 1 

Y <- x[-c(21,2,26)] #el '-' elimina elementos | con 'c' elegimos un grupo de posiciones

sum(exp(x))-sum(exp(Y))   #R = 151.1316
