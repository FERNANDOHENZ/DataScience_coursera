library(datasets)
data(iris)

# olhando o cabeçalho do dataset
head(iris)

#Pega a média de colunas
s <- split(iris, iris$Species)
lapply(s, function(x) colMeans(x[, c(1:4)]))




# Pergunta 2 Continuando com o conjunto de dados 'íris' da pergunta anterior, 
# que código R retorna um vetor das médias das variáveis 
#??????'Sépala.Comprimento', 
#'Sépala.Largura', 
#Pétala.Comprimento' e 
#'Pétala.Largura'?

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


# Como calcular a média de milhas por galão (mpg)
# pelo número de cilindros do carro (cil)? 
# Selecione tudo que se aplica

mean(mtcars$mpg, mtcars$cyl) #incorreto
tapply(mtcars$cyl, mtcars$mpg, mean)# aqui gera o resultado de cada média
split(mtcars, mtcars$cyl) # aqui só divide o dataset
with(mtcars, tapply(mpg, cyl, mean)) # parece estar correta
tapply(mtcars$mpg, mtcars$cyl, mean) # parce estar correta
apply(mtcars, 2, mean) # apenas da a média das colunas
sapply(mtcars, cyl, mean) # retorna um erro
lapply(mtcars, mean) # retorna a média de cada coluna
sapply(split(mtcars$mpg, mtcars$cyl), mean) # parece estar correta


# Continuando com o conjunto de dados 'mtcars' da pergunta anterior,
# qual é a diferença absoluta entre a potência média dos carros
# de 4 cilindros e a potência média dos carros de 8 cilindros?

# Preciso saber a média dos carros de 4 cilindro e a média dos carros de 8

x = sapply(split(mtcars$hp, mtcars$cyl), mean)
dif_absoluta = x[1] - x[3]
dif_absoluta


# debugls
debug(ls)
