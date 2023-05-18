# Script Clase 3
# Análisis de Encuestas por Muestreo con R
# Sociedad de Ecuatoriana de Estadística 

library(gtools)

X <- 1:3 
N <- length(X)
n <- 2 

n_i <- permutations(n = N, r = n, v = X, repeats.allowed = T)

x_bar_i <- rowMeans(n_i)

pi_i <- prop.table(table(x_bar_i))

# hist(prop.table(table(x_bar_i)))

sum(unique(x_bar_i)*pi_i)


x <- 1:10
y <- x>4
as.numeric(y)

mean(y)


#Teorema del límite central

N <- rbinom(1000, 100, 0.5)
N <- rexp(1000, 1/10)
N <- runif(1000, 10, 50)
n <- numeric(100)


for (i in 1:1000) {
n[i] <- mean(sample(N, 100, replace = TRUE))
}

par(mfrow=c(1,2))
hist(N, probability = T)
hist(n, probability = T)
curve(dnorm(x, mean(n), sd(n)), col = 2, lty = 2,
      lwd = 2, add=T)
par(mfrow=c(1,1))

# link
https://onlinestatbook.com/stat_sim/sampling_dist/