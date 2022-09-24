
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
# 2. Visualize o banco de dados importado;
# 3. Verifique quantas linhas e quantas colunas tem esse banco de dados;
# 4. Verifique os nomes das variaveis presentes;
# 5. Verifique a classe de cada variavel;
# 6. Verifique a estrutura do banco de dados;
# 7. Altere as variaveis "altura", "idade", "peso" e "pe" para "numeric";
# 8. Transforme as colunas em objetos;
# 9. Calcule a media e o desvio padrao para as variaveis:
# "conhecimentoR", "conhecimentoEst", "altura", "idade", 
# "peso", e "pe". Para cada valor encontrado, arredonde
# para duas casas decimais apos a virgula;
# 10. Calcule a media e o desvio padrao da idade por iniciais do nome;
# 11. Calcule a media e o desvio padrao do conhecimento em R por 
# cidade onde reside;
# 12. Construa uma tabela com o quantitativo para a variavel "iniciais"; 
# 13. Construa uma tabela com o quantitativo para a variavel "reside";  
# 14. Construa uma tabela com o quantitativo para a variavel "fruta";  
# 15. Calcule os percentuais para as variaveis "iniciais", "reside",
# e "fruta" e arredonde para os resultados para 2 casas decimais;
# 16. Crie um grafico do tipo Barplot para o percentuais da 
# variavel "frutas";
# 17. Adicione a fonte dos dados no grafico Barplot;
# 18. Crie um grafico do tipo Pizza para os percentuais da 
# variavel "iniciais".
# 19. Adicione a legenda no grafico de Pizza;
# 20. Crie um grafico do 'tipo Barplot' para o percentuais da 
# variavel "reside";

# Resolução da Atividade I do módulo I ----------------------------

# 1. Importe a base de dados "dados_inscritos.xls" para o R;
library(readxl)
dados_inscritos <- read_excel("aula_2_-_27-08/dados_inscritos.xlsx")

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
str(dados_inscritos) # mostra a estrutura

# 7. Altere as variaveis "altura", "idade", "peso" e "pe" para numeric;
dados_inscritos$altura <- as.numeric(dados_inscritos$altura)
class(dados_inscritos$altura)

dados_inscritos$idade <- as.numeric(dados_inscritos$idade)
class(dados_inscritos$idade)

dados_inscritos$peso <- as.numeric(dados_inscritos$peso)
class(dados_inscritos$peso)

dados_inscritos$pe <- as.numeric(dados_inscritos$pe)
class(dados_inscritos$pe)

str(dados_inscritos) # visualizando a estrutura 

# Funcao "na.exclude()"
dados_2 <- na.exclude(dados_inscritos) # exclui os NA
str(dados_2) # visualiza a estrutura novamente

# 8. Transforme as colunas como objetos;
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

# 12. Construa uma tabela com o quantitativo para a variavel "inciais"; 
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

# 16. Crie um grafico do tipo Barplot para o percentuais da 
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
pie(perc_iniciais)

# Como adicionar um título no grafico ?
pie(perc_iniciais,   
    main = "Distribuição dos nomes de acordo com as iniciais")

# Como adicionar os rotulos no grafico ?
pie(perc_iniciais,   
    main = "Distribuição dos nomes de acordo com as iniciais", 
    labels = c("A-G (42,57%)", 
               "H-N (34,46%)", 
               "O-Z (22,97%)"))

# Como alterar o tamanho dos rotulos ?
pie(perc_iniciais,   
    main = "Distribuição dos nomes de acordo com as iniciais", 
    labels = c("A-G (42,57%)", 
               "H-N (34,46%)", 
               "O-Z (22,97%)"),
    cex = 0.75)

# Como alterar as cores do grafico ?
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
barplot(perc_reside)

# Como adicionar um título no grafico ?
barplot(perc_reside,
        main = "Distribuição das pessoas por localidade")

# Como adicionar rotulo no eixo y ?
barplot(perc_reside,
        main = "Distribuição das pessoas por localidade", 
        ylab = "Percentual")

# Como adicionar rotulo no eixo x ?
barplot(perc_reside,
        main = "Distribuição das pessoas por localidade", 
        ylab = "Percentual", 
        xlab = "Cidade")

# Como alterar os limites do eixo y ?
barplot(perc_reside,
        main = "Distribuição das pessoas por localidade", 
        ylab = "Percentual", 
        xlab = "Cidade",
        ylim = c(0, 80))

# Como adicionar cor as barras ?
barplot(perc_reside,
        main = "Distribuição das pessoas por localidade", 
        ylab = "Percentual", 
        xlab = "Cidade", 
        ylim = c(0, 80), 
        col = c("royalblue", "lightblue"))

# Como alterar as cores dos rotulos de cada eixo ?
barplot(perc_reside,
        main = "Distribuição das pessoas por localidade", 
        ylab = "Percentual", 
        xlab = "Cidade", 
        ylim = c(0, 80), 
        col = c("royalblue", "lightblue"), 
        col.lab = "darkblue")


# -----------------------------------------------------------------

# Imagine que voce deseja obter um grafico que seja possivel visualizar
# a frequencia das respostas para cada variavel numerica.

str(dados_2) # visualizando a estrutura do banco de dados novamente 

# Funcao "hist()"
# Histograma do conhecimento em Estatistica
hist(conhecimentoEst)

# Como adicionar um título no grafico ?
hist(conhecimentoEst,
     main = "Histograma do conhecimento em Estatística")

# Como adicionar nome no eixo y ?
hist(conhecimentoEst,
     main = "Histograma do conhecimento em Estatística",
     ylab = "Frequência")

# Como adicionar nome no eixo x ?
hist(conhecimentoEst,
     main = "Histograma do conhecimento em Estatística",
     ylab = "Frequência", 
     xlab = "Conhecimento em Estatística")

# Como alterar os limites do eixo y ?
hist(conhecimentoEst,
     main = "Histograma do conhecimento em Estatística",
     ylab = "Frequência", 
     xlab = "Conhecimento em Estatística",
     ylim = c(0, 50),
     xlim = c(0,10))

# Como adicionar cor as barras do grafico ?
hist(conhecimentoEst,
     main = "Histograma do conhecimento em Estatística",
     ylab = "Frequência", 
     xlab = "Conhecimento em Estatística",
     ylim = c(0, 40), 
     col = c("darkgreen"))

# Histograma do conhecimento em R
hist(conhecimentoR)

# Como adicionar um título no grafico ?
hist(conhecimentoR,
     main = "Histograma do conhecimento em R")

# Como adicionar nome no eixo y ?
hist(conhecimentoR,
     main = "Histograma do conhecimento em R",
     ylab = "Frequência")

# Como adicionar nome no eixo x ?
hist(conhecimentoR,
     main = "Histograma do conhecimento em R",
     ylab = "Frequência", 
     xlab = "Conhecimento em R")

# Como alterar os limites do eixo y ?
hist(conhecimentoR,
     main = "Histograma do conhecimento em R",
     ylab = "Frequência", 
     xlab = "Conhecimento em R",
     ylim = c(0, 100))

# Como alterar os limites do eixo x ?
hist(conhecimentoR,
     main = "Histograma do conhecimento em R",
     ylab = "Frequência", 
     xlab = "Conhecimento em R",
     ylim = c(0, 100),
     xlim = c(0, 10))

# Como adicionar cor as barras do grafico ?
hist(conhecimentoR,
     main = "Histograma do conhecimento em R",
     ylab = "Frequência", 
     xlab = "Conhecimento em R",
     ylim = c(0, 100),
     xlim = c(0, 10),
     col = c("orange"))

# Histograma do peso dos participantes do curso
hist(peso)

hist(peso,
     main = "Histograma dos pesos (em kg) dos participantes do curso",
     ylab = "Frequência", 
     xlab = "Pesos (em kg) dos participantes",
     ylim = c(0, 50),
     xlim = c(20, 140),
     col = c("yellow"))

# Histograma do tamanho do pe dos participantes do curso
hist(pe)

hist(pe,
     main = "Histograma do tamanho do pé dos participantes do curso",
     ylab = "Frequência", 
     xlab = "Tamanho do pé dos participantes",
     ylim = c(0, 50),
     xlim = c(32, 46),
     col = c("cyan"))

# Imagine que voce gostaria de visualizar os quatro graficos em só janela,
# como fazer isso?

# Funcao "par()"
par(mfrow=c(2,2)) # divide a janela grafica
# 2 = significa 2 linhas; 
# 2 = signifca 2 colunas
# Porem, se fossem so 2 graficos, um do lado do outro, seria "par(mfrow = c(1,2))"

# Entao, apos rodar a funcao "par(mfrow=c(2,2))", rodaremos o 
# codigo de cada grafico que desejamos incluir na janela grafica

hist(conhecimentoEst,
     main = "Histograma do conhecimento em Estatística",
     ylab = "Frequência", 
     xlab = "Conhecimento em Estatística",
     ylim = c(0, 40), 
     col = c("darkgreen"))

hist(conhecimentoR,
     main = "Histograma do conhecimento em R",
     ylab = "Frequência", 
     xlab = "Conhecimento em R",
     ylim = c(0, 100),
     xlim = c(0, 10),
     col = c("orange"))

hist(peso,
     main = "Histograma dos pesos (em kg) dos participantes do curso",
     ylab = "Frequência", 
     xlab = "Pesos (em kg) dos participantes",
     ylim = c(0, 50),
     xlim = c(30, 140),
     col = c("yellow"))

hist(pe,
     main = "Histograma do tamanho do pé dos participantes do curso",
     ylab = "Frequência", 
     xlab = "Tamanho do pé dos participantes",
     ylim = c(0, 50),
     xlim = c(32, 46),
     col = c("cyan"))

# Agora imagine que voce gostaria de visualizar a quantidade de pessoas
# inscritas no curso residentes ou nao em Feira de Santana e o nivel
# de conhecimento em Estatistica.

par(mfrow=c(1,1)) 

# Funcao "boxplot()"
boxplot(conhecimentoEst ~ reside)
boxplot(conhecimentoEst ~ reside,
        main = "Conhecimento em Estatística por local onde reside", 
        ylab = "Conhecimento em Estatística", 
        xlab = "Local onde reside", 
        col = c("salmon1"))  

# E se voce desejasse visualizar graficamente a relacao da idade das
# pessoas inscritas no curso e a fruta escolhida, como fazer ?

boxplot(idade ~ fruta)
boxplot(idade ~ fruta,
        main = "Idade dos participantes do curso por escolha da fruta", 
        ylab = "Idade dos participantes", 
        xlab = "Fruta escolhida", 
        col = c("purple"))  

par(mfrow=c(1,2)) # visualizar os dois boxplot em uma única janela grafica

# Agora imagine que voce deseja saber a relacao entre os conhecimentos 
# em estatistica e os conhecimentos em R.

# Funcao "plot()"
plot(conhecimentoEst, conhecimentoR)
plot(conhecimentoEst, conhecimentoR,
     main = "Diagrama de Dispersão", 
     ylab = "Conhecimento em R", 
     xlab = "Conhecimento em Estatística",
     pch = 21,  # caracter do ponto
     cex = 0.5, # tamanho dos pontos
     col = c("red4"))

# E se voce desejar saber a relacao entre a idade e o tamanho do pé:
plot(idade, peso)
plot(idade, peso,
     main = "Diagrama de Dispersão", 
     ylab = "Peso (em Kg)", 
     xlab = "Idade (em anos)",
     pch = 18,
     cex = 0.75,
     col = c("blue"))

# Suponha que voce tamabem deseja saber a relacao entre o tamanho 
# do pe e o peso:
plot(pe, peso)
plot(pe, peso,
     main = "Diagrama de Dispersão", 
     ylab = "Peso (em Kg)", 
     xlab = "Tamanho do pé",
     pch = 20, 
     cex = 1,  
     col = c("orange"))

