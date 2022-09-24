
# Aula I - Módulo II ----------------------------------------------

# Criar um projeto para o modulo II
# Passos para criar um projeto:
# Project:(None) > New Project > New Directory > New Project > 
# Directory name > Browse > Create Project.

# Foi realizada uma pesquisa com as pessoas inscritas no curso 
# Basico em R 2022 atraves do questionario de inscricao 
# disponilizado pelo google forms, coletou-se as respostas 
# para algumas perguntas, como conhecimento em estatistica
# idade, fruta que mais gosta, numero do pe, altura, peso, se
# reside na cidade de Feira de Santana ou nao, e as iniciais do 
# nome de cada participante dividido em categorias alfabeticas. 
# As respostas foram tabuladas no Microsoft Excel e 
# disponibilizadas no arquivo com o nome "dados_inscritos" 
# na pasta do drive. Supondo que um pesquisador quisesse 
# realizar algumas manipulacoes com essa base de dados
# utilizando as funcoes do pacote tidyverse, como ele poderia
# utilizar essas funcoes e o que poderia ser feito?

# Funcao "install.packages()"
# Para que o pacote seja instalado e executado corretamente, e
# necessario que outro pacote ja esteja instalado, por isso
# usamos 'dependencies = TRUE'.
# install.packages("tidyverse", dependencies = TRUE) # instalar o pacote 

# Apos instalar o pacote, deve-se carrega-lo
# Funcao "library()"
library(tidyverse) # carrega o pacote
# Funcao "require()"
# require(tidyverse) # tambem carrega o pacote

# Para trabalhar com a base de dados, incialmente deve-se carregar 
# a mesma para analisar, e para isso podemos utilizar mais de uma
# opcao:
# Se voce nao tiver o pacote 'readxl' instalado, deve instalar.
# install.packages("readxl")

# Carregar o pacote
library(readxl)
# Funcao "read_excel()"
dados_inscritos <- read_excel("dados_inscritos.xls")

# Import Dataset
# Environment > Import Dataset > From Excel > Browse > 
# Escolhe o banco de dados_inscritos > Sheet > Import

# Como visualizar a estrutura desse banco de dados ?
# Funcao "str()"
str(dados_inscritos)

# Funcao "glimpse()" do pacote dplyr
glimpse(dados_inscritos)

# Modificar 'character' para 'numeric'
# Funcao "mutate_at()" do pacote dplyr
# Operador pipe "`%>%`()" do pacote magrittr

dados_inscritos %>%   # Atalho para o pipe: (Ctrl + Shift + M)
  mutate_at(c("altura",
              "idade",
              "peso",
              "pe"), 
            as.numeric)

# Visualizar a estrutura do banco de dados
glimpse(dados_inscritos) 

# Agora vamos atribuir a base de dados para que a modificacao
# seja salva.
dados_inscritos <- dados_inscritos %>% 
  mutate_at(c("altura", 
              "idade",
              "peso",
              "pe"), 
            as.numeric)

# Visualizar a estrutura do banco de dados
glimpse(dados_inscritos) 

# Para salvar essas alteracoes diretamente do R, vamos criar
# uma nova base de dados utilizando uma funcao do pacote 'writexl'

# Instalar o pacote 'writexl'
# install.packages("writexl", dependencies = TRUE) 
# Carregar o pacote
library(writexl) 

# Funcao "write_xlsx()"
write_xlsx(dados_inscritos, path = "nova_base.xlsx")

# Carregando a nova base de dados
nova_base <- read_excel("nova_base.xlsx")

# Visualizar a estrutura do banco de dados
glimpse(nova_base)

# Como visualizar o banco de dados ?
# Funcao "View()"
View(nova_base) 

# Como visualizar as primeiras linhas do banco de dados ?
# Funcao "head()"
head(nova_base)

# Como visualizar quantas linhas e colunas tem nesse banco de dados?
# Funcao "dim()"
dim(nova_base) # Mostra a quantidade de linhas e colunas 
# Funcao "nrow()"
nrow(nova_base) # Mostra quantas linhas possui o banco de dados
# Funcao "ncol()"
ncol(nova_base) # Mostra quantas colunas possui o banco de dados

# Como saber a quantidade de variaveis do banco de dados?
# Funcao "length()"
length(nova_base) 

# Como visualizar suas variaveis?
# Funcao "names()"
names(nova_base) 

# O pesquisador deseja escolher uma variavel para 
# visualizar, qual funcao ele podera utilizar para isso?
# Funcao "select()" do pacote dplyr
select(nova_base, reside)

# Usando o operador pipe "`%>%`()"
nova_base %>% 
    select(reside)

# Supondo que o pesquisador deseja visualizar duas ou mais variaveis, 
# como ele podera fazer isso ?
nova_base %>% 
  select(iniciais, reside)

# Supondo que o pesquisador desejasse visualizar todas as variaveis,
# exceto a variavel "idade", como podera fazer isso?
# Usando o operador lógico "!"
nova_base %>% 
  select(!idade)

# Outra opcao é usando o sinal de subtracao '-'
nova_base %>% 
    select(-idade)

# Agora imagine que o pesquisador não deseja visualizar a variavel 
# "reside", "altura", e "fruta" como podera fazer isso?
nova_base %>% 
  select(-reside, -altura, -fruta)

# Outra opcao de selecionar usando a funcao "c()"
nova_base %>% 
  select(-c(reside, altura, fruta))

# O pesquisador gostaria de visualizar o banco de dados, fazendo
# com que a ultima coluna apareca em primeiro lugar.
nova_base %>% 
  select(fruta, everything())

# Supondo que agora o pesquisador deseja que a coluna "fruta"
# apareca em primeiro lugar e a coluna "idade" em seguida.
nova_base %>% 
  select(fruta, idade, everything())

# Imagine que agora ele deseja visualizar a ultima variavel do banco
# de dados
nova_base %>%
  select(last_col())

# E se o pesquisador quisesse procurar uma variavel utilizando 
# apenas um argumento que tem em alguma variavel do banco de dados?
nova_base %>%
  select(contains("a"))

# Supondo que o pesquisador desejasse fazer uma selecao e 
# visualizar apenas a partir da quarta coluna ate a ultima.
nova_base %>%
  select(4:last_col())

# Agora o pesquisador gostaria de manter todas as colunas e 
# reorganiza-las em uma ordem diferente.
nova_base %>% 
  select(reside, fruta, iniciais, pe, peso, altura, 
         idade, conhecimentoR, conhecimentoEst)

# Suponha que o pesquisador deseja selecionar a primeira e a ultima
# linha do banco de dados.
# Funcao "slice()" do pacote dplyr
# Selecionando a primeira linha
nova_base %>% 
  slice_head()

# Selecionando a ultima linha
nova_base %>% 
  slice_tail()

# Suponha que o pesquisador deseja selecionar uma linha em 
# especifico do banco de dados.
nova_base %>% 
            slice(190) 

# Agora imagine que o pesquisador gostaria de saber qual o 
# valor maximo para a variavel 'idade'.
# Valor maximo
nova_base %>% 
      slice_max(idade)

# Agora o pesquisador gostaria de saber qual o valor 
# minimo para a variavel 'pe'.
# Valor minimo
nova_base %>% 
    slice_min(pe)

# Imagine que o pesquisador deseja selecionar as 5 primeiras
# linhas do banco de dados, como fazer ?
nova_base %>% 
  slice_head(n = 5) 

# E agora suponha que seja necessario selecionar algumas linhas, 
# como fazer ?
nova_base %>% 
  slice(100:110) 

# Imagine que o pesquisador deseja organizar esse banco de dados
# colocando as informacoes da coluna "iniciais" na ordem alfabetica.
# Vamos observar como esta o banco de dados
nova_base

# Agora vamos observar utilizando a funcao "arrange()"
# Funcao "arrange()" do pacote dplyr
nova_base %>%
  arrange(iniciais) 

# Agora imagine que ele deseja visualizar a coluna "idade" 
# ordenada de forma crescente e decrescente.
# Crescente
nova_base %>%
  arrange(idade) 

# Decrescente 
nova_base %>%
  arrange(desc(idade))

# E se o pesquisador desejasse visualizar as colunas "iniciais"
# e "idade" ordenadas de forma crescente?
nova_base %>%
    arrange(iniciais, idade) 

# Imagine que ele tambem deseja visualizar a coluna "conhecimentoR" 
# de forma decrescente.
nova_base %>%
  arrange(desc(conhecimentoR))

# Suponha que o pesquisador deseja alterar o nome da variavel,
# "iniciais" para "iniciais_nome", como ele podera proceder?
# Funcao "rename()" do pacote dplyr
nova_base %>%
  rename(iniciais_nome = iniciais)

# Visualizar a estrutura do banco de dados para verificar se 
# houve alteracao
glimpse(nova_base)

# Alterar o nome da variavel e atribuir ao banco de dados 
nova_base <- nova_base %>%
  rename(iniciais_nome = iniciais)

# Visualizar a estrutura do banco de dados e ver que foi modificado
glimpse(nova_base) 

# O pesquisador deseja criar uma nova coluna, contendo os valores
# da soma do conhecimento em R e conhecimento em estatistica.
# Funcao "mutate()" do pacote dplyr
nova_base %>% 
  mutate(conhecR_Est = conhecimentoR + conhecimentoEst) 

# Visualizar a estrutura do banco de dados para verificar se 
# houve alteracao
glimpse(nova_base) 

# Criar a nova variavel e atribuir ao banco de dados
nova_base <- nova_base %>% 
  mutate(conhecR_Est = conhecimentoR + conhecimentoEst)

# Visualizar a estrutura do banco de dados e ver que 
# a variavel foi criada
glimpse(nova_base) 

# Imagine que agora ele deseja obter o valor medio do conhecimento 
# em R e em estatistica.
nova_base %>% 
  mutate(conhec_medio = (conhecimentoR + conhecimentoEst)/2)

# Visualizar a estrutura do banco de dados para verificar se 
# houve alteracao
glimpse(nova_base) 

# Criar a nova variavel e atribuir ao banco de dados
nova_base <- nova_base %>% 
  mutate(conhec_medio = (conhecimentoR + conhecimentoEst)/2)

# Visualizar a estrutura do banco de dados e verificar
# que a nova variavel foi criada e atribuida a base
glimpse(nova_base) 

# Agora imagine que o pesquisador deseja criar uma classificacao 
# quanto o conhecimento em R, sendo igual ou inferior a 5 
# classificado como 'Bom', e superior a 5, classificado como 
# 'Regular'.
nova_base %>% 
  mutate(class_conhec = ifelse(conhec_medio >= 5, "Bom", "Regular"))

# Visualizar a estrutura do banco de dados para verificar se 
# houve alteracao
glimpse(nova_base) 

# Criar a nova variavel e atribuir ao banco de dados
nova_base <- nova_base %>% 
  mutate(class_conhec = ifelse(conhec_medio >= 5, "Bom", "Regular"))

# Outra forma de classificiar usando tres niveis
nova_base <- nova_base %>% 
  mutate(class_conhec = ifelse(conhec_medio < 3, "baixo", 
                               ifelse(conhec_medio >= 3 & conhec_medio < 7, "medio", "alto")))

# Visualizar a estrutura do banco de dados
glimpse(nova_base) 

# Imagine que o pesquisador deseja encontrar no seu banco de 
# dados a frequancia absoluta de pessoas que tem idade igual 
# a 19 anos, por exemplo, como ele podera saber se ha essa 
# informacao e localiza-la rapidamente ?
# Funcao "filter()" do pacote dplyr
nova_base %>% 
  filter(idade == 19)

# Suponha que ele quis saber quais pessoas que moram em Feira de 
# Santana responderam que possuem conhecimento em R acima de 7. 
nova_base %>% 
  filter(conhecimentoR > 7, 
         reside == "Feira de Santana")

# Agora o pesquisador deseja visualizar apenas as pessoas que 
# responderam gostar de Jaca.
nova_base %>% 
  filter(fruta == "Jaca")

# Suponha que apos a classificacao criada, o pesquisador deseja
# filtrar aquelas pessoas que afirmaram possuir conhecimento "Bom"
# em R.
nova_base %>% 
  filter(class_conhec == "Bom")

# Visualizar a estrutura do banco de dados para verificar se 
# houve alteracao
glimpse(nova_base)

# Criar uma nova base e atribuir o filtro aplicado
d1 <- nova_base %>% 
  filter(class_conhec == "Bom")

# Visualizar a estrutura do novo banco de dados criado
glimpse(d1)

# Visualizar o novo banco de dados 
View(d1)

# O pesquisador deseja saber quantas pessoas responderam que: 
# (residem em Feira de Santana; nao residem; e nao respoderam 
# nenhuma das alternativas), como ele podera obter essa informacao?
# Funcao "count()" do pacote dplyr
nova_base %>% 
  count(reside)

# O pesquisador satisfeito com os resultados resolveu saber tambem
# a frequencia absoluta de pessoas que escolheram cada fruta do 
# questionario, e inclusive quantas pessoas nao escolheram
# nenhuma das frutas.
nova_base %>% 
  count(fruta)

# Imagine que ele gostaria de obter a frequencia absoluta das 
# pessoas que gostam de Jaca e moram em Feira de Santana e 
# em outras cidades.
nova_base %>% 
  filter(fruta == "Jaca") %>% 
  count(reside)

# Agora imagine que ele gostaria de saber tambem quais as 
# frequencias absolutas para cada classe do conhecimento em R.
# Funcao "group_by()
nova_base %>% 
  group_by(class_conhec) %>% 
  count()

# Agora imagine que o pesquisador deseja saber a frequencia absoluta
# para 'iniciais_nome'.
nova_base %>% 
  group_by(iniciais_nome) %>% 
  count()

# Agora imagine que o pesquisador deseja obter a frequencia
# absoluta das pessoas que escolheram a fruta " Banana" e 
# possuem conhecimento em 
# R igual ou maior que 5.
nova_base %>% 
  filter(fruta == "Banana",
         conhecimentoR >= 5) %>%
  count()

# Suponha que o pesquisador deseja remover a variavel "conhecR_Est", 
# o que ele deve fazer ?
nova_base %>% 
  select(-conhecR_Est)

# Visualizar a estrutura do banco de dados para verificar se 
# houve alteracao
glimpse(nova_base)

# Atribuir a base de dados as alteracoes feitas
nova_base <- nova_base %>% 
  select(-conhecR_Est)

# Visualizar a estrutura do banco de dados
glimpse(nova_base)

# Suponha que o pesquisador deseja realizar uma selecao no 
# banco de dados, selecionando a variavel "iniciais_nome", 
# "class_conhec","fruta", "idade", e "reside", e filtrar 
# as pessoas com as iniciais do nome 'A-G', que 
# responderam residir em Feira de Santana, e organize
# a idade em ordem crescente.
d2 <- nova_base %>%
  select(iniciais_nome, reside, idade, fruta, class_conhec) %>% 
  filter(iniciais_nome != "H-N") %>% 
  filter(reside == "Feira de Santana") %>% 
  filter(fruta == "Banana") %>% 
  arrange(idade)

# Visualizar a estrutura do novo banco de dados  
glimpse(d2) 

# Visualizar o banco de dados
View(d2) 

rm(list = ls()) # remove tudo

# -----------------------------------------------------------------