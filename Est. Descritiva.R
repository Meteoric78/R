 
  # ESTATÍSTICA DESCRITIVA 
  
## cONJUNTO DE DADOS, MÍNIMO, MÁXIMO, QUARTIL, DECIL E PERCENTIL
## criando uma série qualquer de dados
x <- c(10, 15, 25, 26, 33, 40)
x1 <- c(0, 15, 25, 26, 33, 40)
x2 <- c(10, 15, 25, 26, 33, 60)
x3 <- 2*x
x4 <- x/2
x5 <- x+2
x6 <- x-2
w <- c(1, 2, 3, 4, 4, 4, 5, 6, 7)

# Número de termos de um conjunto de dados, ou tamanho da amostra
nx <- length(x)
nw <- length(w)

# Mínimo, máximo e amplitude total
min(x)
max(x)
range(x)#menor e maior valor
At <- max(x)-min(x);At

# Quartil
quantile(x,c(0.25,0.5,0.75,1))

# Decil
decil <- quantile(x,seq(0.10,1,0.1));decil # de 0.1 a 0.9 saltando 0.1

# Percentil
percentil <- quantile(x,seq(0.01,1,0.01));percentil
quantile(x,0.9) # percentil 90


## MEDIDAS DE POSIÇÃO: MEDIANA, MODA, MÉDIA E PROPRIEDADES
# Média e suas propriedades 
x <- c(10, 15, 25, 26, 33, 40)
sum(x)/nx
mean(x) #media aritmetica

# Propriedades da média
x1 <- c(0, 15, 25, 26, 33, 40)
x2 <- c(-3, 15, 25, 26, 33, 40)
x3 <- 2*x
x4 <- x/2
x5 <- x+2
x6 <- x-2
mean(x1)
mean(x2)
mean(x3)
mean(x4)
mean(x5)
mean(x6)

# # A soma dos desvios em torno da média é zero (indica que não serve como medida para
# # avaliar a dispersão dos dados)
# a = c(1,2,3,4,5)
# b = mean(a)
# 
# # Desvios em torno da média
# d1=1-mean(a);d1
# d2=2-mean(a);d2
# d3=3-mean(a);d3
# d4=4-mean(a);d4
# d5=5-mean(a);d5
# 
# # Soma dos desvios
# d1+d2+d3+d4+d5 # ou ainda
# SD = sum(a-b); SD
# 
# # A soma dos quadrados dos desvios em torno da média é um mínimo
# # a função f(a)= sum[(a-b)^2] ou ainda SQD(a) = f(a)
# # f'(a) = 0 e f''(a) > 0
# 
# SQD = d1^2+d2^2+d3^2+d4^2+d5^2; SQD

# Média ponderada, média geométrica e média harmônica
library("psych")  

# Create example data
Notas <- c(7, 8, 6.2, 9, 8)# Ciências Humanas e suas tecnologias.
# Ciências da Natureza e suas tecnologias.
# Linguagens, Códigos e suas tecnologias.
# Matemática e suas tecnologias.
# Redação.

# Create example weights                    
Peso <- c(1.5, 1.5, 2, 3, 2)

# Média ponderada
weighted.mean(Notas, Peso)

library(psych)
# Média geométrica
# prod(x) # produto interno dos elementos
# prod(x)^(1/nx) # média geométrica
geometric.mean(x) #função da média geométrica

# Média harmônica
# nx/sum(1/x) 
harmonic.mean(x) #função da média harmônica


# Mediana e moda
nx;nw

# Mediana
x <- c(25, 10, 33, 15, 26, 40)     # n = 6 (par)
median(x)

w <- c(1, 2, 3, 4, 4, 4, 5, 6, 7)  # n = 9 (impar)
median(w)

#moda
modax <- subset (table (x), table (x) == max (table (x)));modax
modaw <- subset (table (w), table (w) == max (table (w)));modaw

a1 = c(1,2,2,3,4,5)
subset (table (a1), table (a1) == max (table (a1)))

a2 = c(1,2,2,3,3,4,5)
subset (table (a2), table (a2) == max (table (a2)))#1a linha é o valor na amostra, 2a linha a freq

a3 = c(1,2,2,3,3,4,4,5)
subset (table (a3), table (a3) == max (table (a3)))

a4 = c(1,2,2,3,3,4,4,5,5)
subset (table (a4), table (a4) == max (table (a4)))

a5 = c(1,1,2,2,3,3,4,4,5,5)
subset (table (a5), table (a5) == max (table (a5)))


# MEDIDAS DE DISPERSÃO: VARIÂNCIA, DESVIO PADRÃO, COEFICIENTE DE VARIAÇÃO, ERRO PADRÃO DA MÉDIA

# Variância: var = SQDx/(N-1)

# x <- c(10, 15, 25, 26, 33, 40)
# nx <- length(x)
# a <- sum(x^2) # soma dos quadrados
# b <- sum(x)^2 # quadrado da soma
# vari <- (a-(b/nx))/(nx - 1); vari
# 
# #### ou ainda ####
# 
# # calculando os desvios
# 10 - mean(x) ; 15 - mean(x); 25 - mean(x); 26 - mean(x); 33 - mean(x); 40 - mean(x)
# Desvios <- x-mean(x);Desvios
# 
# # Calculando a variância
# # Soma dos quadrados dos desvios / (n-1)
# sum(Desvios^2)/(nx-1)

variancia <- var(x);variancia

# # 1) a variância é sempre maior ou igual a zero
# # 2) Para X = K, sendo K uma constante, a variância é zero
# x7 <- c(4,4,4,4,4,4,4,4,4)
# var(x7)
# 
# # 3) Para Y = X + K, sendo K constante, a variância de X é igual a de Y
# x <- c(10, 15, 25, 26, 33, 40)
# y <- x+2;y
# var(x);var(y)
# 
# # 4) Para Y = kx, sendo K constante, a variância de Y é igual ao produto da constante
# # ao quadrado pela variância de X
# x <- c(10, 15, 25, 26, 33, 40)
# k = 2
# y1 <- x*k;y1
# var(x)
# k^2 * var(x)
# var(y1)

# Desvio padrão: (var)^(1/2)
desviopadrao <- sd(x);desviopadrao

# Coeficiente de variação
cefvarx <- (sd(x)/mean(x))*100
cefvarw <- (sd(w)/mean(w))*100

# Erro padrão da média
sd(x)/sqrt(nx)
sd(x)/(nx)^(1/2)


# ASSIMETRIA E CURTOSE ######  ######

# Curtose e assimetria
# http://wiki.icmc.usp.br/images/5/50/Parte6.pdf
# https://www.stat.purdue.edu/~lfindsen/stat350/Lab3R.pdf
library(moments)
x <- c(10, 15, 25, 26, 33, 40)
kurtosis(x)
skewness(x)

# OS EXEMPLOS DEVEM SER RODADOS NO Rscript, simulam diferentes distribuições
######################## Distribuição normal ##################################
Data <- rnorm(500,mean=572,sd=51)
m <- mean(Data)
std <- sd(Data)

#windows() #abre uma janela separada
hist(Data, xlab="Data from Normal Distribution", freq = FALSE,
     main="Histogram with Normal Curve and Smoothed Curve")
lines(density(Data, adjust=1),col = "red", lwd=2)



########################### Assimetria #####################################
############## Assimetria à direita ou assimétrica positiva (right skewed ou
# positive skewed): média > mediana > moda.
n = 1000
Data <- rexp(n,rate=2)
m <- mean(Data)
std <- sd(Data)

hist(Data, xlab="Data from Normal Distribution", freq = FALSE,
     main="Histogram with Normal Curve and Smoothed Curve")
lines(density(Data, adjust=1),col = "red", lwd=2)

############## Assimetria à esquerda ou assimétrica negativa (left skewed ou
# negative skewed): média < mediana < moda.
Data <- rbeta(n,2,0.5,ncp=2)
m <- mean(Data)
std <- sd(Data)

hist(Data, xlab="Data from Normal Distribution", freq = FALSE,
     main="Histogram with Normal Curve and Smoothed Curve")
lines(density(Data, adjust=1),col = "red", lwd=2)


############################## Curtose ########################################
############## Platicúrtica (platykurtic):caudas curtas ou leves (short ou light 
# ou thin).
Data <- runif(n,min=0,max=2)
m <- mean(Data)
std <- sd(Data)

hist(Data, xlab="Data from Normal Distribution", freq = FALSE,
     main="Histogram with Normal Curve and Smoothed Curve")
lines(density(Data, adjust=1),col = "red", lwd=2)
############## Leptocúrtica (leptokurtic):caudas longas ou pesadas (long ou heavy 
# ou thick ou fat).
Data <- rcauchy(n,location=0,scale=1)
m <- mean(Data)
std <- sd(Data)

hist(Data, xlab="Data from Normal Distribution", freq = FALSE,
     main="Histogram with Normal Curve and Smoothed Curve")
lines(density(Data, adjust=9),col = "red", lwd=2)

############## Mesocúrtica (mesokurtic): caudas neutras (nem curtas e nem longas)
Data <- rnorm(100,mean=5,sd=100)
m <- mean(Data)
std <- sd(Data)

#windows() #abre uma janela separada
hist(Data, xlab="Data from Normal Distribution", freq = FALSE,
     main="Histogram with Normal Curve and Smoothed Curve")
lines(density(Data, adjust=1),col = "red", lwd=2)


##################### Coeficiente percentílico de curtose #####################
#                          REVISÃO DO CONTEÚDO
# K = 0.263 - curva mesocúrtica 
# k < 0.263 - curva leptocúrtica 
# k > 0.263 - curva platicúrtica

Q1 <- quantile(Data,c(0.25)); Q1  # quartil 1
Q3 <- quantile(Data,c(0.75)); Q3  # quartil 3
P90 <- quantile(Data,0.9); P90    # percentil 90
P10 <- quantile(Data,0.1); P10    # percentil 10

a = Q3 - Q1
b = 2*(P90 - P10)
k = a / b; k 

kurtosis(Data) # coeficiente de Kurtose
skewness(Data) # coeficiente de assimetria
mean(Data) #média
median(Data) # mediana
subset (table (Data), table (Data) == max (table (Data))) # moda
var(Data) # variância
sd(Data) # desvio padrão
(sd(Data)/mean(Data))*100 # coeficiente de variação
sd(Data)/sqrt(length(Data)) # erro padrão da média
summary(Data)

# fazendo tudo direto
library(fBasics)
basicStats(Data)

```