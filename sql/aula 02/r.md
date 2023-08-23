1 -
```sql
SELECT *
FROM produtos
WHERE preco > 50 AND estoque < 10;
```

2-
```sql
SELECT *
FROM alunos
WHERE idade >= 18 AND curso_id = 2;
```

3-
```sql
SELECT *
FROM produtos
ORDER BY nome;
```

4-
```sql
SELECT *
FROM alunos
ORDER BY idade DESC;
```

5-
```sql
SELECT AVG(idade) AS media_idade
FROM alunos;
```

6-
```sql
SELECT categoria, MAX(preco) AS preco_maximo
FROM produtos
GROUP BY categoria;
```

7-
```sql
SELECT CONCAT(nome, ' ', sobrenome) AS nome_completo
FROM alunos;
```

8-
```sql
SELECT UPPER(nome) AS nome_maiusculo, preco
FROM produtos
ORDER BY preco;
```

9-
```sql
SELECT AVG(preco) AS media_preco
FROM produtos;
```

10-
```sql
SELECT *
FROM produtos
ORDER BY preco DESC
LIMIT 1;
```