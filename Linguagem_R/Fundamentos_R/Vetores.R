

### Paulo.Robertosil88@gmail.com
### LinkedIn: https://www.linkedin.com/in/paulo-roberto-da-silva-7aa45835/



# Vetores, Operações com Vetores e Vetores Nomeados


# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Seu_diretorio_de_trabalho/")
getwd()


#vetores podem assumir qualquer tipos de valores: Strings, floats, complexos, lógicos e inteiros.
vetor_caracter = c("vetor", "de", "caracteres") 
vetor_caracter

vetor_numerico = c(1.81, 88.3, 25.6) 
vetor_numerico

vetor_complexo = c(5.2+3i, 3.8+4i)
vetor_complexo

vetor_logico = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
vetor_logico

vetor_integer  = c(2, 4, 6)
vetor_integer


# Utilizando seq()
?seq
vetor1 = seq(1:10) #É praticamente a mesma coisa que usar c(1:10)
vetor1
class(vetor1)
mode(vetor1)
typeof(vetor1)

is.vector(vetor1) #Perguntamos ao interpretador se trata de um vetor a resposta tem que ser TRUE


# Utilizando rep()

vetor2 = rep(1:4) # cria um vetor com 4 posições
vetor2
vetor3 = rep(1:4, 2) # cria um vetor de que repete as 2x os numeros de 1 a 4, ou seja 8 posições.
vetor3
vetor4 = rep(1:4, each = 2) # cria um vetor que duplica cada elemento de 1 a 4
vetor4

?rep # para mais funções utilize o HELP.


# Indexação de vetores
a <- c(1,2,3,4,5)
a
a[1] #Acessando a posição 1 do vetor, lembrando que a contagem em R começa em 1.
a[6] # Não é póssivel acessar um valor que não existe.



# Combinando vetores
v1 = c(2, 3, 5) 
v2 = c("aa", "bb", "cc", "dd", "ee") 
c(v1, v2) 


# Operações com Vetores
x = c(1, 3, 5, 7) 
y = c(2, 4, 6, 8)

x * 5
x + y
x - y
x * y
x / y


# Somando vetores com números diferentes de elementos
alfa = c(10, 20, 30) 
beta = c(1, 2, 3, 4, 5, 6, 7, 8, 9) 
alfa + beta 


# Vetor Nomeado
v = c("Nelson", "Mandela") 
v
names(v) = c("Nome", "Sobrenome") 
v
v["Nome"] 


#Bibliografia www.DataScieceAcademy.com.br
#Curso de Linguagem R e Machine Learning com Microsoft Azure.