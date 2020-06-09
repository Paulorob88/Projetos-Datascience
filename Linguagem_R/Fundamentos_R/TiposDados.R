



### Paulo.Robertosil88@gmail.com
### LinkedIn: https://www.linkedin.com/in/paulo-roberto-da-silva-7aa45835/


# Tipos Básicos de Dados em R

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Exemplo/seu_diretorio_aqui")
getwd()

############################## Numeric - Todos os números criados em R são do modo numeric
# São armazenados como números decimais (double)

var1 <- 7 #define a variável e atribui o valor numérico 7
var1

class(var1) #Mostra qual é a classe da variável
mode(var1) #modo da classe, neste caso trata-se de uma numeric.

typeof(var1) #Mostra qual é o tipo da váriavel 

############################# Integer 

is.integer(var1) #verifica se a variável é do tipo Inteiro (a resposta é FALSE)
x = as.integer(var1) #Converter o tipo númerico para Inteiro
x
class(x)
mode(x)
typeof(x)


############################# Character

char1 = 'A'
char1
mode(char1)
typeof(char1)

#Na Linguagem R, mesmo um vetor é considerado como caracter ou conjunto.

char2 = c("Linguagem", "R", "é", "Top!")
char2
mode(char2)
typeof(char2)


# Complex
compl = 2.5 + 4i
compl
mode(compl)
typeof(compl)

################################# Raiz Quadrada
sqrt(25) 


################################# Valor Absoluto
abs(0.99)

# Logic
x = 1; y = 2 
z = x > y
z
class(z)

u = TRUE; v = FALSE 
class(u)
u & v
u | v   
!u
