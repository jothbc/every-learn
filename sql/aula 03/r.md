1-
Neste SQL:

SELECT produtos.nome AS Produto, categorias.nome AS Categoria: Aqui, estamos selecionando o nome do produto da tabela "produtos" e o nome da categoria da tabela "categorias". Usamos AS para renomear as colunas na saída para "Produto" e "Categoria".

FROM aula03.produtos: Indica que estamos trabalhando com a tabela "produtos" do banco de dados "aula03".

INNER JOIN aula03.categorias: Aqui, estamos juntando a tabela "produtos" com a tabela "categorias". A junção é do tipo "INNER JOIN", o que significa que só retornará os registros onde há uma correspondência entre as duas tabelas.

ON produtos.categoria_id = categorias.id: Esta é a condição da junção. Estamos dizendo para juntar os registros onde o categoria_id da tabela "produtos" corresponde ao id da tabela "categorias".
```sql
SELECT produtos.nome AS Produto, categorias.nome AS Categoria
FROM aula03.produtos
INNER JOIN aula03.categorias ON produtos.categoria_id = categorias.id;
```

2-
Neste SQL:

SELECT pedidos.id AS PedidoID, produtos.nome AS Produto, itenspedido.quantidade AS Quantidade: Estamos selecionando o ID do pedido da tabela "pedidos", o nome do produto da tabela "produtos", e a quantidade da tabela "itenspedido". Usamos AS para renomear as colunas na saída.

FROM aula03.itenspedido: Estamos começando a consulta pela tabela "itenspedido" do banco de dados "aula03".

INNER JOIN aula03.produtos ON itenspedido.produto_id = produtos.id: Aqui, estamos juntando a tabela "itenspedido" com a tabela "produtos". A condição é que o produto_id em "itenspedido" corresponda ao id em "produtos".

INNER JOIN aula03.pedidos ON itenspedido.pedido_id = pedidos.id: Da mesma forma, agora estamos juntando a tabela "itenspedido" com a tabela "pedidos". A condição é que o pedido_id em "itenspedido" corresponda ao id em "pedidos".
```sql
SELECT pedidos.id AS PedidoID, produtos.nome AS Produto, itenspedido.quantidade AS Quantidade
FROM aula03.itenspedido
INNER JOIN aula03.produtos ON itenspedido.produto_id = produtos.id
INNER JOIN aula03.pedidos ON itenspedido.pedido_id = pedidos.id;
```

3-
```sql

```

4-
```sql

```

5-
```sql

```

6-
```sql

```

7-
```sql

```

8-
```sql

```

9-
```sql

```

10-
```sql

```