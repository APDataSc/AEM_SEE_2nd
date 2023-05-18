# Script Clase 2
# Análisis de Encuestas por Muestreo con R
# Sociedad de Ecuatoriana de Estadística 


#Permutaciones y combinaciones
install.packages("gtools", dependencies = TRUE)

library(gtools)

# Población
(x<-1:4)

# Duplas posibles
4^2

permutations(n=4,r=2,v=x,repeats.allowed=T)


# Combinaciones

choose(4, 2)
combinations(4, 2, v=x)


# Ejemplo de distribución de x barra, muestreo con reemplazo

x<-1:4
n<-length(x)

(mu<-mean(x))

# Varianza poblacional
(va<-sum((x-mu)^2)/n)

muestras<-permutations(n=4,r=2,v=x,repeats.allowed=T)
(xbar_n_i<-rowMeans(muestras))

(fx_i<-prop.table(table(xbar_n_i)))

barplot(prop.table(table(xbar_n_i)))


xbar_i<-unique(xbar_n_i)
(esp_xbar<-sum(xbar_i*fx_i))
(var_xbar<-sum((xbar_i-esp_xbar)^2*fx_i))