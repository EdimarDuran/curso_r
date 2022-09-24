
# Exercicio I - Modulo II -----------------------------------------

# 1. Importe a base de dados "dados_esportes.xls" para o R;

library(tidyverse)
library(readxl)
dados_esportes <- read_excel("modulo_2/aula_1/dados_esportes.xlsx")

# 2. Visualize o banco de dados importado;

View(dados_esportes)

# 3. Verifique quantas linhas e quantas colunas tem esse banco de dados;

nrow(dados_esportes) # mostra a quantidade de linhas
ncol(dados_esportes) # mostra a quantidade de colunas
dim(dados_esportes) # mostra a quantidade de linhas e colunas

# 4. Verifique os nomes das variaveis presentes;

names(dados_esportes)

# 5. Verifique a estrutura do banco de dados;

glimpse(dados_esportes)

# 6. Selecione a coluna 'cidade'.

dados_esportes %>% 
  select(cidade)

# 7. Selecione somente as colunas 'nome', 'cidade' e 'esporte'.

dados_esportes %>% 
  select(nome, cidade, esporte)

# 8. Selecione todas as colunas exceto a coluna 'sexo';

dados_esportes %>% 
  select(!sexo)

# 9. Selecione todas as colunas exceto as colunas 'cidade' e 'esporte'.

dados_esportes %>% 
  select(!cidade) %>% 
  select(!esporte)

# 10. Selecione a ultima variavel do banco de dados.

dados_esportes %>%
  select(last_col())

# 11. Selecione a primeira e a ultima linha do banco de dados.

# Selecionando a primeira linha
dados_esportes %>% 
  slice_head()

# Selecionando a ultima linha
dados_esportes %>% 
  slice_tail()

# 12. Selecione a linha '10' do banco de dados.

nova_base %>% 
  slice(10)

# 13. Selecione os valores maximos e minimos para a variavel 'idade'.

# Valor maximo
dados_esportes %>% 
  slice_max(idade)

# Valor minimo
dados_esportes %>% 
  slice_min(idade)

# 14. Classifique os dados por idade do mais velho para o mais novo 
# (ou seja, em ordem decrescente. Qual das pessoas é o mais velho(a)?

dados_esportes %>% 
  arrange(desc(idade))

# 15. Classifique os dados por nome, do primeiro ao ultimo na 
# ordem alfabetica.

dados_esportes %>%
  arrange(nome)

# 16. Classifique os dados por cidade, depois sexo, finalmente, 
# por esporte.

# cidade
dados_esportes %>% 
  arrange(cidade)

# sexo
dados_esportes %>% 
  arrange(sexo)

# esporte
dados_esportes %>% 
  arrange(esporte)

# 17. Mostre a frequencia absoluta de pessoas para cada sexo;

dados_esportes %>% 
  count(sexo)

# 18. Mostre a frequencia absoluta de pessoas para cada cidade;

dados_esportes %>% 
  count(cidade)

# 19. Mostre a frequencia absoluta de pessoas para cada esporte;  

dados_esportes %>% 
  count(esporte)

# 20. Mantenha todas as colunas, mas reorganize-as para que o 'sexo' 
# seja a primeira coluna.

dados_esportes %>% 
  select(sexo, nome, cidade, idade, esporte)

# 21. Filtre as pessoas do sexo masculino e que o esporte seja 'ciclismo'.

dados_esportes %>% 
  filter(sexo == "masculino" & esporte == "ciclismo")

dados_esportes %>% 
  filter(sexo == "masculino", esporte == "ciclismo")

# 22. Use o filtro para descobrir quantas pessoas possuem idade 
# inferior ou igual a 20 anos.

dados_esportes %>% 
  filter(idade <= 20)

# 23. Use o filtro para saber quantas pessoas possuem idade <= 20 anos, 
# e gostam do esporte ciclismo.

dados_esportes %>% 
  filter(idade <= 20) %>% 
  filter(esporte == "ciclismo")

# 24. O objetivo do codigo abaixo era filtrar da base de dados 
# apenas as pessoas que responderam residir na cidade de Salvador. 
# Tente corrigir a tentativa de realizar esse fitro, e descobrir
# porque o codigo nao roda.
dados_esportes %>% 
  filter(cidade == Salvador)

dados_esportes %>% 
  filter(cidade == "Salvador")


# Fim -------------------------------------------------------------


