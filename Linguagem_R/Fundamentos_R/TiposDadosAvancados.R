

### Paulo.Robertosil88@gmail.com
### LinkedIn: https://www.linkedin.com/in/paulo-roberto-da-silva-7aa45835/

# Tipos Avançados de Dados em R



# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Sua_pasta_aqui/")
getwd()

###### Vetor: possui 1 dimensão e 1 tipo de dado

vetor1 <- c(1:20) #cria um vetor de 20 posições e atribui a variável "vetor1"
vetor1
length(vetor1) #Verifica o tamanho do vetor

mode(vetor1)  #verificando o tipo do vetor
class(vetor1) #verificando o tipo do vetor
typeof(vetor1)#verificando o tipo do vetor


###### Matriz: possui 2 dimensões e 1 tipo de dado 

matriz1 <- matrix(1:20, nrow = 2) #cria uma matrix de 20 elementos divididos em 2 linhas
matriz1
length(matriz1) #verifica o tamanho da matrix
mode(matriz1)
class(matriz1)
typeof(matriz1)


###### Array: possui 2 ou mais dimensões e 1 tipo de dado 

array1 <- array(1:5, dim = c(3,3,3))
array1
length(array1)
mode(array1)
class(array1)
typeof(array1)


###### Data Frames: dados de diferentes tipos
# A maneira mais fácil de explicar data frames: é uma matriz com diferentes tipos de dados
# Aqui vou utilizar um conjunto de dados chamado "iris", no qual já vem instalado com o RStudio.

?iris #Para vermos as Especificações do conjunto de dados, o "?"siginifica um chamada ao HELP.
View(iris) # A Função View, permite vermos os dados em formato de tabela.
length(iris)
mode(iris)
class(iris)
typeof(iris)


###### Listas: coleção de diferentes objetos
# Diferentes tipos de dados são possíveis e comuns

lista1 <- list(a = matriz1, b = vetor1)
lista1
length(lista1)
mode(lista1)
class(lista1)
typeof(lista1)


# Funções também são vistas como objetos em R

func1 <- function(x) {
  var1 <- x * x
  return(var1)
}

func1(5)
class(func1)


# Removendo objetos
objects()
rm(array1, func1)
objects()




