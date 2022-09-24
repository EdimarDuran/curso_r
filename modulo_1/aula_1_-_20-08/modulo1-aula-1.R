# Módulo I - Aula I -----------------------------------------------

# Como fazer download e instalacao do R e RStudio?

# Como é a interface do RStudio?

# Como funciona o R ?

# De qual maneira pode utilizar comentarios no R ? 

# Como criar um projeto ?
# Project:(None) > New Project > New Directory > New Project > 
# Directory name > Browse > Create Project.

# Como criar um script ?
# File > New File > R Script.  
# Ou Ctrl+ Shift + N

# Como salvar um script ?

# Alguns atalhos básicos no R (Windows/Linux)

# Ctrl+Enter - Executa linha selecionada
# Ctrl+Shift+C - Comenta e descomenta linha
# Ctrl+S - Salva o documento
# Ctrl+Shift+F - Pesquisa qualquer coisa no projeto

# O que é um objeto?
# É um termo ou atribuição que se quer ser armazenado

# Como criar um objeto?
# Simbolos de atribuição "<-" ou "="

# Pode-se utilizar acentos e espacos quando for salvar o nome do arquivo ?
# Ponto ´(.), underline (_) e hifen (-) nos lugares dos espacos.

# Como executar um comando ?
# Ícone "Run"
# Ou "Ctrl + Enter"

# Como faz para inserir um objeto ?

# Supondo que em uma entrevista de um determinado jornal, sobre o IMC, 
# o entrevistador abordou um rapaz, cujo nome era Edimar e ele informou
# que pesava 54 kg e tinha 1.59 m de altura. Com base nessas 
# informações, como fazer a análise desses dados coletados ?

peso_edimar <- 54
estatura_edimar<- 1.59

# Como calcular o IMC de Carlos ? 
imc_edimar <- peso_edimar/(estatura_edimar^2)

# Como fazer operacoes basicas utilizando o R ?

5 + 4 # soma
8 - 3 # subtracao
5 * 5 # multiplicacao
10 / 2 # divisao
4 ^ 2 # potencia


# Como arredondar o valor do IMC ?

# Pedindo ajuda no R
# Funcao "round( )"
help(round)
round(imc_edimar)
imc_edimar <- round(peso_edimar/(estatura_edimar^2))

round(27.2173029467267, digits = 2) # arredonda para 2 casas decimais

# Como arredondar o IMC de Carlos para 1 casa decimal?
imc_edimar <- round(peso_edimar/(estatura_edimar^2), 3)
imc_edimar <- round(imc_edimar,1)

# Como faz para inserir um objeto com 2 ou mais observacoes (vetores) ? 
# Funcao "c()"
help(c)
# Atencao com algumas questoes no R: caracteres maiusculos e minusculos,
# aspas, virgula.

# Foi realizada uma pesquisa com 10 pessoas em uma determinada 
# cidade do estado da Bahia. Os entrevistados se dispuseram
# de forma voluntaria para responderem três perguntas, sendo elas:
# nome, peso e estatura, a fim de realizar o calculo do IMC desse 
# grupo de pessoas escolhidas. 

# 1. Marcela: 65kg e 1,50m;
# 2. Eduarda: 70kg e 1,70m;
# 3. Ana: 75kg e 1,75m;
# 4. Carlos: 80kg e 1,66m;
# 5. Pedro: 82kg e 1,80m;
# 6. Amanda: 76kg e 1,56m;
# 7. Julia: 71kg e 1,72m;
# 8. Daniel: 59kg e 1,75m;
# 9. Jorge: 77kg e 1,55m;
# 10. Luana: 89kg e 1,50m.

nome <- c("Marcela", "Eduarda", "Ana", "Carlos", "Pedro", "Amanda", 
          "Julia", "Daniel", "Jorge", "Luana")
peso <- c(65, 70, 75, 80, 82, 76, 71, 59, 77, 89)
estatura <-  c(1.50, 1.70, 1.75, 1.66, 1.80, 1.56, 1.72, 1.75, 1.55, 
               1.50)

# Como calcular o IMC de todos?
imc_geral <- peso/(estatura^2)
imc_geral

round(imc_geral,2)

# Qual a estatura media dos alunos ?

estatura_media <- (1.50 + 1.70 + 1.75 + 1.66 + 1.80 + 1.56 + 1.72 +
                     1.75 + 1.55 + 1.50 )/10

estatura_media
round(estatura_media, 2)
# Arredondar o valor encontrado da estatura media
# Fazer media do peso, IMC, e estatura
# Funcao "sum()"
sum(estatura)/10

# Funcao "mean()"
mean(estatura)


# Como calcular o desvio padrao da estatura dos alunos ?
#Funcao sd( )"
sd(estatura)

# Qual a idade media dos alunos ?
peso_medio <- mean(peso)
peso_medio <- mean(peso)

# Como calcular o desvio padrao do peso dos alunos ?
sd(peso)

# Suponha que o participante da pesquisa, cujo nome é Daniel, não 
# informou seu peso, mas o pesquisador deseja realizar o calculo 
# da media utilizando os demais valores, inclusive com a informacao
# que há um dado nao disponivel "NA". 

# Calculo de media contendo NA*
peso <- c(65, 70, 75, 80, 82, 76, 71, NA, 77, 89)

mean(peso) # encontrar a media 
help(mean) # pedindo ajuda
mean(peso, na.rm = TRUE) # calculando a media de um conjunto de dados com NA

# Para o calculo do desvio padrao segue-se da mesma forma:
sd(peso, na.rm = T)
var(peso, na.rm = T) #Variância

# Tem-se quais tipos de variaveis ?
# Categorica: nominal e ordinal

# Numerica: discreta e continua

# Apos realizar a pesquisa para saber o IMC dos voluntarios, o 
# pesquisador entrou em contato com os participantes visando obter
# mais uma informacao, sendo esta importante para avaliar quantos 
# deles estavam cursando alguma graduacao.

graduacao <- c("sim", "nao", "nao", "sim", "sim", "sim", "sim", "nao", 
          "sim", "nao") 
class(graduacao)

# transformando a variavel "graduacao" em fator
graduacao <- factor(graduacao)
class(graduacao)

# Como verificar a classe dos outros objetos que foram criados ? 
class(nome)
class(estatura)
class(peso)

# Como criar um banco de dados "planilha" com esses dados ?
# Funcao "data.frame()"
dados_alunos <- data.frame(nome, estatura, graduacao, peso)
dados_alunos
View(dados_alunos)

# Quantos alunos sao estudantes de graduacao ?
# Funcao "table()"
table(graduacao)
numero_de_alunos <- table(graduacao)
numero_de_alunos

# Como calcular a porcentagem dos entrevistados que sao estudantes 
# de graduacao?
# Funcao "prop.table()"
prop.table(numero_de_alunos)
proporcao_alunos <- prop.table(numero_de_alunos)
proporcao_alunos
porcentagem_alunos <- prop.table(numero_de_alunos)*100
porcentagem_alunos 

# Imagine a situacao que você precisa analisar outros dados, nesse caso
# recomenda-se a criacao de outro script para fazer a analise desses
# dados. 

# Para limpar o Environment (ambiente) pode-se usar a seguinte funcao:
# Funcao "rm()"
rm(list = ls())

# Exportar dados para o excel
#  Precisa importar o pacorte e utilizar este comando: 
#  write.xls(nome_data_frame, file = nome_do_arquivo.xls)

# Foi realizada uma pesquisa no site do Instituto Brasileiro de 
# Geografia e Estatistica - IBGE sobre 10 cidades do Brasil,
# nesta pesquisa considerou-se o nomes das cidades, populacao, 
# regiao, PIB per capita e taxa de mortalidade infantil.

# 1. Feira de Santana: Populacao de 556642 pessoas; Regiao Nordeste; 
# PIB per capita de 24229.74 R$; e Taxa de Mortalidade Infantil 
# de 13,84 óbitos por mil nascidos vivos.

# 2. Aracaju: Populacao de 571149 pessoas; Regiao Nordeste; 
# PIB per capita de 26688.23 R$; e Taxa de Mortalidade Infantil 
# de 16,72 óbitos por mil nascidos vivos.

# 3. Manaus: Populacao de 1802014 pessoas; Regiao Norte; 
# PIB per capita de 38880.73 R$; e Taxa de Mortalidade Infantil 
# de 12,80 óbitos por mil nascidos vivos.

# 4. Rio Branco: Populacao de 336038 pessoas; Regiao Norte; 
# PIB per capita de 22.448,30 R$; e Taxa de Mortalidade Infantil 
# de 14,97 óbitos por mil nascidos vivos.

# 5. Palmas: Populacao de 228332 pessoas; Regiao Norte; 
# PIB per capita de 34933.66 R$; e Taxa de Mortalidade Infantil 
# de 12,13 óbitos por mil nascidos vivos.

# 6. Curitiba: Populacao de 1751907 pessoas; Regiao Sul; 
# PIB per capita de 49706.64 R$; e Taxa de Mortalidade Infantil 
# de 7,10 óbitos por mil nascidos vivos.

# 7. Recife: Populacao de 1537704 pessoas; Regiao Nordeste; 
# PIB per capita de 33232.26 R$; e Taxa de Mortalidade Infantil 
# de 11,20 óbitos por mil nascidos vivos.

# 8. Teresina: Populacao de 814230 pessoas; Regiao Nordeste; 
# PIB per capita de 25458.50 R$; e Taxa de Mortalidade Infantil 
# de 12,10 óbitos por mil nascidos vivos.

# 9. Natal: Populacao de 803739 pessoas; Regiao Nordeste; 
# PIB per capita de 28113.21 R$; e Taxa de Mortalidade Infantil 
# de 9,52 óbitos por mil nascidos vivos.

# 10. Porto Velho: Populacao de 428527 pessoas; Regiao Norte; 
# PIB per capita de 33825.46 R$; e Taxa de Mortalidade Infantil 
# de 17,61 óbitos por mil nascidos vivos. 

# Agora é sua vez de praticar:

# 1. Crie cada objeto;
# 2. Crie um data.frame com os dados;
# 3. Verifique a classe de cada objeto;
# 4. Calcule a média para o PIB;
# 5. Calcule o desvio padrão para o PIB;
# 6. Calcule a média para mortalidade infantil;
# 7. Calcule o desvio padrão para mortalidade infantil;
# 8. Defina o objeto "regiao" como fator;
# 9. Calcule a porcentagem por regiao;
# 10. Imagine que não foi encontrada a informação referente ao PIB de 
# Manaus, neste caso você irá acrescentar um NA para essa informação
# e irá fazer o calculo da média e desvio padrão do PIB. 

