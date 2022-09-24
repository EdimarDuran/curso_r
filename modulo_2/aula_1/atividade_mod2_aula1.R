
# Exercicio I - Modulo II -----------------------------------------

# 1. Importe a base de dados "dados_esportes.xls" para o R;

# 2. Visualize o banco de dados importado;

# 3. Verifique quantas linhas e quantas colunas tem esse banco de dados;

# 4. Verifique os nomes das variaveis presentes;

# 5. Verifique a estrutura do banco de dados;

# 6. Selecione a coluna 'cidade'.

# 7. Selecione somente as colunas 'nome', 'cidade' e 'esporte'.

# 8. Selecione todas as colunas exceto a coluna 'sexo';

# 9. Selecione todas as colunas exceto as colunas 'cidade' e 'esporte'.

# 10. Selecione a ultima variavel do banco de dados.

# 11. Selecione a primeira e a ultima linha do banco de dados.

# 12. Selecione a linha '10' do banco de dados.

# 13. Selecione os valores maximos e minimos para a variavel 'idade'.

# 14. Classifique os dados por idade do mais velho para o mais novo 
# (ou seja, em ordem decrescente. Qual das pessoas é o mais velho(a)?

# 15. Classifique os dados por nome, do primeiro ao ultimo na 
# ordem alfabetica.

# 16. Classifique os dados por cidade, depois sexo, finalmente, 
# por esporte.

# 17. Mostre a frequencia absoluta de pessoas para cada sexo;

# 18. Mostre a frequencia absoluta de pessoas para cada cidade;

# 19. Mostre a frequencia absoluta de pessoas para cada esporte;  

# 20. Mantenha todas as colunas, mas reorganize-as para que o sexo 
# seja a primeira coluna.

# 21. Filtre as pessoas do sexo masculino e que o esporte seja 'ciclismo'.

# 22. Use o filtro para descobrir quantas pessoas possuem idade 
# inferior ou igual a 20 anos.

# 23. Use o filtro para saber quantas pessoas possuem idade <= 20 anos, 
# e gostam do esporte ciclismo.

# 24. O objetivo do codigo abaixo era filtrar da base de dados 
# apenas as pessoas que responderam residir na cidade de Salvador. 
# Tente corrigir a tentativa de realizar esse fitro, e descobrir
# porque o codigo nao roda.
dados_esportes %>% 
  filter(cidade == Salvador)

