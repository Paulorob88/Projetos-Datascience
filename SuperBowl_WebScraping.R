
#Email: Paulo.RobertoSil88@gmail.com
#LinkedIn: https://www.linkedin.com/in/paulo-roberto-da-silva-7aa45835/



###########----Web Scraping com Linguagem R----#################


#Estudo de caso:
#Irei fazer um exemplo simples e prático de extração de dados não estruturados de uma página web (Web Scraping).
#Usarei dados relativos ao torneio americano de Super Bowl, no qual, o site da ESPN disponibilizou a lista de das
#equipes campeãs desde o surgimento do torneio.

#Aqui definimos o diretório do(s) arquivo(s) em que iremos salvar.
setwd("C:/Users/Datascience/Documents/DataScience_Cursos/Big_Data_Analytics_com_R_e_Microsoft_Azure_Machine_Learning/07-Manipulacao_de_dados_R/")
#
#
#
#
#
#

#Impotação dos pacotes que irei utilizar:
#se caso não estiverem instalados os pacotes abaixo, basta utilizar a seguinte anotação:
#install.packages("pacote desejado")

# O pacote "rvest" servirá para me auxiliar a buscar as informações que preciso dentro das tags HTML
library(rvest)
# O pacote "stringr" me ajudará a manipular as strings do meu data frame.
library(stringr)
# O pacote "tidyr" manipulará a(s) tabela(s)do meu data frame.
library(tidyr) 


#Aqui vamos extrair dados sobre os times campões da liga Super Bowl
# coloquei o link dentro do objeto "url"
url <- 'http://espn.go.com/nfl/superbowl/history/winners'

#Usei a função "read_html" para ler o que está dentro do objeto "url" e gravei em um outro objeto "pagina_web"
pagina_web <- read_html(url)
#aqui eu usei a função "html_nodes" para buscar dentro do código HTMl a tag: "table" e extrair as informações
#de dentro desta tag e gravar dentro do mesmo objeto.
pagina_web <- html_nodes(pagina_web, "table")
#Até aqui dentro da variável "pagina_web" temos apenas o código XML, no entanto, lá também está as informações
#que estavam dentro da tag "Table", agora iremos fazer mais uma transformação.
#Vamos converter o objeto acima para um Data Frame.
tabela_pag <- html_table(pagina_web)[[1]] # [[1]] notação de slice, busco a informação dentro do indice do vetor.
#para visuzalizar o objeto em forma de tabela no Rstudio.
View(tabela_pag)
#Irei retirar as duas primeiras linhas, pois não são úteis para o conjunto de dados:
tabela_pag <- tabela_pag[-(1:2), ]
#Renomearei as colunas da tabela
names(tabela_pag) <- c("Numero", "Data_Titulo", "Estadio", "Time")
#irei padronizar a coluna data:
tabela_pag$Data_Titulo <- as.Date(tabela_pag$Data_Titulo, "%B. %d, %Y")
View(tabela_pag)
#Converti a coluna "Numero" de números romanos para números inteiros:
tabela_pag$Numero <- 1:54
#de um View na tabela e irá notar que na coluna "time" estã misturados os resultados dos times que foram campeões
#com os que foram vice_campeões, iremos realizar esse slice, separando a coluna "time" que irá 
#resultar em mais duas colunas:
tabela_pag <- separate(tabela_pag, Time, c("Campeao", "ViceCampeao"), sep = ', ', remove = T)
View(tabela_pag)
# crei um objeto "divi" para armazenar o divisor. o "d" significa "decimal", ou seja, vamos separar os números dos caracters
divi <- "\\d+$"
#Aqui eu criei mais duas colunas que indicam os pontos de quem foi campeão e de quem foi vice campeão
tabela_pag$PontosVencedor <- as.numeric(str_extract(tabela_pag$Campeao, divi))
tabela_pag$PontosPerdedor <- as.numeric(str_extract(tabela_pag$ViceCampeao, divi))
#retirar os numeros das colunas campeao e vicecampeao
tabela_pag$Campeao <- gsub(divi, "", tabela_pag$Campeao)
tabela_pag$ViceCampeao <- gsub(divi, "", tabela_pag$ViceCampeao)

#Pronto, a nossa tabela está pronta, onde posso exportar como um arquivo CSV e criar dashboard no Power BI, Tableu e etc.
View(tabela_pag)
class(tabela_pag)
final <- as.data.frame(tabela_pag)
#gravando a tabela em um arquivo CSV
write.csv(final, "SuperBowl_WebScraping.csv", row.names = FALSE)


















