# Script Clase 4
# Análisis de Encuestas por Muestreo con R
# Sociedad de Ecuatoriana de Estadística 


# Función de densidad
dbinom(x=3, size = 25, prob = 1/20)
# Función de distribución
1 - pbinom(q = 1, size = 25, prob = 1/20, lower.tail = T)

pbinom(q = 1, size = 25, prob = 1/20, lower.tail = F)


# Poisson
# Suponer que en un call center se reciben 5 llamadas
# 20 minutos, probabilidad de recibir 8 llamadas, hasta
# 4 llamadas
dpois(8, 5)
ppois(4, 5)



# Normal
pnorm(100, mean = 100, sd = 10, lower.tail = F)
pnorm(80, mean = 100, sd = 10, lower.tail = T)

# Útil para los intevalos de confianza 1-alpha
qnorm(c(0.025, 0.975))

# Aleatorios
rnorm(100)

hist(rnorm(100))
