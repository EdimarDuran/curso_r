# Exercicio II - Modulo II -----------------------------------------

# O banco de dados que sera utilizado para executar essa atividade
# contem mais de 2.500 classificacoes de barras de chocolate de 
# todo o mundo. Essa base de dados foi retirada do Kaggle 
# (www.kaggle.com). Seu foco foi o chocolate preto puro com o 
# objetivo de apreciar os sabores do cacau quando transformado 
# em chocolate. As classificacoes nao refletem beneficios de 
# saude, missoes sociais ou status organico. Cada chocolate foi 
# avaliado a partir de uma combinacao de qualidades objetivas e 
# interpretacao subjetiva. 

# Sabores do sistema de classificacao de cacau: 
# 4,0 - 5,0 = Excelente 
# 3,5 - 3,9 = Altamente recomendado 
# 3,0 - 3,49 = Recomendado 
# 2,0 - 2,9 = Decepcionante 
# 1,0 - 1,9 = Desagradavel

# 1. Importe a base de dados "dados_chocolate.csv" para o R;

# 2. Visualize o banco de dados importado;

# 3. Visualize a estrutura do banco de dados importado;

# 4. Verifique quantas linhas e quantas colunas tem esse banco 
# de dados;

# 5. Verifique os nomes das variaveis presentes;

# 6. Altere as variaveis 'fabricante', 'local_empresa' e 'origem'
# para fator;

# 7. Verifique se foi feita a alteracao da questao 6 executando
# a funcao para visualizar a estrutura do banco de dados;

# 8. De acordo com a classificacao descrita abaixo, dos sabores do 
# sistema de classificacao de cacau, crie uma nova variavel para
# atribuir a classificacao qualitativa com base na variavel 
# 'classificacao'. Para essa nova variavel atribua o nome 
# 'class_sabores';

# 4,0 - 5,0 = Excelente 
# 3,5 - 3,9 = Altamente recomendado 
# 3,0 - 3,49 = Recomendado 
# 2,0 - 2,9 = Decepcionante 
# 1,0 - 1,9 = Desagradavel

# 9. Apos criar a nova variavel 'class_sabores', obtenha as frequencias
# absolutas para cada classificacao;

# 10. Selecione todas as colunas do banco de dados exceto a coluna 
# 'local_empresa';

# 11. Classifique os dados por ano revisado na ordem crescente;

# 12. Classifique os dados por origem, na ordem alfabetica;

# 13. Reordene a coluna 'origem' mudando-a de posicao, para que
# ela apareca antes da coluna 'fabricante';

# 14. Reordene a coluna 'ano_revisado' mudando-a de posicao, 
# para que ela apareca depois da coluna 'local_empresa';

# 15. Converta todas as variaveis do banco de dados para maiusculo;

# 16. Converta apenas a variavel 'fabricante' para maiusculo;

# 17. Converta todas as variaveis do banco de dados para minusculo;

# 18. Agrupe 4 niveis por localizacao da empresa;

# 19. Agrupe as localizacoes das empresas e conte-as;

# 20. Agrupe por localizacao das empresas, em seguida calcule as 
# medidas descrivivas: media, desvio padrao, soma, 
# mediana, variancia, valor maximo, valor minimo e tamanho,
# para a variavel 'cacau_percent' em funcao  da localizacao
# da empresas. Atribuia essas mudancas a uma nova base de dados 
# e nomeie-a como 'cho_medidas';

# 21. Visualize o banco de dados criado na questao anterior
# e execute a funcao para visualizar a estrutura desses dados;

# 22. Selecione as colunas 'origem', 'ano_revisado' e 'classificacao'
# e crie um novo banco de dados, atribuindo o nome de 'df';

# 23. Agrupe por 'fabricante' e de a frequencia absoluta para 
# cada um;

# 24. Agora aproveite o codigo da questao anterior e filtre 
# os fabricantes que apareceram acima de 20 vezes;

# 25. Filtre do novo banco de dados criado, o ano revisado > 2020,
# a origem igual a Mexico, e a classificacao >= 3.5. Com base nesse
# filtro responda, quais os fabricantes, cujo chocolate tem origem
# no Mexico apresentaram sabores do sistema de classificacao de cacau
# como 'Excelente' ?

# 26. Filtre do banco de dados 'df' os anos que tiveram acima de
# 200 revisoes.


# Fim -------------------------------------------------------------



