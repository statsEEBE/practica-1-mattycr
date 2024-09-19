#Codigo para problema 1

plot(1:5)
2+2

mis_dades <- mtcars #asignación de variables

qsec_intervalos <- cut(mis_dades$qsec, breaks =4)  #$ extrae columna qsec
# cut (..., breaks = n) rompe la lista en interval0s
qsec_intervalos
table(qsec_intervalos)

# 1. MITJANA
hist(mis_dades$qsec, breaks =10)   #histograma
mean(mis_dades$qsec) #mitjana de mis datos   | R = 17.84875

# 2. MEDIANA
sort(mis_dades$drat)
median(mis_dades$drat) #mediana nos da el punto medio (la mitad esta a un lado, la mitad a otra) R = 3.695

# 3. 1er quartil de drat
quantile(mis_dades$drat, 0.25) #0.25 porque piden cuarto. Corta en % que le digamos   R = 3.08

# 4. Valor donde el 18% de observaciones es mas pequeño
quantile(mis_dades$mpg, 0.18) # R = 15.116
# taula de frecuencia
sum(table(qsec_intervalos))
ni = (table(qsec_intervalos)) #veces que sale un valor | #frecuencia absoluta 
fi <- ni/sum(ni) #frecuencia relativa
Ni= cumsum(ni) #frecuencia absoluta acumulada
Fi = cumsum(fi) #frecuencia relativa acumulada
cbind(ni, fi, Ni, Fi)

#5. Rango interquartilico de CYL
IQR(mis_dades$cyl) #R = 4    
boxplot(mis_dades$cyl)

#6. Desviacion tipica corregida de CYL
sd(mis_dades$cyl) # Que tan dispersos estan los datos respecto a la media   |R =1.785922

#7. Varianza corregida de qsec
var(mis_dades$qsec)
