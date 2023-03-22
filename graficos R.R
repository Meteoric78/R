---
  title: "Graficos"
author: "Danilo"
date: "2023-01-06"
output:
  pdf_document: default
html_document: default
---
  
```{r}
library(openxlsx)

```

```{r}
setwd("~/Danilo/IF GOIANO/Estatística Básica - Graduação - Disciplina completa")

data <- read.xlsx("professores e alunos matriculados em escolas de Niteroi em 2009.xlsx")
```


GRÁFICO DE BARRAS
```{r}
attach(data)

barplot(data$Professores, names.arg=data$Escola)

# adicionando título
barplot(data$Professores, names.arg=data$Escola, main="Distribuição de professores do ensino fundamental em Niterói, 2009")

# mudar o tamanho da fonte do título
attach(data) # agora basta usar somente nome das variáveis
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9)

barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=1.5)
# mudar o tamanho dos números do eixo y
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9)

# Colocando nome nos eixos x e y
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        ylab="matrículas",xlab="escolas")

# mudar o tamanho da fonte dos nomes dos eixos
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        ylab="matrículas",xlab="escolas",
        cex.lab=0.9)

# incluir subtítulo no gráfico 
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        ylab="matrículas",xlab="escolas",
        cex.lab=0.9,
        sub="fonte:www.ibge.com.br")

# retirar os eixos do gráfico, mas no nosso caso isso não é interessante
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        axes=FALSE, ####
        cex.lab=0.9,
        sub="fonte:www.ibge.com.br")

# preencher as barras com linhas de sombreamento ou com cor uniforme
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        ylab="matrículas",xlab="escolas",
        cex.lab=0.9,
        sub="fonte:www.ibge.com.br",
        density=10) # testar outros valores

# para escolher qual a angulação destas linhas de sombreamento utilizamos o 
# angle=valor, este valor varia de 0 a 360 no sentido anti horário.
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        ylab="matrículas",xlab="escolas",
        cex.lab=0.9,
        sub="fonte:www.ibge.com.br",
        density=30,
        angle=90)

# preencher as barras com cores uniformes 
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        ylab="matrículas",xlab="escolas",
        cex.lab=0.9,
        sub="fonte:www.ibge.com.br",
        angle=90,
        col=c("blue","red","green","orange")) # retira o parâmetro density


barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        ylab="matrículas",xlab="escolas",
        cex.lab=0.9,
        sub="fonte:www.ibge.com.br",
        angle=90,
        col=c(1,2,3,4))

# excluir a linha das bordas das barras
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        ylab="matrículas",xlab="escolas",
        cex.lab=0.9,
        sub="fonte:www.ibge.com.br",
        angle=90,
        col=c(1,2,3,4), border=NA)



# para adicionar linha de sombreamento, a cor da borda será de acordo com a 
# linha de sombreamento
barplot(Professores,names.arg=Escola, 
        main="Distribuição de professores do ensino fundamental em Niterói, 2009",
        cex.main=0.9, 
        cex.axis=0.9,
        ylab="matrículas",xlab="escolas",
        cex.lab=0.9,
        sub="fonte:www.ibge.com.br",
        angle=90,
        col=c(1,2,3,4), density=50,border=TRUE)

# escrevendo os dados como matriz e nomeando as linhas
alunosprof<- matrix(c(1751,1186,947,29,25280,21328,18432,280), nrow=4, ncol=2,
                    dimnames=list(c("privada", "estadual", "municipal", "federal"), c("professores", "alunos")))

# colocar todas as categorias uma em cima da outra,acumulando os resultados.
barplot(alunosprof)

barplot(alunosprof, beside=TRUE)

barplot(alunosprof[,2:1],beside=TRUE,
        legend.text=rownames(alunosprof),
        main="Distribuição de matrícula de alunos e professores do ensino fundamental 
        em Niterói, 2009",
        ylab="n. dematrículas",
        xlab="matrícula",
        sub="fonte:www.ibge.com.br")



```


GRÁFICO DE SETORES
```{r}

frota<-c(151882, 19627, 8058,1895, 3201, 1969,1268)
names(frota) <- c("automóveis","motocicletas","caminhonetes","motonetas",
                  "ônibus","caminhões", "outros")
quadro <- as.data.frame(frota)# visualizando os dados em tabela

pie(frota)
title("Frota 2009 - Niterói_RJ")

# População com mais de 80 mil habitantes urbanos
cidadesPopulosas <- subset(x = USArrests, subset = UrbanPop > 80)

# Visualiza os dados
cidadesPopulosas

# Cria gráfico de pizza sobre os assassinatos
pie(cidadesPopulosas$Murder)


# Indicar o que é cada setor do gráfico
# Legenda das cidades comde assassinatos
legendasAssassinatos <- paste(row.names(cidadesPopulosas), cidadesPopulosas$Murder)

# Visualiza os dados
legendasAssassinatos

# Taxa de assassinatos
pie(x = cidadesPopulosas$Murder,   # Dados do Gráfico
    labels = legendasAssassinatos, # Legendas
    main = "Assassinatos")         # Título do gráfico

# gráfico 3D
library(RColorBrewer)
par(bg="#fdf6e3") 
#display.brewer.all()
COR<-brewer.pal(4,"Dark2")
#COR

library(plotrix)
pieval<-c(0.1,0.15,0.25,0.5)

pielabels<- c("A gente odeia\n Pizza","Fazemos oposição\n às Pizzas","Não me importo\n com Pizza","Eu AMO pizza")

pielabels2=paste(pielabels,"\n",pieval,sep="")

pie3D(pieval,
      radius=0.95,
      labels=pielabels2,
      explode=0.1,# o quanto que pode ultrapassar em 100%
      main="Opinião sobre a Pizza em 3D",
      col=COR,
      labelcex = 0.7) #verificar help pie3D, aprender novos parâmetros


```


Histograma
```{r}
# obtenção dos dados já disponíveis no R
data(mtcars)
View(mtcars) #visualizando os dados

# Vamos explorar os dados da variável mpg (primeira coluna) que são os dados do
# consumo de milhas por galão de diversos tipos de carros.

attach(mtcars) # os objetos no banco de dados podem ser acessados simplesmente fornecendo seus nomes.
hist(mpg)

# Podemos colocar nosso gráfico em freqüência relativa:
hist(mpg,freq=FALSE)

# Colocar linhas de sombreamento:
hist(mpg,density=30)

# Podemos mudar a angulação dessa linha:
hist(mpg,density=10,angle=80)

# Para colocar barras com cores:
hist(mpg,col=c("blue","red","orange","green","pink"))

# Podemos alterar as cores das bordas:
hist(mpg,border=c("blue","red","orange","green","pink"))

# Ou retirar as bordas:
hist(mpg,col=c("blue","red","orange","green","pink"),border=FALSE)

# O histograma, já vem com um titulo e nomes nos eixos, mas nós também podemos
# modificá-los:
hist(mpg,main="Histograma de milhas por galão",xlab="MPG",ylab="frequencia")

# Podemos definir a quantidade de classes do gráfico:
hist(mpg,breaks=3)

# E também fazer o ramo de folhas:
stem(mpg)


```


BOXPLOT
```{r}
# Vamos usar os dados do próprio R, sobre uma amostra de 48 pedras de uma reserva de
# petróleo, onde temos a área, perímetro, formato e permeabilidade. Para exemplificarmos,
# usaremos a variável formato (shape) que é dada pelo perímetro dividido pela raiz quadrada da
# área da pedra.

data(rock)

View(rock)

attach(rock)

# O comando pra fazer um gráfico boxplot é o seguinte:
boxplot(shape)

# Adicionando título ao gráfico
boxplot(shape, 
        main="BoxPlot do formato da pedra")

# Nomeando o eixo y
boxplot(shape, 
        main="BoxPlot do formato da pedra", 
        ylab="perimetro/sqrt(area)")

# Se quisermos que o outlier não apareça no gráfico, utilizamos o seguinte comando:
boxplot(shape,outline=FALSE)

# Podemos fazer o boxplot para vários grupos de observação, facilitando a comparação
# entre os grupos. Vamos utilizar os dados de data(PlantGrowth)

# Estes dados são resultados de um experimento para comparar rendimentos (medido
# pelo peso seco de plantas) obtidos em um controle e duas condições de tratamento diferentes.

data(PlantGrowth)

attach(PlantGrowth)

boxplot(weight~group, 
        main = "Boxplot para rendimento de plantas segundo o tratamento", 
        xlab = "tratamento", 
        ylab = "peso")


# Aprimoramentos:
#   
# Se varwidth=TRUE, as caixas são desenhadas com larguras proporcionais à raiz
# quadrada do número de observações. Este caso se aplica a grupos de tamanhos diferentes.

x1<-c(2,3,4,4,5,6,8,9,7,7,7,7,6)

x2<-c(1,1,1,1,2,3,4,3,2,3,4,5,6,3,4,3,2,2,2,3,4,5,6,3,2,1,1,1,2,3,4)

boxplot(x1,x2,varwidth=TRUE)

# Se desejamos nomear os grupos, utilizamos o argumento names:
boxplot(x1,x2,names=c("grupo1","grupo2"))

# Para modificar a largura da caixa para mais estreita utilizando o argumento boxwex
boxplot(x1,x2,boxwex=0.3)

# Para ajeitar o tamanho das linhas limites
boxplot(x1,x2,staplewex=0.2)

# Para colocar cor nas bordas:
boxplot(shape,border="red")

# Para preencher a cor de dentro da caixa:
boxplot(shape,col="blue")

# Podemos colocar o gráfico no sentido horizontal:
boxplot(shape,
        horizontal=TRUE,
        main="BoxPlot do formato da pedra",
        xlab="valor")

```


GRÁFICO DE DISPERSÃO
```{r}
# Os dados que iremos analisar são medidas da circunferência em mm do tronco de pés
# de laranjeiras e sua respectiva idade em dias. Com esses dados, criaremos o gráfico de
# dispersão para observar se há relação entre o tamanho da circunferência com a idade da
# árvore.

data(Orange)

View(Orange)

attach(Orange)

# Vamos considerar os 7 primeiros valores que correspondem a uma única árvore:
plot(age[1:7],
     xlab="idade em dias",
     ylab="circunferência em mm",
     main="Dispersão entre idade e circunferência")

# É interessante colocarmos a reta de regressão linear no mesmo gráfico. Para isso
# fazemos:
plot(age[1:7],
     circumference[1:7],
     xlab="idade em dias",
     ylab="circunferência em mm",
     main="Dispersão entre idade e circunferência do tronco de pés de laranjeiras")
abline(lm(circumference[1:7]~ age[1:7]))

# altera a cor da reta de regressão
plot(age[1:7],
     circumference[1:7],
     xlab="idade em dias",
     ylab="circunferência em mm",
     main="Dispersão entre idade e circunferência do tronco de pés de laranjeiras")
abline(lm(circumference[1:7]~ age[1:7]),col=5)

# acrescenta o texto entre aspas na posição x=450 e y=100.
plot(age[1:7],
     circumference[1:7],
     xlab="idade em dias",
     ylab="circunferência em mm",
     main="Dispersão entre idade e circunferência do tronco de pés de laranjeiras")
abline(lm(circumference[1:7]~ age[1:7]),col=5)
text(450,100,"reta de regressão") 

# A largura da linha que contorna os pontos do gráfico pode ser mudada com o argumento
# lwd
plot(age[1:7],circumference[1:7],lwd=4) #Teste vários números para ver a diferença.

# Podemos mudar as bolas por outros símbolos. Para cada número temos uma forma
# diferente:
plot(age[1:7],circumference[1:7],pch=20) #Teste vários números para ver a diferença.

# Podemos colocar vários símbolos num mesmo gráfico:
plot(age[1:7],circumference[1:7],pch=1:7)

# Podemos criar alguns símbolos, por exemplo:
plot(age[1:7],circumference[1:7],pch="@")
plot(age[1:7],circumference[1:7],pch="&")

# Colocando cores:
plot(age[1:7],circumference[1:7],lwd=4,col="orange")

# Colocando subtítulo:
plot(age[1:7],circumference[1:7], sub="Desde 1968")

#E criar um texto também na posição escolhida (400,80)
plot(age[1:7],circumference[1:7], sub="Desde 1968")
text(400,80,"Isso aqui pode ser escrito aqui")

# Lembrando que para colocar
# título principal : main = “texto”
# título nos eixos: xlab=”texto” ou ylab=”texto”
# subtítulo: sub=”texto”
# Podemos ainda mudar os limites dos eixos:
plot(age[1:7],circumference[1:7], xlim=range(100:1600),ylim=range(20:180))

#Ainda podemos colocar mais de um gráfico numa mesma janela:
par(mfrow=c(2,3)) #assim podemos fazer 6 gráficos em 2 linhas e 3 colunas.
plot(age[Tree==1],circumference[Tree==1],xlab="idade",ylab="circumferência", sub="árvore1")
plot(age[Tree==2],circumference[Tree==2],xlab="idade",ylab="circumferência", sub="árvore2")
plot(age[Tree==3],circumference[Tree==3],xlab="idade",ylab="circumferência", sub="árvore3")
plot(age[Tree==4],circumference[Tree==4],xlab="idade",ylab="circumferência", sub="árvore4")
plot(age[Tree==5],circumference[Tree==5],xlab="idade",ylab="circumferência", sub="árvore5")
plot(age,circumference,xlab="idade",ylab="circumferência", sub="árvores")
```



GRÁFICO DE LINHAS
```{r}
# Considere os dados da tabela 2.3, correspondentes à temperatura média obtida em
# Ithaca (NY)

mes<-1:12
temperatura<-c(-5.44,-5.17,0.11,6.89,12.67,17.94,20.44,19.5,15.67,9.72,4.06,-2.56)
quadro <- data.frame(mes, temperatura)
plot(mes,temperatura,type='l')

# ou se quiser marcar os pontos substitua o comando acima por:
plot(mes,temperatura,type='b')
title("Gráfico da temperatura ao longo dos meses")

# Podemos utilizar comandos já vistos anteriormente para adicionar título ao eixos, mudar
# tamanho da fonte, mudar cor, símbolos, adicionar subtítulo, mudar os limites dos eixos, etc.
# main=”texto” adiciona título ao gráfico
# xlab ou ylab = “texto” adiciona título ao eixo x ou y
# cex = número altera o tamanho da fonte
# type = "p" para pontos,
# "l" para linhas,
# "b" para pontos e linhas,
# "c" para linhas descontínuas nos pontos,
# "o" para pontos sobre as linhas,
# "n" para nenhum gráfico, apenas a janela.
# col = “nome” ou número da cor
# pch = número (0 a 25)
# lwd= número (controla a espessura da linha)


# Podemos ainda grafar duas ou mais séries no mesmo gráfico
ano<-2001:2009
tri1<-c(72.8,66.2,69.2,65.9,62.4,67.8,61.3,68.5,70.4)
tri2<-c(60.6,53.7,55.3,56.7,56.4,57.8,57.5,59.8,63.3)
plot(ano,
     tri1,type="l",
     main="Taxa de ocupação por trimestre dos hotéis - Município do Rio de Janeiro",
     xlab="ano",ylab="Taxa de ocupação %",
     col="blue",
     ylim=c(50,80))
lines(ano, tri2,col="red")

# É sempre possível mudar o tipo de linha usando o argumento type=:
plot(ano,
     tri1,type="b",
     main="Taxa de ocupação por trimestre dos hotéis - Município do Rio de Janeiro",
     xlab="ano",ylab="Taxa de ocupação %",
     col="blue",
     ylim=c(50,80))
lines(ano, tri2,col="red", type="b")
legend(2007,80,c("1o.trim","2o.trim"),col =c("blue","red"), pch=rep(20,2))



```



GRÁFICO DA DISTRIBUIÇÃO NORMAL
```{r}
# Geração de números aleatórios

rnorm(50,mean=2,sd=sqrt(3)) # amostra de 50 números extraídos de uma distribuição normal
#com média = 2, variância = 3.

rnorm(20) # amostra de tamanho 20 da distribuição normal padrão, média = 0 e variância =1.

# Histograma da freqüência relativa de uma amostra de 500 números extraídos de uma
# distribuição normal com média = 2, variância = 4.

hist(rnorm(500,mean=2,sd=sqrt(4)),freq=FALSE)

# Podemos traçar no mesmo gráfico a curva da função de densidade da distribuição
# normal com média 2 e variância 4.

# Observe que col=2 fará o traçado vermelho, lty=2 fará linha tracejada e lwd=2 se refere
# a espessura da linha e add=TRUE sobrepõe a curva ao gráfico anterior.
hist(rnorm(500,mean=2,sd=sqrt(4)),freq=FALSE)
curve(dnorm(x,mean=2,sd=sqrt(4)),col=2,lty=2,lwd=2,add=TRUE)

# Vamos ilustrar graficamente o que acontece com os parâmetros da função de densidade
# normal.

# Fixando a variância e variando a média):
curve(dnorm(x,mean=1,sd=sqrt(2)),lwd=2,from=-6,to=17)
curve(dnorm(x,mean=10,sd=sqrt(2)),col=2,lwd=2,add=T)

# Adicionando legenda e título ao gráfico:
curve(dnorm(x,mean=1,sd=sqrt(2)),lwd=2,from=-6,to=17)
curve(dnorm(x,mean=10,sd=sqrt(2)),col=2,lwd=2,add=T)
legend('topright',legend=c(expression(mu==1),expression(mu==10)),text.col=c(1,2),cex=1.5)
title("Comparando a distribuição normal com médias diferentes")

# Fixando a média e variando a variância:
curve(dnorm(x,mean=4,sd=sqrt(3)),lwd=2,from=-15,to=25)
curve(dnorm(x,mean=4,sd=sqrt(20)),col=2,lwd=2,add=T)
legend('topright',
       legend=c(expression(sigma^2==3),
                expression(sigma^2==20)),
       text.col=c(1,2),
       cex=1.5)
title("Comparando a distribuição normal com variâncias diferentes")
