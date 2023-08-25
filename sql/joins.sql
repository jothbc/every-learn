/*
CROSS JOIN

Tabela cores:
id	cor
1	Azul
2	Verde

Tabela tamanhos:
id	tamanho
1	Pequeno
2	Médio
3	Grande
*/
SELECT cores.cor, tamanhos.tamanho
FROM cores
CROSS JOIN tamanhos;
/*
cor	tamanho
Azul	Pequeno
Azul	Médio
Azul	Grande
Verde	Pequeno
Verde	Médio
Verde	Grande
*/

--------------------------------------------------------------------------------------

/*
LEFT JOIN


Tabela clientes:
id	nome
1	Maria
2	João
3	Ana

Tabela pedidos:
id	cliente_id	produto
1	1	TV
2	1	Geladeira
3	3	Notebook
*/
SELECT clientes.nome, pedidos.produto
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;
/*
nome	produto
Maria	TV
Maria	Geladeira
João	NULL
Ana	Notebook*/

--------------------------------------------------------------------------------------

/*
RIGHT JOIN

Tabela clientes:
id	nome
1	Maria
2	João
3	Ana

Tabela pedidos:
id	cliente_id	produto
1	1	TV
2	1	Geladeira
3	3	Notebook
4	4	Cadeira
*/
SELECT clientes.nome, pedidos.produto
FROM clientes
RIGHT JOIN pedidos ON clientes.id = pedidos.cliente_id;
/*
nome	produto
Maria	TV
Maria	Geladeira
NULL	Cadeira
Ana	Notebook
*/


--------------------------------------------------------------------------------------
/*
SELF JOIN

Tabela funcionarios:
id	nome	id_gerente
1	Carlos	NULL
2	Roberto	1
3	Luciana	1
4	Mariana	2
5	José	2
*/
SELECT f1.nome AS Funcionario, f2.nome AS Gerente
FROM funcionarios AS f1
LEFT JOIN funcionarios AS f2 ON f1.id_gerente = f2.id;
/*
Funcionario	Gerente
Roberto	Carlos
Luciana	Carlos
Mariana	Roberto
José	Roberto
Carlos	NULL
*/


--------------------------------------------------------------------------------------

/*
FULL JOIN

Tabela orders:
order_id	customer_id	product
1	101	Laptop
2	102	Mouse
3	103	Keyboard

Tabela customers:
customer_id	customer_name
101	Ana
102	Bruno
104	Camila
*/
-- Simulando um FULL JOIN
SELECT o.order_id, o.product, c.customer_name
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id

UNION

SELECT o.order_id, o.product, c.customer_name
FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.customer_id;
/*
order_id	product	customer_name
1	Laptop	Ana
2	Mouse	Bruno
3	Keyboard	NULL
NULL	NULL	Camila
*/