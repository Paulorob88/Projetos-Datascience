


### Paulo.Robertosil88@gmail.com
### LinkedIn: https://www.linkedin.com/in/paulo-roberto-da-silva-7aa45835/



# Matrizes, Operações com Matrizes e Matrizes Nomeados 


# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Seu_diretorio_aqui/")
getwd()

# Criando Matrizes

matrix (c(1,2,3,4,5,6), nr = 2) # Número de Linhas = 2

matrix (c( 1,2,3,4,5,6), nc = 2) # Número de Colunas = 2



matrix (c(1,2,3,4,5), nc = 2) # Matrizes precisam ter um número de elementos que seja múltiplo do número de linhas


# Criando matrizes a partir de vetores e preenchendo a partir das linhas
meus_dados = c(1:10) #Cria vetor de 10 posições

matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T) #criando a matrix
#Data = Dados a serem utilizados
#nrow = numero de linhas
#ncol = numero de colunas
#byrow = preencher os numeros em sequencia crescente por linha

matrix(data = meus_dados, nrow = 5, ncol = 2) #neste exemplo o preenchimento é feito por coluna.


# Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nr = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]


# Criando uma matriz diagonal
matriz = 1:3
diag(matriz)


# Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)


# Transposta da matriz
W <- matrix (c(2,4,8,12 ), nr = 2, ncol = 2) #cria a matrix
W
t(W) # A função t() tem o significado de Transposta.
U <- t(W)
U


# Obtendo uma matriz inversa
solve(W)


# Multiplicação de Matrizes
mat1 <- matrix(c(2,3,4,5), nr = 2)
mat1
mat2 <- matrix(c(6,7,8,9), nr = 2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2


# Multiplicando Matriz com Vetor
x = c(1:4)
x
y <- matrix(c(2,3,4,5), nr = 2)
y
x * y 


# Nomeando a Matriz
#este é um tópico importante pois futuramente será muito utilizado no tratamento de dados
mat3 <- matrix(c('Terra', 'Marte', 'Saturno', 'Netuno'), nr = 2)
mat3
dimnames(mat3) = (list( c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3


# Identificando linhas e colunas no momento de criação da Matriz
matrix (c(1,2,3,4), nr = 2, nc = 2, dimnames = list(c("Linha 1", "Linha 2" ), c( "Coluna 1", " Coluna 2") ))


# Combinando Matrizes
mat4 <- matrix(c(2,3,4,5), nr = 2)
mat4
mat5 <- matrix(c(6,7,8,9), nr = 2)
mat5
cbind(mat4, mat5) #junta em Linha, ou seja, uma ao lado da outra
rbind(mat4, mat5) #junta em couna, uma abaixo da outra.


# Desconstruindo a Matriz
c(mat4)


#Bibliografia www.DataScieceAcademy.com.br
#Curso de Big Data Analytics com R e Microsoft Azure Machine Learning
