# Instalar o pacote swirl
#install.packages('swirl')

# Versão do swirl
packageVersion('swirl')

# Carregar o swirl
library('swirl')

# Instale o Curso R Programing
#Existem vários cursos no Swirl
# Nós queremos o R Programming
install_from_swirl('R Programming')

# Comece a rodar e complete as lições

swirl()

# para sair pressione ESC
# se estiver no prompt 
# digite bye() para sair
# skip() para ignorar pergunta
# play() permite que experimente o R por conta própria
# nxt() recupera a atenção do swirll
# main() retorna o menu principal
# info() exibe essas opções novamente
# ... aperte enter para continiar

# help.start() informações sobre um determinado tópico

# getwd: comando para verificar o diretório que nos encontramos
# getwd() 

# List all the objects in your local workspace using ls().
# ls()

# list.files lista todos os arquivos do seu diretório
# dir() faz a mesma coisa que list.files

# args() comando para ver o que essa função pode receber
# exemplo: args(list.files)

# atribui diretorio atual para old.dir()
# old.dir = getwd()

# criar um diretório
# dir.create('nome_do_diretório')

# Movendo para o diretório criado
# setwd('nome_do_diretório')

# Criar um arquivo no seu diretório atual com nome mytest.R
# file.create('mytest.R')

# Para checar os arquivos existentes nesse novo diretório
# digite list.files()
# se for um arquivo novo somente o anteior será listado

# Para verificar se existe o arquivo 'mytest.R' criado
# anteriormente basta executar o comando
# file.exists('mytest.R')

# file.info('mytest.R') vai nos passar a informação do arquivo

# file.rename('mytest.R', 'mytest2.R') vai renomear o arquivo
# de mytest.R para mytest2.R

# file.copy('mytest2.R', 'mytest3.R) vai fazer uma cópia do arquivo
# para o mytest3.R

# file.path('mytest3.R') vai fornecer o caminho do arquivo 

# file.path('folder1', 'folder2') pode criar pastar como
#'folder1/folder2'


#criar um direto´rio e subdiretório em um comando só
# dir.create(file.path('testdir2', 'testdir3'), recursive = TRUE)

# para voltar ao diretório criado anteriormente digital
# setwd(old.dir) este diretório foi criado anteriormente justamente
# para conseguirmos fazer isso


# --------------------Tarefa 3 ------------------------------------
# ------------ SEQUÊNCIA DE NÚMEROS -------------------------------

# Para criar uma seqUência de número basta digitar
# 1:20 - gera numeros de 1 a 20
# pi : 10 - gera número de 3,14... até 9,14... não passa de 10
# 15: 1 - gera lista decrescente de 15 a 1

# ?`:` entre crases gera a documentação colon operator

# seq(1,20) faz a mesma coisa que o operador 1:20

# seq(0, 10, by 0.5) gera uma sequencia até 10 com incrementos de 0.5

# my_seq <- seq(5, 10, length=30) vai criar uma sequencia de 5 a 10
# com comprimento máximo de 30, esta criação não atingira 30

# 1:length(my_seq) vai criar uma sequencia de 1 a 30 comprimento
# criado acima

# seq(along.with = my_seq) faz a mesma coisa, criar uma sequencia 
# de 1 a 30

# seq_along(my_seq) vai imprimir o comprimento da sequência my_seq

# rep(0, times = 40) vai produzir 40 zeros

# rep(c(0,1,2), times = 10) vai replicar o vetor 0,1,2 (10 vezes)

# rep(c(0,1,2), each = 10) vai replicar:
# 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2
# 10 zeros, 10 um, 10 dois


# -------------------- Tarefa 4 ----------------------------------
# -------------------- Vectors -----------------------------------

# Criar um vetor númerico
# c(0.5, 55, -10, 6)

# tf <- num_vect < 1 - o resultado vai ser quatro valores lógicos
# tf
# TRUE FALSE  TRUE FALSE

# num_vect >= 6
# [1] FALSE  TRUE FALSE  TRUE

#(3 > 5) & (4 == 4) 
#FALSE

# (TRUE == TRUE) | (TRUE == FALSE)
# TRUE, o comando | define se algumas das condições for verdadeira
# então a operação inteira é verdadeira

#((111 >= 111) | !(TRUE)) & ((4 + 1) == 5)

# Junção de palavras e frases

# criando veto com palavras
# my_char <- c('My', 'name', 'is')

# > paste(my_char, collapse = " ")
# [1] "My name is"

# adicionando seu nome a lista
# my_name <- c(my_char, 'Fernando')
# [1] "My"       "name"     "is"       "Fernando"

# > paste(my_name, collapse = " ")
# [1] "My name is Fernando"

# > paste("Hello", "world!", sep = " ")
# [1] "Hello world!"

# Fazendo a junção de vetores
# > paste(1:3, c("X", "Y", "Z"), sep = "")
# [1] "1X" "2Y" "3Z"

# paste(LETTERS, 1:4, sep = "-")
#Resultado:
# [1] "A-1" "B-2" "C-3" "D-4" "E-1" "F-2" "G-3" "H-4" "I-1" "J-2" "K-3"
# [12] "L-4" "M-1" "N-2" "O-3" "P-4" "Q-1" "R-2" "S-3" "T-4" "U-1" "V-2"
# [23] "W-3" "X-4" "Y-1" "Z-2"






# -------------- TAREFA 5 ______________________________________
# _____________Missing Values (valores ausentes) _______________

# Vamos criar uma varivael x com valores ausentes
# x <- c(44, NA, 5, NA)

# Multiplique X por 3
# x * 3
# [1] 132  NA  15  NA
# Perceba que valores ausentes são desconsiderados

# Adicionar a variavel y um vetor rnorm(1000)
# y <- rnorm(1000)
# A variavel y possui 1000 valores de distribuição normal, positivo
# e negativo

# Criar um vetor para variavel z com 1000 NA
# z <- rep(NA,1000)

# Vamos adicionar ao mydata 100 valores destes 2000, 1000 do y 
# e 1000 do z, e combinalos aleatoriamente 
# my_data <- sample(c(y,z), 100)

# Localizar os valores ausentes
#is.na(my_data) localiza os valores ausentes em my_daya

# Vamos atribuir os is.na(my_data) a variavale ny_na
# my_na <- is.na(my_data)

# my_data == NA
# [1] NA NA NA NA NA......

#sum(my_na) somo os valore snulos contidos em my_na

# basicamente NA são valores ausentes
# Ja Nan são valores que não existem 0/0 Inf/Inf "Infinito"



# ---------------------- TAREFA 6 ---------------------------
# ---------------sUBSETTING VECTORS -------------------------

# Nesta lição, veremos como extrair elementos de um vetor 
# com base em algumas condições que especificamos.
# Por exemplo, podemos estar interessados apenas nos primeiros
# 20 elementos de um vetor, ou apenas os elementos que não são
# NA, ou apenas aqueles que são positivos ou correspondem a uma
# variável específica de interesse. Ao final desta lição, você 
# saberá como lidar com cada um desses cenários.

# Criei para você um vetor chamado x que contém uma ordem aleatória
# de 20 números (de uma distribuição normal padrão) e 20 NAs. 
# Digite x agora para ver como fica.

# x
# [1]         NA         NA         NA -0.8453900         NA         NA
# [7]         NA -0.5213741         NA  1.0086354         NA  0.6383823
# [13] -0.4651458         NA         NA         NA -0.1210694  0.9310944
# [19] -0.3280570 -0.3034631 -0.6419983 -0.6775012  1.3141183         NA
# [25]         NA  1.3798199         NA  1.3665371         NA -0.4231386
# [31]         NA         NA         NA         NA -1.3564646 -0.7911997
# [37]         NA -0.2435252 -0.2796992 -0.9872303

# x[1:10] - pega os 10 primeiros elementos
# [1]         NA         NA         NA -0.8453900         NA         NA
# [7]         NA -0.5213741         NA  1.0086354

#| Os vetores de índice vêm em quatro sabores diferentes - vetores lógicos,
#| vetores de inteiros positivos, vetores de inteiros negativos e
#| vetores de cadeias de caracteres - cada um dos quais abordaremos neste
#| lição.

#| Vamos começar indexando com vetores lógicos. Um cenário comum
#| ao trabalhar com dados do mundo real é que queremos extrair todos
#| elementos de um vetor que não são NA (ou seja, dados ausentes). Lembre-se
#| que is.na (x) produz um vetor de valores lógicos do mesmo comprimento que
#| x, com TRUEs correspondendo a valores NA em x e FALSEs
#| correspondendo a valores non-NA em x.

# x[is.na(x)] - produz todos os valores NAs de x
# [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

# Lembre-se de que `!` Nos dá a negação de uma expressão lógica,
# então !Is.na(x) pode ser lido como 'não é NA'.
# Portanto, se quisermos criar um vetor chamado y que contenha 
# todos os valores não NA de x, podemos usar y <- x [!is.na(x)].

# y <- x [!is.na(x)] # atribuimos os valores não nulos a y

# y
# [1] -0.8453900 -0.5213741  1.0086354  0.6383823 -0.4651458 -0.1210694
# [7]  0.9310944 -0.3280570 -0.3034631 -0.6419983 -0.6775012  1.3141183
# [13]  1.3798199  1.3665371 -0.4231386 -1.3564646 -0.7911997 -0.2435252
# [19] -0.2796992 -0.9872303

# Agora que isolamos os valores não omissos de x e os colocamos
# em y, podemos subdividir y como quisermos.

# imprime os valores maiores que 0
#  y[y > 0]
# [1] 1.0086354 0.6383823 0.9310944 1.3141183 1.3798199 1.3665371

# Você pode se perguntar por que não começamos simplesmente 
# com x [x> 0] para isolar os elementos positivos de x. 
# Experimente agora para ver por quê.

# x[x>0]
# [1]        NA        NA        NA        NA        NA        NA
# [7]        NA 1.0086354        NA 0.6383823        NA        NA
# [13]        NA 0.9310944 1.3141183        NA        NA 1.3798199
# [19]        NA 1.3665371        NA        NA        NA        NA
# [25]        NA        NA

# Combinando nosso conhecimento de operadores lógicos com nosso 
# novo conhecimento de subconjuntos, poderíamos fazer 
# isso --x[!is.na(x) & x>0]. Experimente.

# x[!is.na(x) & x>0]
# [1] 1.0086354 0.6383823 0.9310944 1.3141183 1.3798199 1.3665371


# Nesse caso, solicitamos apenas valores de x que sejam 
# não ausentes E maiores que zero.

# Já mostrei como subdividir apenas os primeiros dez valores de x
# usando x [1:10]. Nesse caso, estamos fornecendo um vetor de
# inteiros positivos dentro dos colchetes, que informa a R para 
# retornar apenas os elementos de x numerados de 1 a 10.

# Muitas linguagens de programação usam o que é chamado de
# 'indexação baseada em zero', o que significa que o primeiro 
# elemento de um vetor é considerado o elemento 0. R usa 
# 'indexação baseada em um', que (você adivinhou!) Significa 
# o primeiro elemento de um vetor é considerado o elemento 1.

# Você pode descobrir como dividiríamos o terceiro, o quinto
# e o sétimo elementos de x? Dica - Use a função c () para 
# especificar os números dos elementos como um vetor numérico.

# x[c(3,5,7)]
# [1] NA NA NA

# É importante que, ao usar vetores inteiros para criar um 
# subconjunto de nosso vetor | x, ficamos com o conjunto de 
# índices {1, 2, ..., 40} uma vez que x tem apenas 40 elementos.
# O que acontece se pedirmos o elemento zero de x (ou seja, x[0])? 

# x[0]
# numeric(0)

# Como você pode esperar, não recebemos nada de útil. 
# Infelizmente, R não nos impede de fazer isso. E se 
# pedirmos o 3000º elemento de x? Experimente.

# x[3000]
# [1] NA

# Novamente, nada útil, mas R não nos impede de pedir. Este deve
# ser um conto preventivo. Você deve sempre se certificar de que
# o que está pedindo está dentro dos limites do vetor com o qual
# está trabalhando.

# E se estivermos interessados em todos os elementos de x EXCETO
# o segundo e | 10º? Seria muito tedioso construir um vetor 
# contendo todos os números de 1 a 40, EXCETO 2 e 10.

# Felizmente, R aceita índices inteiros negativos. 
# Considerando que x[c(2, 10)] nos dá SOMENTE o 2º e o 10º elementos
# de x, x[c(-2, -10)] nos dá todos os elementos de x EXCETO
# pelo 2º e 10 elementos. Experimente x [c (-2, -10)] agora
# para ver isso.

#  x[c(-2, -10)] 

# Uma forma abreviada de especificar vários números negativos 
# é colocar o sinal negativo na frente do vetor de
# números positivos. Digite x [-c (2, 10)] para obter exatamente
# o mesmo resultado.

# x[-c(2, 10)] # produz o mesmo resultado

# Até agora, cobrimos três tipos de vetores de índice - lógico,
# inteiro positivo e inteiro negativo. O único tipo restante
# requer que introduzamos o conceito de elementos 'nomeados'.

# Crie um vetor numérico com três elementos nomeados usando 
# vect <- c (foo = 11, bar = 2, norf = NA).

# vect
# foo  bar norf 
# 11    2   NA 

# Também podemos obter os nomes de vect passando vect 
# como um argumento para | a função names (). 

# names(vect)
# "foo"  "bar"  "norf"

# Alternativamente, podemos criar um vetor sem nome vect2 
# com c (11, 2, NA). Faça isso agora.

# vect2 <- c(11, 2, NA)

# Então, podemos adicionar o atributo `names` a vect2 após o fato
# com nomes (vect2) <- c ("foo", "bar", "norf"). Continue.

# names(vect2) <- c('foo', 'bar', 'norf')

# Agora, vamos verificar se vect e vect2 são iguais, passando-os
# como argumentos para a função identical().

# identical(vect, vect2)
# [1] TRUE

# Retorna o segundo elemento do vetor 
# vect['bar']
# bar 
# 2 

# Da mesma forma, podemos especificar um vetor de nomes com 
# vect[c('foo', 'bar')]
# foo bar 
# 11   2 




# ----------------------TAREFA 7 ------------------------------
# --------------------- MATRIZ E DATA FRAME ------------------

# Nesta lição, cobriremos matrizes e estruturas de dados.
# Ambos representam tipos de dados 'retangulares', o que significa
# que são usados para armazenar dados tabulares, com linhas e colunas.

# A principal diferença, como você verá, é que as matrizes podem
# conter apenas uma única classe de dados, enquanto os quadros
# de dados podem consistir em muitas classes diferentes de dados.

# Vamos criar um vetor contendo os números de 1 a 20 usando o 
# operador `:`. Armazene o resultado em uma variável chamada 
# my_vector.

# my_vector <- 1:20

# my_vector
# [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

# A função dim () nos diz as 'dimensões' de um objeto. 
# O que acontece se dim(my_vector)? De uma chance.

# dim(my_vector)
# NULL

# Claramente, isso não é muito útil! Visto que meu_vetor é um 
# vetor, ele não tem um atributo `dim` (então é apenas NULL), 
# mas podemos encontrar seu comprimento usando a função length ().

# length(my_vector)
# [1] 20

# Ah! Isso é o que queríamos. Mas, o que acontece se dermos 
# a my_vector um atributo `dim`? Vamos tentar. 
# Digite dim(my_vector) <- c (4, 5).

# dim(my_vector) <- c(4, 5)

# Tudo bem se esse último comando pareceu um pouco estranho para
# você. Deveria! A função dim () permite que você obtenha OU 
# defina o atributo `dim` para um objeto R. Nesse caso, 
# atribuímos o valor c (4, 5) ao atributo `dim` de my_vector.

# Use dim (my_vector) para confirmar que definimos o atributo 
# `dim` corretamente.

# dim(my_vector)
# [1] 4 5

# Outra maneira de ver a mesma coisa
# attributes(my_vector)
# $dim
# [1] 4 5

# Assim como na aula de matemática, ao lidar com um objeto bidimensional
# (pense em uma mesa retangular), o primeiro número é o número de
# linhas e o segundo é o número de colunas. Portanto, acabamos de dar
# ao my_vector 4 linhas e 5 colunas.

# Mas espere! Isso não soa mais como um vetor. Bem, não é. Agora é uma matriz.
# Visualize o conteúdo de my_vector agora para ver como ele se parece.

# my_vector
# [,1] [,2] [,3] [,4] [,5]
# [1,]    1    5    9   13   17
# [2,]    2    6   10   14   18
# [3,]    3    7   11   15   19
# [4,]    4    8   12   16   20

# class(my_vector) 
# [1] "matrix" "array"

# Com certeza, my_vector agora é uma matriz. Devemos armazená-lo em uma nova
# variável que nos ajude a lembrar o que é.
# Armazene o valor de my_vector em uma nova variável chamada my_matrix.

# my_matrix <- my_vector

# O exemplo que usamos até agora foi feito para ilustrar o ponto em que 
# uma matriz é simplesmente um vetor atômico com um atributo de dimensão. 
# Um método mais direto de criar a mesma matriz usa a função matrix ().

# Ajuda sobre a função
# ?matrix

# Agora, olhe a documentação da função de matriz e veja se você consegue 
# descobrir | como criar uma matriz contendo os mesmos números (1-20) e 
# dimensões (4 linhas, 5 colunas) chamando a função matrix (). 
# Armazene o resultado em uma variável chamada my_matrix2.

# my_matrix2 <- matrix(my_vector, nrow = 4, ncol = 5)

# Verficando se criei matrizes identicas
# identical(my_matrix, my_matrix2)
# [1] TRUE

# Agora, imagine que os números em nossa tabela representam algumas medidas
# de um experimento clínico, onde cada linha representa um paciente e cada 
# coluna representa uma variável para a qual as medidas foram feitas.

# Podemos querer rotular as linhas, de modo que saibamos quais números
# pertencem a cada paciente no experimento. Uma maneira de fazer isso é 
# adicionar uma coluna à matriz, que contém os nomes das quatro pessoas.

# Vamos começar criando um vetor de caracteres contendo os nomes de nossos
# pacientes Bill, Gina, Kelly e Sean. Lembre-se de que as aspas duplas 
# informam a R que algo é uma cadeia de caracteres. Armazene o resultado em 
# uma variável chamada patients.

# patients <- c('Bill', 'Gina', 'Kelly', 'Sean')

# Agora vamos usar a função cbind () para 'combinar colunas'. 
# Não se preocupe em armazenar o resultado em uma nova variável. 
# Basta chamar cbind () com dois argumentos - o vetor patients e my_matrix.

# cbind(patients, my_matrix)
# patients                       
# [1,] "Bill"   "1" "5" "9"  "13" "17"
# [2,] "Gina"   "2" "6" "10" "14" "18"
# [3,] "Kelly"  "3" "7" "11" "15" "19"
# [4,] "Sean"   "4" "8" "12" "16" "20"

# Há algo suspeito em nosso resultado! Parece que combinar o vetor de 
# caracteres com nossa matriz de números fez com que tudo ficasse entre aspas 
# duplas. Isso significa que ficamos com uma matriz de cadeias de caracteres,
# o que não é bom.

# Se você se lembra do início desta lição, eu disse que as matrizes só podem 
# conter UMA classe de dados. Portanto, quando tentamos combinar um vetor 
# de caracteres com uma matriz numérica, R foi forçado a 'coagir' os números 
# a caracteres, daí as aspas duplas.

# Isso é chamado de 'coerção implícita', porque não pedimos por ela.
# Simplesmente aconteceu. Mas por que R simplesmente não converteu os nomes de
# nossos pacientes em números? Vou deixar você refletir sobre
# essa questão por conta própria.

# Portanto, ainda ficamos com a questão de como incluir os nomes de nossos 
# pacientes na tabela sem destruir a integridade de nossos dados numéricos.
# Tente o seguinte - my_data <- data.frame (patients, my_matrix)

# my_data <- data.frame (patients, my_matrix)

# my_data
# patients X1 X2 X3 X4 X5
# 1     Bill  1  5  9 13 17
# 2     Gina  2  6 10 14 18
# 3    Kelly  3  7 11 15 19
# 4     Sean  4  8 12 16 20

# Parece que a função data.frame () nos permitiu armazenar nosso vetor de 
# caracteres de nomes ao lado de nossa matriz de números.
# Isso é exatamente o que esperávamos!


# Nos bastidores, a função data.frame () recebe qualquer número de argumentos
# e retorna um único objeto da classe `data.frame` que é composto dos objetos
# originais.

# Vamos confirmar isso chamando a função class () em nosso quadro de dados
# recém-criado.

# class(my_data)
# [1] "data.frame"

# Também é possível atribuir nomes às linhas e colunas individuais de 
# um quadro de dados, o que apresenta outra forma possível de determinar qual 
# linha de valores em nossa tabela pertence a cada paciente.

# No entanto, como já resolvemos esse problema, vamos resolver um problema 
# diferente atribuindo nomes às colunas de nosso quadro de dados para que 
# saibamos que tipo de medição cada coluna representa.

# Since we have six columns (including patient names), we'll need to first
# create a vector containing one element for each column. Create a character 
# vector called cnames that contains the following values (in order) -- 
# "patient", "age", "weight", "bp", "rating", "test".

# cnames <- c("patient", "age", "weight", "bp", "rating", "test")

# Agora, use a função colnames () para definir o atributo `colnames` para
# nosso quadro de dados. Isso é semelhante à maneira como usamos a função 
# dim () anteriormente nesta lição.


# colnames(my_data) <- cnames
# my_data
# patient age weight bp rating test
# 1    Bill   1      5  9     13   17
# 2    Gina   2      6 10     14   18
# 3   Kelly   3      7 11     15   19
# 4    Sean   4      8 12     16   20
