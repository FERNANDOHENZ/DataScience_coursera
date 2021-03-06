library(datasets)
data(iris)

# olhando o cabe�alho do dataset
head(iris)

#Pega a m�dia de colunas
s <- split(iris, iris$Species)
lapply(s, function(x) colMeans(x[, c(1:4)]))




# Pergunta 2 Continuando com o conjunto de dados '�ris' da pergunta anterior, 
# que c�digo R retorna um vetor das m�dias das vari�veis 
#??????'S�pala.Comprimento', 
#'S�pala.Largura', 
#P�tala.Comprimento' e 
#'P�tala.Largura'?

apply(iris,2, mean)
apply(iris, 1, mean)
apply(iris[,1:4],1, mean)
apply(iris[,1:4],2, mean) # resposta correta
colMeans(iris)
rowMeans(iris[,1:4])


# Pergunta 3

library(datasets)
data(mtcars)

?mtcars


# Como calcular a m�dia de milhas por gal�o (mpg)
# pelo n�mero de cilindros do carro (cil)? 
# Selecione tudo que se aplica

mean(mtcars$mpg, mtcars$cyl) #incorreto
tapply(mtcars$cyl, mtcars$mpg, mean)# aqui gera o resultado de cada m�dia
split(mtcars, mtcars$cyl) # aqui s� divide o dataset
with(mtcars, tapply(mpg, cyl, mean)) # parece estar correta
tapply(mtcars$mpg, mtcars$cyl, mean) # parce estar correta
apply(mtcars, 2, mean) # apenas da a m�dia das colunas
sapply(mtcars, cyl, mean) # retorna um erro
lapply(mtcars, mean) # retorna a m�dia de cada coluna
sapply(split(mtcars$mpg, mtcars$cyl), mean) # parece estar correta


# Continuando com o conjunto de dados 'mtcars' da pergunta anterior,
# qual � a diferen�a absoluta entre a pot�ncia m�dia dos carros
# de 4 cilindros e a pot�ncia m�dia dos carros de 8 cilindros?

# Preciso saber a m�dia dos carros de 4 cilindro e a m�dia dos carros de 8

x = sapply(split(mtcars$hp, mtcars$cyl), mean)
dif_absoluta = x[1] - x[3]
dif_absoluta


# debugls
debug(ls)
