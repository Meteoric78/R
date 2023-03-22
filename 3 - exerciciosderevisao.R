library(tidyverse)
library(gridExtra)
library(ggplot2)
library(tibble)

#indicar qual a pasta  o arquivo está salvo


# 1) salvar o arquivo csv sobre qualidade do ar com o nome "data"
data <- read.csv("cities_air_quality_water_pollution.18-10-2021.csv") #lê o arquivo csv e o salva em (data)

# 3) verificar o tipos de objetos no arquivo
str(data)

class(data$City) #tipo de dados da coluna City, chr
class(data$Region) #tipo de dados da coluna Region, chr
class(data$Country) #tipo de dados da coluna Country, chr
class(data$AirQuality) #tipo de dados da coluna AirQuality, num
class(data$WaterPollution) #tipo de dados da coluna WaterPollution, num

# 4) verificar valores faltantes (Check missing values)



 for (column in colnames(data)){
   print(paste('Na coluna', column, 'de nosso conjunto de dados, há', sum(is.na(data$column)), 'NAs (Not Available / Não Disponível)'))
   if (sum(is.na(data$column)) != 0) {
     print('Há alguns NAs aqui, então por favor dê uma olhada!')
   } else {
   }
 }

#itera pelos elementos de cada coluna, e diz quanto NAs tem


# 5) calcular estatística descritivas para as colunas AirQuality e WatterPollution

# média,
mean(data$AirQuality) #média da coluna AirQuality = 62.25%
mean(data$WaterPollution) #média da coluna WaterPollution = 44.63%

# mediana, 
median(data$AirQuality) #mediana da coluna AirQuality = 69.44%
median(data$WaterPollution) #mediana da coluna WaterPollution = 50%

# variância,
var(data$AirQuality) #variância da coluna AirQuality = 957.5778
var(data$WaterPollution) #variância da coluna WaterPollution = 658.6363

# desvio padrão,
sd(data$AirQuality) #desvio padrão da coluna AirQuality = 30.94475
sd(data$WaterPollution) #desvio padrão da coluna WaterPollution = 25.66391

# coeficiente de variação,
(sd(data$AirQuality)/mean(data$AirQuality))*100 #49.70769
(sd(data$WaterPollution)/mean(data$WaterPollution))*100 #57.4968

# erro padrão das média,
sd(data$AirQuality)/sqrt(length(data$AirQuality)) #0.4915583
sd(data$WaterPollution)/sqrt(length(data$WaterPollution)) #0.4076719

# amplitude total, 
max(data$AirQuality) - min(data$AirQuality) #100
max(data$WaterPollution) - min(data$WaterPollution) #100

# mínimo, 
min(data$AirQuality) #0
min(data$WaterPollution) #0

# máximo, 
max(data$AirQuality) #100
max(data$WaterPollution) #100

# 1º quartil, 
quantile(data$AirQuality, 0.25) #25%
quantile(data$WaterPollution, 0.25) #25%

# 2º quartil,
quantile(data$AirQuality, 0.5) #69.44%
quantile(data$WaterPollution, 0.5) #50%

# 3º quartil,
quantile(data$AirQuality, 0.75) #87.5%
quantile(data$WaterPollution, 0.75) #57.71%

# 5° decil, 
quantile(data$AirQuality, 0.5) #69.44%
quantile(data$WaterPollution, 0.5) #50%

# 50 percentil,
quantile(data$AirQuality, 0.5) #69.44%
quantile(data$WaterPollution, 0.5) #50%


# coeficiente de assimetria (classificar quanto assimetria),

library(moments)
skewness(data$AirQuality) #-0.5204257 Assimetria negativa 

skewness(data$WaterPollution) #0.03702563 Assimetria positiva 

# coeficiente de curtose (classificar quanto a curtose)
library(moments)
kurtosis(data$AirQuality) #-0.8437922
kurtosis(data$WaterPollution) #-0.3200254

# 6) plotar o histograma e box plot para as colunas AirQuality e WatterPollution
# adicionar título, nome nos eixos x e y.
hist(data$AirQuality, main="Histograma de Qualidade de Ar", xlab="Qualidade do ar", ylab="Frequência")
hist(data$WaterPollution, main="Histograma de Poluição de Água", xlab="Poluição da Água", ylab="Frequência")

boxplot(data$AirQuality, main="Boxplot de Qualidade de Ar", xlab="Qualidade do ar", ylab="Frequência")
boxplot(data$WaterPollution, main="Boxplot de Poluição de Água", xlab="Poluição da Água", ylab="Frequência")
