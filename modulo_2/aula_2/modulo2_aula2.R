# Aula II - Modulo II ----------------------------------------------

# Criar um projeto para a aula II do modulo II

# Passos para criar um projeto:
# Project:(None) > New Project > New Directory > New Project > 
# Directory name > Browse > Create Project.

# A base de dados 'dados_populacao' foi retirada do Kaggle
# (www.kaggle.com). Este conjunto de dados contem informacoes 
# sobre a populacao em paises ao redor do mundo. O objetivo foi 
# mergulhar nesse conjunto de dados e observar a populacao da 
# Terra de diferentes perspectivas.

# Glossario do conjunto de dados (colunas)

# class_pop: Classificacao por populacao.
# cod_3: Codigo de pais/Territorios de 3 Digitos.
# pais: Nome do Pais/Territorios.
# capital: Nome da Capital.
# continente: Nome do Continente.
# pop_2022: Populacao do Pais/Territorios no ano de 2022.
# pop_2020: Populacao do Pais/Territorios no ano de 2020.
# pop_2015: Populacao do Pais/Territorios no ano de 2015.
# pop_2010: Populacao do Pais/Territorios no ano de 2010.
# pop_2000: Populacao do Pais/Territorios no ano de 2000.
# pop_1990: Populacao do Pais/Territorios no ano de 1990.
# pop_1980: Populacao do Pais/Territorios no ano de 1980.
# pop_1970: Populacao do Pais/Territorios no ano de 1970.
# area_km: Tamanho da area do Pais/Territorios em quilometro quadrado.
# densidade_km: Densidade populacional por quilometro quadrado.
# t_crescimento: Taxa de Crescimento Populacional por Pais/Territorios.
# porc_pop_mund: A porcentagem da populacao por cada Pais/Territorios.

# Se voce nao tem o pacote 'tidyverse', deve instalar
# Funcao install.packages()
# install.packages("tidyverse", dependencies = TRUE)
# Apos instalar o pacote, deve-se carrega-lo

# Funcao 'library()' para carregar o pacote
library(tidyverse)

# Como a base de dados que sera carregada esta no formato csv,
# separado por virgula, utilizaremos a funcao 'read_csv()'.
# Funcao 'read_csv()' do pacote readr
dados_populacao <- read_csv(file = "modulo_2/aula_2/dados_populacao.csv")

# Como visualizar a estrutura desse banco de dados ?
# Funcao 'glimpse()' do pacote dplyr
glimpse(dados_populacao)

# Como visualizar quantas linhas e colunas tem nesse banco de dados?
# Funcao 'dim()' mostra a quantidade de linhas e colunas
dim(dados_populacao)  
# Funcao 'nrow()' mostra quantas linhas possui o banco de dados
nrow(dados_populacao) 
# Funcao 'ncol()' mostra quantas colunas possui o banco de dados
ncol(dados_populacao)
 
# Como visualizar os nomes das variaveis presentes no banco de dados?
# Funcao 'colnames()' 
colnames(dados_populacao)

# Como visualizar o banco de dados?
# Funcao 'View()'
View(dados_populacao)

# Observamos que a primeira coluna do banco de dados nao apresenta 
# informacoes relevantes, como retirar essa coluna ?
# # Funcao 'select()' do pacote dplyr
dados_populacao %>% 
  select(-...1)

# Visualizar a estrutura do banco de dados para verificar se a coluna 
# foi removida.
glimpse(dados_populacao)

# Atribuir a alteracao ao banco de dados
dados_populacao <- dados_populacao %>% 
  select(-...1)

# Visualizar a estrutura do banco de dados apos a atribuicao e 
# verificar as alteracoes.
glimpse(dados_populacao)

# Supondo que voce deseja ordenar na ordem crescente os dados
# da coluna 'class_pop' para verificar qual pais apresenta a 
# maior populacao, sendo assim, como voce fara isso ?
# Funcao 'arrange()' do pacote dplyr
dados_populacao %>% 
  arrange(class_pop)

# Visualizar a estrutura do banco de dados para verificar se 
# foi ordenado em ordem crescente.
glimpse(dados_populacao)

# Atribuir a alteracao ao banco de dados
dados_populacao <- dados_populacao %>% 
  arrange(class_pop)

# Visualizar a estrutura do banco de dados para verificar se 
# as alteracoes foram feitas.
glimpse(dados_populacao)

# Suponha que voce deseja alterar a variavel 'continente' de
# character para fator.
# Funcao 'mutate()' do pacote dplyr
dados_populacao %>% 
  mutate(continente = as.factor(continente))

# Visualizar a estrutura dos dados para saber se houve alteracao
glimpse(dados_populacao)

# Atribuir ao banco de dados a alteracao que foi feita
dados_populacao <- dados_populacao %>% 
  mutate(continente = as.factor(continente))

# Visualizar a estrutura do banco de dados para verificar apos
# a atribuicao a alteracao da classe
glimpse(dados_populacao)

# Imagine que voce deseja filtrar a linha que contenha as 
# informacoes referentes ao Brasil.
# Funcao 'filter()' do pacote dplyr
dados_populacao %>% 
  filter(pais == "Brazil")

# Imagine que voce deseja filtrar a linha que contenha as 
# informacoes referentes a Paris.
dados_populacao %>% 
  filter(capital == "Paris")

# Supondo que voce quer visualizar no seu conjunto de dados apenas
# as observacoes referentes ao tamanho da area dos paises em 
# quilometro quadrado < 100.
dados_populacao %>% 
  filter(area_km < 100)

# Alem de visualizar a area < 100 quilometros quadrados, imagine 
# que voce gostaria de aplicar outro filtro, para que as 
# informacoes desse filtro sejam apenas do continente Europeu.
dados_populacao %>% 
  filter(area_km < 100) %>% 
  filter(continente == "Europe")

# Supondo que voce deseja filtrar informacoes referentes a densidade
# populacional por quilometro quadrado >= 200.000 e alem disso obter 
# a frequencia absoluta desse filtro para cada continente.
# Funcao 'count()' do pacote dplyr
dados_populacao %>% 
  filter(densidade_km >= 200.000) %>% 
  count(continente)

# Outra forma de obter o mesmo resultado anterior eh utilizando o 
# 'group_by' e 'summarise'
# Funcao 'group_by()' do pacote dplyr
# Funcao 'summarise()' do pacote dplyr
# Funcao 'n()'
dados_populacao %>% 
    filter(densidade_km >= 200.000) %>% 
    group_by(continente) %>%
    summarise(n = n()) 

# Imagine que voce gostaria de calcular a frequencia relativa
# para esse caso anterior
dados_populacao %>% 
    filter(densidade_km >= 200.000) %>% 
    group_by(continente) %>%
    summarise(freq_abs = n()) %>%
  mutate(freq_relativa = freq_abs / sum(freq_abs))

# Supondo tambem que voce desejasse calcular a frequencia percentual
# para esse caso 
dados_populacao %>% 
    filter(densidade_km >= 200.000) %>% 
    group_by(continente) %>%
    summarise(freq_abs = n()) %>%
    mutate(freq_relativa = freq_abs / sum(freq_abs)) %>% 
    mutate('%' = round(100*(freq_abs / sum(freq_abs)),1))

# Imagine que voce deseja filtrar a porcentagem da populacao por 
# cada pais >= 1 e obter a frequencia absoluta desse filtro para
# cada continente.
dados_populacao %>% 
  filter(porc_pop_mund >= 1) %>% 
  count(continente)

# Supondo que voce desejasse fazer uma selecao, e para isso
# voce gostaria de deixar apenas as colunas 'pais', 'capital',
# 'continente' e 't_crescimento'. 
dados_populacao %>% 
  select(pais, capital, continente, t_crescimento)

# Agora, apos essa selecao, imagine que voce deseja visualizar 
# as observacoes referentes a taxa de crescimento populacional 
# por pais < 0.99.
dados_populacao %>% 
  select(pais, capital, continente, t_crescimento) %>% 
  filter(t_crescimento < 0.99)

# Imagine que apos selecionar as colunas, filtrar as informacoes,
# voce agora deseja obter a frequencia absoluta por continente.
dados_populacao %>% 
  select(pais, capital, continente, t_crescimento) %>% 
  filter(t_crescimento < 0.99) %>% 
  group_by(continente) %>%
  summarise(freq_abs = n())

# Observando o banco de dados, pode-se criar uma classificacao
# em niveis para a quantidade de habitantes de acordo com a 
# classificacao ordenada.
# Funcao 'mutate()' do pacote dplyr
dados_populacao %>% 
  mutate(class_niveis = 
           ifelse(class_pop < 78, "A", 
                  ifelse(class_pop >= 78 & class_pop < 180, "B",
                         ifelse(class_pop >= 180 & class_pop < 200, "C",   
                                "D"))))

# Visualizar a estrutura do banco de dados para verificar se a coluna 
# 'class_niveis' foi criada.
glimpse(dados_populacao)

# Atribuir as alteracoes feitas ao banco de dados
dados_populacao <- dados_populacao %>% 
  mutate(class_niveis = 
           ifelse(class_pop < 78, "A", 
                  ifelse(class_pop >= 78 & class_pop < 180, "B",
                         ifelse(class_pop >= 180 & class_pop < 200, "C",   
                                "D"))))

# Visualizar a estrutura do banco de dados apos a atribuicao e 
# verificar a criacao da nova coluna.
glimpse(dados_populacao)

# Agora imagine que voce deseja obter a frequencia absoluta
# para a variael 'class_niveis'.
dados_populacao %>% 
    count(class_niveis)

# Imagine que voce deseja reordenar uma coluna, mudando-a  de 
# posicao, para isso tem-se dois argumentos: '.after' e '.before'.
# Vamos visualizar como esta o banco de dados 
dados_populacao

# Funcao 'relocate()' do pacote dplyr
# a) '.before', indicando onde a coluna realocada deve se mover antes 
dados_populacao %>% 
  relocate(continente, .before = class_pop)

# b) '.after', indicando onde deve se mover depois
dados_populacao %>% 
  relocate(pais, .after = class_pop)

# Agora imagine que voce deseja mudar a posicao de mais de uma 
# coluna, colocando as colunas 'continente', 'pais' e 'cod_3' 
# antes e depois da coluna 'class_pop'.
# Colocar antes da coluna 'class_pop'
dados_populacao %>% 
  relocate(continente, pais, cod_3, .before = class_pop)

# Colocar depois da coluna 'class_pop'
dados_populacao %>% 
  relocate(continente, pais, cod_3, .after = class_pop)

# Imagine que agora voce deseja converter o nome de todas as 
# variaveis para maiusculo, como voce ira fazer isso?
# Funcao 'rename_with()' do pacote dplyr renomeia as colunas
# Funcao 'toupper()' converte para maiusculo
dados_populacao %>%
  rename_with(toupper)

# E agora imagine que voce gostaria de converter para minusculo,
# como voce pensa em fazer essa alteracao?
# Funcao 'tolower()' converte para minusculo
dados_populacao %>%
  rename_with(tolower)

# Supondo que voce deseja alterar para maiusculo apenas uma das
# variaveis, como podera fazer essa alteracao ?
# Funcao 'starts_with()' do pacote dplyr
dados_populacao %>% 
  rename_with(toupper, starts_with("capital"))

# Suponha que voce deseja selecionar apenas as colunas referentes
# aos anos registrados.
dados_populacao %>%
  select(pop_2022:pop_1970)

# Suponha que voce deseja agrupar os niveis, e escolher
# quantos voce quer que apareca.
# Funcao 'table()'
# Funcao 'fct_lump_n()' do pacote forcats
table(fct_lump_n(dados_populacao$continente, n = 3))

# Agora imagine que voce deseja que apareca todos os niveis.
table(fct_lump_n(dados_populacao$continente, n = 6))

# Imagine que voce deseja obter a frequencia absoluta para cada 
# continente.
# Funcao 'group_by' do pacote dplyr
# Funcao 'summarise' do pacote dplyr
dados_populacao %>% 
  group_by(continente) %>%
  summarise(freq_absoluta = n()) 

# Imagine que voce deseja calcular a media populacional mundial
# para o ano de 1970.
# Funcao 'summarise()' do pacote dplyr
dados_populacao %>% 
  summarise(mean_pop_1970 = mean(pop_1970))

# Voce tambem pode calcular a media com o numero de registros 
# para o calculo
dados_populacao %>% 
    summarise(mean_pop_1970 = mean(pop_1970), n = n())

# E se voce desejasse calcular a media populacional mundial para os 
# anos de 2022, 2020, 2015, 2010, 2000, 1990, 1980 e 1970 ?
dados_populacao %>% 
  summarise(p_2022 = mean(pop_2022),
            p_2020 = mean(pop_2020),
            p_2015 = mean(pop_2015),
            p_2010 = mean(pop_2010),
            p_2000 = mean(pop_2000),
            p_1990 = mean(pop_1990),
            p_1980 = mean(pop_1980),
            p_1970 = mean(pop_1970))

# Como ficou dificil a visualizacao no console, vamos criar uma
# nova base de dados chamada 'dados_media' para armazenar esses 
# valores referentes as medias populacionais de cada ano avaliado.
dados_media <- dados_populacao %>% 
  summarise(p_2022 = mean(pop_2022),
            p_2020 = mean(pop_2020),
            p_2015 = mean(pop_2015),
            p_2010 = mean(pop_2010),
            p_2000 = mean(pop_2000),
            p_1990 = mean(pop_1990),
            p_1980 = mean(pop_1980),
            p_1970 = mean(pop_1970))

# Visualizar o novo banco de dados criado
View(dados_media)

# Supondo que voce nao deseja visualizar seus dados nesse
# formato mais largo, e sim, deseja transformar os dados 
# em um formato mais longo, qual a funcao que voce deve usar?
# Funcao 'pivot_longer()' do pacote tidyr
dados_media %>%
  pivot_longer(
    cols = p_2022:p_1970, 
    names_to = "ano", 
    values_to = "media_populacional")

# Visualizar a estrutura da nova base de dados para verificar se 
# houve alteracao
glimpse(dados_media)

# Atribuir a base de dados as alteracoes
dados_media <- dados_media %>%
  pivot_longer(
    cols = p_2022:p_1970, 
    names_to = "ano", 
    values_to = "media_populacional")

# Visualizar a estrutura da nova base de dados apos a atribuicao
glimpse(dados_media)

# E se voce quiser retornar ao modelo de visualizacao mais longo, 
# seria possivel fazer isso como ?
# Funcao 'pivot_wider()' do pacote tidyr
dados_media %>%
  pivot_wider(
    names_from = "ano", 
    values_from = "media_populacional")

# Visualizar a estrutura da base de dados para verificar se 
# houve alteracao
glimpse(dados_media)

# Atribuir a base de dados as alteracoes
dados_media <- dados_media %>%
  pivot_wider(
    names_from = "ano", 
    values_from = "media_populacional")

# Visualizar o banco de dados apos a atribuicao
glimpse(dados_media)

# Suponha que voce deseja calcular a media populacional do ano 2022
# para cada continente.
# Funcao 'group_by()' do pacote dplyr
# Funcao 'mean()'
dados_populacao %>% 
  group_by(continente) %>% 
  summarise(mean(pop_2022))

# Podemos atribuir um nome para a nova coluna criada que armazena
# os valores das medias por continente para o ano de 2022.
dados_populacao %>% 
  group_by(continente) %>% 
  summarise(media_pop_2022 = mean(pop_2022))

# Alem da media, tambem podemos calcular o desvio padrao ? 
# Funcao 'sd()'
dados_populacao %>% 
  group_by(continente) %>% 
  summarise(media_pop_2022 = mean(pop_2022),
            dp_pop_2022 = sd(pop_2022))

# E para somar as frequencias absolutas da populacao para cada 
# continente ?
# Funcao 'sum()'
dados_populacao %>% 
  group_by(continente) %>% 
  summarise(media_pop_2022 = mean(pop_2022),
            dp_pop_2022 = sd(pop_2022),
            soma_pop = sum(pop_2022))

# Imagine que voce tambem gostaria de inserir a mediana da populacao
# para cada continente no ano de 2022.
# Funcao 'median()'
dados_populacao %>% 
  group_by(continente) %>% 
  summarise(media_pop_2022 = mean(pop_2022),
            dp_pop_2022 = sd(pop_2022),
            soma_pop = sum(pop_2022),
            mediana = median(pop_2022))

# Imagine agora que voce tambem gostaria de calcular a variancia
# Funcao 'var()'
dados_populacao %>% 
  group_by(continente) %>% 
  summarise(media_pop_2022 = mean(pop_2022),
            dp_pop_2022 = sd(pop_2022),
            soma_pop = sum(pop_2022),
            mediana = median(pop_2022),
            variancia = var(pop_2022))

# Supondo que voce tambem desejasse calcular o valor maximo encontrado
# para o ano de 2022
# Funcao 'max()'
dados_populacao %>% 
  group_by(continente) %>% 
  summarise(media_pop_2022 = mean(pop_2022),
            dp_pop_2022 = sd(pop_2022),
            soma_pop = sum(pop_2022),
            mediana = median(pop_2022),
            variancia = var(pop_2022),
            valor_max = max(pop_2022))

# Agora imagine que voce tambem desejasse calcular o valor minimo 
# encontrado para o ano de 2022.
# Funcao 'min()'
dados_populacao %>% 
  group_by(continente) %>% 
  summarise(media_pop_2022 = mean(pop_2022),
            dp_pop_2022 = sd(pop_2022),
            soma_pop = sum(pop_2022),
            mediana = median(pop_2022),
            variancia = var(pop_2022),
            valor_max = max(pop_2022),
            valor_min = min(pop_2022))

# Agora imagine que tambem desejasse visualizar o tamanho
# Funcao 'length()'
dados_populacao %>% 
  group_by(continente) %>% 
  summarise(media_pop_2022 = mean(pop_2022),
            dp_pop_2022 = sd(pop_2022),
            soma_pop = sum(pop_2022),
            mediana = median(pop_2022),
            variancia = var(pop_2022),
            valor_max = max(pop_2022),
            valor_min = min(pop_2022),
            tamanho = length(pop_2022))

# Agora vamos atribuir a um novo banco de dados para visualizar melhor
df_medidas <- dados_populacao %>% 
  group_by(continente) %>% 
  summarise(media_pop_2022 = mean(pop_2022),
            dp_pop_2022 = sd(pop_2022),
            soma_pop = sum(pop_2022),
            mediana = median(pop_2022),
            variancia = var(pop_2022),
            valor_max = max(pop_2022),
            valor_min = min(pop_2022),
            tamanho = length(pop_2022))

# Visualizar a estrutura do novo banco de dados
glimpse(df_medidas)

# Imagine que voce gostaria de calcular a media por continente
# do ano de 1970 ate 2022.
# Funcao 'summarise_at()' do pacote dplyr
dados_populacao %>%
  group_by(continente) %>% 
  summarise_at(vars(pop_2022:pop_1970), mean)

# Para visualizar melhor, vamos atribuir a um novo banco de dados
d <- dados_populacao %>%
  group_by(continente) %>% 
  summarise_at(vars(pop_2022:pop_1970), mean)

# Visualizar a estrutura do novo banco de dados
glimpse(d)

# Como as observacoes desse novo banco de dados se referem as medias
# por continente, vamos renomear as variaveis.
# Funcao 'rename()' do pacote dplyr
d <- dados_populacao %>%
  group_by(continente) %>% 
  summarise_at(vars(pop_2022:pop_1970), mean) %>% 
  rename(pop_media_2022 = pop_2022) %>% 
  rename(pop_media_2020 = pop_2020) %>% 
  rename(pop_media_2015 = pop_2015) %>% 
  rename(pop_media_2010 = pop_2010) %>% 
  rename(pop_media_2000 = pop_2000) %>% 
  rename(pop_media_1990 = pop_1990) %>% 
  rename(pop_media_1980 = pop_1980) %>% 
  rename(pop_media_1970 = pop_1970)

# Visualizar a estrutura do novo banco de dados
glimpse(d)

# Visualizar o novo banco de dados
View(d)

