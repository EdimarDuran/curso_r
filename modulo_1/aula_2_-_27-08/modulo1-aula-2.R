
# ------------------------ Aula 2 ----------------------------------------------

# Supondo que você tenha esses dados do IBGE tabulados 
# no Microsoft Excel, e agora deseja importá-los para 
# o R visando fazer suas manipulacoes, como fazer isso?

# O que é um pacote? 

# Como instalar um pacote?

# Funcao "install.packages()"
# Pacote "readxl"
install.packages("readxl") # instala pacote

# Como carregar um pacote?

# Funcao "library()" ou "require()"
library(readxl) # carrega pacote

# Para carregar uma funcao de um pacote pode usar dois pontos, 
# assim voce sabe o pacote que esta usando e sua respectiva funcao.
# readxl::

# Importacao dos dados
# Funcao "read_excel()"
dados_ibge <- read_excel("dados_ibge.xlsx")

# Import Dataset
# Environment > Import Dataset > From Excel > Browse > 
# Escolhe o banco de dados > Sheet > Import

# Funcao "View()"
View(dados_ibge) # visualiza os dados

# Como visualizar a estrutura desse banco de dados?
# Funcao "str()"
str(dados_ibge) # Mostra a estrutura dos dados

# Como visualizar quantas linhas e colunas tem nesse banco de dados?
# Funcao "dim()"
dim(dados_ibge) # Mostra quantas linhas e colunas tem
# Funcao "nrow()"
nrow(dados_ibge) # Mostra quantas linhas possui o banco de dados
# Funcao "ncol()"
ncol(dados_ibge) # Mostra quantas colunas possui o banco de dados

# Como visualizar suas variáveis?
# Funcao "names()"
names(dados_ibge) # Visualiza as variaveis presentes no conjunto de dados.

# É possível escolher uma variável para visualizar?
# Uso do "$"
dados_ibge$regiao 

# Funcao "attach()"
attach(dados_ibge) # Transforma as colunas como objetos.

cidade
regiao
populacao
PIB
mortalidade_infantil

# Calculo da media do PIB por regiao
# Funcao "tapply()"
tapply(PIB, regiao, mean)

# Calculo do desvio padrao do PIB por regiao
# Funcao "tapply()"
tapply(PIB, regiao, sd)

# Funcao "table()"
tab_regiao <- table(regiao)
tab_regiao

# Como calcular os percentuais para cada regiao?
# Funcao "prop.table()"
prop.table(tab_regiao)

proporcao_regiao <- prop.table(tab_regiao)
proporcao_regiao

porc_regiao <- prop.table(tab_regiao)*100
porc_regiao 

# Como somar todos os valores de uma coluna?
# Funcao "sum()"
sum(PIB) # Soma os valores de uma coluna
sum(populacao)
sum(mortalidade_infantil)

# Suponha que o pesquisador além de fazer essas análises
# vai produzir um relatório com os resultados dessa pesquisa
# e para isso ele precisará de gráficos para melhor demonstrar
# esses parametros, e inicialmente ele deseja mostrar graficamente
# o quantitativo de cidade de cada tab_regiao do estudo. 

# Grafico do tipo Barplot
# Funcao "barplot()"
barplot(tab_regiao)
barplot(porc_regiao)

barplot(porc_regiao,
        main = "Distrubuicao por regiao") # "main" adiciona título

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5) # "cex.main" altera o tamanho da fonte do título
        
barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual") # "ylab" adiciona título do eixo y

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões") # "xlab" adiciona título no eixo x

barplot(tab_regiao,
        main = "Distrubuicao por regiao",
        cex.main = 1.5, 
        ylab = "Percentual",
        xlab = "Regiões", 
        las = 1) # "las" rotacao de textos nas margens dos eixos

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5,
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5) # "cex.lab" altera a cor dos nomes dos eixos

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6)) # "ylim" altera os limites no eixo y
        
barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6), 
        col = c("pink", "yellow", "red")) # "col()" altera as cores das barras

barplot(tab_regiao,
        main = "Distrubuicao por regiao",
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões",
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6), 
        col = c("blue", "yellow", "red"), 
        col.main = "red") # "col.main" altera a cor do título

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6), 
        col = c("blue", "yellow", "red"), 
        col.main = "red", 
        col.lab = "blue") # "col.lab" altera a cor dos nomes dos eixos

barplot(tab_regiao,
        main = "Distrubuicao por regiao", 
        cex.main = 1.5, 
        ylab = "Percentual", 
        xlab = "Regiões", 
        las = 1, 
        cex.lab = 1.5, 
        ylim = c(0, 6), 
        col = c("blue", "yellow", "red"), 
        col.main = "red", 
        col.lab = "blue",
        mtext("Fonte: IBGE, 2022", 
              side = 1, # escolhe o lado do grafico (1 = inferior)
              line = 4, # escolhe a linha
              adj = -0.25)) # ajuste na direcao da leitura

barplot(tab_regiao,
        main = "Distrubuicao por regiao", # "main" adiciona título
        cex.main = c(1.5), # "cex.main" altera o tamanho da fonte do título
        ylab = "Percentual", # "ylab" adiciona título do eixo y
        xlab = "Regiões", # "xlab" adiciona título no eixo x
        las =1, # "las" rotacao de textos nas margens dos eixos
        cex.lab = 1.5, # "cex.lab" altera a cor dos nomes dos eixos
        ylim = c(0, 6), # "ylim" altera os limites no eixo y
        col = c("blue", "yellow", "red"), # "col()" altera as cores das barras
        col.main = "red", # "col.main" altera a cor do título
        col.lab = "blue", # "col.lab" altera a cor dos nomes dos eixos
        mtext("Fonte: IBGE, 2022", 
              side = 1, # escolhe o lado do grafico (1 = inferior)
              line = 4, # escolhe a linha
              adj = -0.25)) # ajuste na direcao da leitura

# Grafico do tipo Pizza
# Funcao "pie()"
pie(porc_regiao,   # tabela com os valores a serem inseridos
    main = "Distrubuicao por regiao", # titulo do grafico
    labels = c("Nordeste (50,0%)", # rotulos
               "Norte (40,0%)", 
               "Sul (10,0%)"),
    col = c("red", "blue", "white"),# cores
    cex = 0.75,                     # tamanho da fonte
    cex.main = 1.2                 # tamanho da fonte do título
) 

# Outra opcao para o grafico de pizza, apresentando so as percentagens:
pie(porc_regiao,   # tabela com os valores a serem inseridos
    main = "Distrubuicao por regiao", # titulo do grafico
    labels = c("50,0%","40,0%", "10,0%"), # rotulos
    col = c("red","blue","white"), # cores
    cex = 0.75, # tamanho da fonte
    cex.main = 0.95 # tamanho da fonte do título
) 

# Legenda: Funcao "legend()"
legend(
    "top",  # Local para posicionar a legenda (alto à direita)
    legend = c("Nordeste", # insere as informacoes
             "Norte", 
             "Sul"),
    fill = c("red","blue","white"), #cores de preenchimento
    bty = "n",   # Não coloca a legenda dentro de uma "caixa", (o - coloca legenda na caixa)
    horiz = T    # cada grupo fica em uma única linha
)

# legend() pode ser substituido pelos valores “bottomright”, “bottom”, 
# “bottomleft”, “left”, “topleft”, “top”, “topright”, “right” 
# e “center” para usar posições predefinidas.
