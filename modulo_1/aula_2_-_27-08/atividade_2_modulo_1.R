
# Atividade II - Módulo I -----------------------------------------

# Foi realizada uma pesquisa com as pessoas inscritas no curso 
# Básico em R 2022 atraves do questionario de inscricao 
# disponilizado pelo google forms, coletou-se as respostas 
# para algumas perguntas, como conhecimento em estatistica
# idade, fruta que mais gosta, numero do pe, altura, peso, se
# reside na cidade de Feira de Santana ou nao, e as iniciais do 
# nome de cada participante dividido em categorias alfabeticas. 
# As respostas foram tabuladas no Microsoft Excel e 
# disponibilizadas no arquivo com o nome "dados_inscritos" 
# na pasta do drive. 

# Questões --------------------------------------------------------

# 1. Importe a base de dados "dados_inscritos.xls" para o R;

# ---- Para realização da importação dos dados - será utilizado opacote readxl
install.packages("readxl")
library(readxl)

dados_inscritos <- read_excel("aula_2_-_27-08/dados_inscritos.xls")

# 2. Visualize o banco de dados importado;

View(dados_inscritos)

# 3. Verifique quantas linhas e quantas colunas tem esse banco de dados;

nrow(dados_inscritos) # mostra a quantidade de linhas
ncol(dados_inscritos) # mostra a quantidade de colunas
dim(dados_inscritos) # mostra a quantidade de linhas e colunas

# 4. Verifique os nomes das variaveis presentes;
names(dados_inscritos)

# 5. Verifique a classe de cada variavel;
class(dados_inscritos$iniciais)
class(dados_inscritos$conhecimentoR)
class(dados_inscritos$conhecimentoEst)
class(dados_inscritos$reside)
class(dados_inscritos$altura)
class(dados_inscritos$idade)
class(dados_inscritos$peso)
class(dados_inscritos$pe)
class(dados_inscritos$fruta)

# 6. Verifique a estrutura do banco de dados;
str(dados_inscritos)

# 7. Altere as variaveis "altura", "idade", "peso" e "pe" para "numeric";
dados_inscritos$altura <- as.numeric(dados_inscritos$altura)
class(dados_inscritos$altura)

dados_inscritos$idade <- as.numeric(dados_inscritos$idade)
class(dados_inscritos$idade)

dados_inscritos$peso <- as.numeric(dados_inscritos$peso)
class(dados_inscritos$peso)

dados_inscritos$pe <- as.numeric(dados_inscritos$pe)
class(dados_inscritos$pe)

dados_2 <- na.exclude(dados_inscritos) # exclui os NA
str(dados_2) # visualiza a estrutura novamente


# 8. Transforme as colunas em objetos;
attach(dados_2)

# 9. Calcule a media e o desvio padrao para as variaveis:
# "conhecimentoR", "conhecimentoEst", "altura", "idade", 
# "peso", e "pe". Para cada valor encontrado, arredonde
# para duas casas decimais apos a virgula;

# Media para a variavel "conhecimentoR"
mean(conhecimentoR)               # encontrando a media
round(mean(conhecimentoR),2)      # arredondando o valor encontrado

# Desvio padrao para a variavel "conhecimentoR"
sd(conhecimentoR)                 # encontrando o desvio padrao
round(sd(conhecimentoR),2)        # arredondando o valor encontrado

# Media para a variavel "conhecimentoEst"
mean(conhecimentoEst)             # encontrando a media
round(mean(conhecimentoEst),2)    # arredondando o valor encontrado

# Desvio padrao para a variavel "conhecimentoEst"
sd(conhecimentoEst)               # encontrando o desvio padrao
round(sd(conhecimentoEst),2)      # arredondando o valor encontrado

# Media para a variavel "altura"
mean(altura, na.rm = TRUE)
round(mean(altura, na.rm = TRUE),2)

# Desvio padrao para a variavel "altura"
sd(altura, na.rm = TRUE)
round(sd(altura, na.rm = TRUE),2)

# Media para a variavel "idade"
mean(idade, na.rm = TRUE)
round(mean(idade, na.rm = TRUE),2)

# Desvio padrao para a variavel "idade"
sd(idade, na.rm = TRUE)
round(sd(idade, na.rm = TRUE),2)

# Media para a variavel "peso"
mean(peso, na.rm = TRUE)
round(mean(peso, na.rm = TRUE),2)

# Desvio padrao para a variavel "peso"
sd(peso, na.rm = TRUE)
round(sd(peso, na.rm = TRUE),2)

# Media para a variavel "pe"
mean(pe, na.rm = TRUE)
round(mean(pe, na.rm = TRUE),2)

# Desvio padrao para a variavel "pe"
sd(pe, na.rm = TRUE)
round(sd(pe, na.rm = TRUE),2)

# 10. Calcule a media e o desvio padrao da idade por iniciais do nome;
tapply(idade, iniciais, mean, na.rm = T) # Calculo da media

tapply(idade, iniciais, sd, na.rm = T)  # Calculo do desvio padrao

# 11. Calcule a media e o desvio padrao do conhecimento em R por 
# cidade onde reside;

tapply(conhecimentoR, reside, mean, na.rm = T) # Calculo da media

tapply(conhecimentoR, reside, sd, na.rm = T)  # Calculo do desvio padrao

# 12. Construa uma tabela com o quantitativo para a variavel "iniciais"; 
tab_iniciais <- table(iniciais)
tab_iniciais

# 13. Construa uma tabela com o quantitativo para a variavel "reside";  
tab_reside <- table(reside)
tab_reside
# 14. Construa uma tabela com o quantitativo para a variavel "fruta";  
tab_fruta <- table(fruta)
tab_fruta

# 15. Calcule os percentuais para as variaveis "iniciais", "reside",
# e "fruta" e arredonde para os resultados para 2 casas decimais;
# Percentual para iniciais do nome
perc_iniciais <- prop.table(tab_iniciais)*100
perc_iniciais
round((perc_iniciais),2)

# Percentual para residentes e nao residentes em Feira de Santana
perc_reside <- prop.table(tab_reside)*100
perc_reside
round((perc_reside),2)

# Percentual das frutas escolhidas
perc_fruta <- prop.table(tab_fruta)*100
perc_fruta
round((perc_fruta),2)

# 16. Crie um grafico do tipo Barplot para o percentuais da variavel "frutas";

# variavel "frutas";
barplot(perc_fruta)

# Como adicionar um título no grafico ?
barplot(perc_fruta,
        main = "Percentual das frutas escolhidas pelos inscritos no Curso R")

# Como adicionar rotulo no eixo y ?
barplot(perc_fruta,
        main = "Percentual das frutas escolhidas pelos inscritos no Curso R", 
        ylab = "Percentual")

# Como adicionar rotulo no eixo x ?
barplot(perc_fruta,
        main = "Percentual das frutas escolhidas pelos inscritos no Curso R", 
        ylab = "Percentual",
        xlab = "Frutas")

# Como alterar os limites do eixo y ?
barplot(perc_fruta,
        main = "Percentual das frutas escolhidas pelos inscritos no Curso R", 
        ylab = "Percentual", 
        xlab = "Frutas", 
        ylim = c(0, 60))

# Como adicionar cor as barras ?

barplot(perc_fruta,
        main = "Percentual das frutas escolhidas pelos inscritos no Curso R", 
        ylab = "Percentual", 
        xlab = "Frutas", 
        ylim = c(0, 60),
        col = c("darkblue", "royalblue", "lightblue", "white"))


# 17. Adicione a fonte dos dados no grafico Barplot;
mtext("Fonte: Dados Curso R, 2022", 
      side = 1,      # escolhe o lado do grafico (1 = inferior)
      line = 4,      # escolhe a linha
      adj = -0.05)   # ajuste na direcao da leitura


# 18. Crie um grafico do tipo Pizza para os percentuais da 
# variavel "iniciais".
pie(perc_iniciais,
    main = "Distribuição dos nomes de acordo com as iniciais",
    labels = c("A-G (42,57%)", 
               "H-N (34,46%)", 
               "O-Z (22,97%)"),
    cex = 0.75,
    col = c("darkblue", "royalblue", "lightblue", "white"))


# 19. Adicione a legenda no grafico de Pizza;
legend(
  "bottom",   # Local para posicionar a legenda (inferior)
  legend = c("A-G (42,57%)", 
             "H-N (34,46%)", 
             "O-Z (22,97%)"),
  fill = c("darkblue", "royalblue", "lightblue", "white"), # cores de preenchimento
  bty = "o",   
  horiz = T)  # cada grupo fica em uma unica linha

# 20. Crie um grafico do 'tipo Barplot' para o percentuais da 
# variavel "reside";
barplot(perc_reside,
        main ="Distribuição das pessoas por localidade",
        ylab = "Percentual", 
        xlab = "Cidade", 
        ylim = c(0, 60),
        col = c("royalblue", "lightblue"),
        col.lab = "darkblue")
