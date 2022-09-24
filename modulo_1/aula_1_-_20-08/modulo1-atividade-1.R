# Atividade Módulo I ----------------------------------------------

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


# Resolução da Atividade I do módulo I ----------------------------

# 1. Criando os objetos: 
#   Cidade; popilação, região, PIB, taxa de mortalidade infantil

cidades <- c("Feira de Santana", "Aracaju", " Manaus", "Rio Branco", "Palmas", 
            "Curitiba", "Recife", "Teresina", "Natal", "Porto Velho")

populacao <- c( 556642, 571149, 1802014, 336038, 228332, 1751907,  1537704, 
                814230, 803739, 428527)

regiao_do_pais <- c("Nordeste", "Nordeste", "Norte", "Norte", "Norte", 
                    "Sul", "Nordeste", "Nordeste", "Nordeste", "Norte")

pib_per_capita <- c(24229.74, 26688.23, 38880.73, 22448.30,34933.66,49706.64, 
                    33232.26, 25458.50, 28113.21, 33825.46)

taxa_mortal_infantil_por_mil_nascidos <- c(13.84, 16.72, 12.80, 14.97, 12.13,
                                           7.10, 11.20, 12.10, 9.52, 17.61)


# 2. Crie um data.frame com os dados;
dados_IBGE <- data.frame(cidade, populacao, regiao_do_pais, pib_per_capita, 
                         taxa_mortal_infantil_por_mil_nascidos)
View(dados_IBGE)

# 3. Verifique a classe de cada objeto;
class(populacao)
class(cidade)
class(regiao_do_pais)
class(pib_per_capita)
class(taxa_mortal_infantil_por_mil_nascidos)

# 4. Calcule a média para o PIB;
media_pid <- mean(pib_per_capita)

# 5. Calcule o desvio padrão para o PIB;
desvio_padrap_pib = sd(pib_per_capita)


# 6. Calcule a média para mortalidade infantil;
media_mortalidade  <- mean(taxa_mortal_infantil_por_mil_nascidos)

# 7. Calcule o desvio padrão para mortalidade infantil;
desvio_padrao_mortalidade <- sd(taxa_mortal_infantil_por_mil_nascidos)

# 8. Defina o objeto "regiao" como fator;
regiao_do_pais = factor(regiao_do_pais)
class(regiao_do_pais)


# 9. Calcule a porcentagem por regiao;
table(regiao_do_pais)
tab_regiao <- table(regiao_do_pais)

prop.table(tab_regiao)
proporcao_regiao <- prop.table(tab_regiao)
proporcao_regiao
porcentagem_regiao <- prop.table(tab_regiao)*100
porcentagem_regiao 

# 10. Imagine que não foi encontrada a informação referente ao PIB de 
# Manaus, neste caso você irá acrescentar um NA para essa informação
# e irá fazer o calculo da média e desvio padrão do PIB. 
PIB <- c(24229.74, 26688.23, NA, 22448.30, 34933.66, 
         49706.64, 33232.26, 25458.50, 28113.21, 33825.46)

mean(PIB, na.rm = TRUE) # Calculo da media
sd(PIB, na.rm = TRUE) # Calculo do desvio padrao

