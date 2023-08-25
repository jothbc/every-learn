[] Introdução à manipulação de dados
  [] O comando INSERT
   |-[] Inserindo registros em uma tabela
   |-[] Especificando colunas na inserção
  [] O comando SELECT
   |-[] Selecionando todas as colunas
   |-[] Especificando colunas a serem exibidas
   |-[] Uso da cláusula WHERE para filtrar resultados
  [] O comando UPDATE
   |-[] Atualizando registros
   |-[] Uso da cláusula WHERE na atualização
  [] O comando DELETE
   |-[] Deletando registros de uma tabela
   |-[] A importância de usar a cláusula WHERE ao deletar
  
[] Operadores Lógicos e de Comparação
  [] BETWEEN = where BETWEEN '2023-05-07' AND '2023-08-02'
  [] LIKE = where like 'joao' | where like '%joao'...
  [] IN = where id in (1,33,50)
    
[] Ordenação de Resultados
[] Funções de agregação | Uso de Funções
   |-[] COUNT, SUM, AVG, MIN, MAX
   |-[] Uso de Funções de Texto:
      |-[] CONCAT
      |-[] UPPER
[] Funções de agregação 2
  |-[] GROUP BY


-----------------------------------------------------

[] Manipulação de datas
  [] Como funciona o timestamp
  [] Utilizando comparadores lógicos (> , <) para filtar select de datas
  [] Conhecendo o MONTH()
    [] Exibindo em uma coluna resultante de um select
    [] Utilizando em um where
  [] Conhecendo o CURDATE() e o NOW()
    [] CURDATE() => YYYY-MM-DD
    [] NOW() => YYYY-MM-DD HH:MM:SS
  [] Conhecendo o DATEDIFF
    [] DATEDIFF(end_date, start_date)
  [] Conhecendo o INTERVAL
    [] INTERVAL 10 DAY
      [] DAY, MONTH, YEAR, HOUR, MINUTE, SECOND
  [] Conhecendo o DATE_SUB
    [] DATE_SUB(date, INTERVAL expr unit) => SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH);
  [] Conhecendo o DATE_ADD
    [] DATE_ADD(date, INTERVAL expr unit) => SELECT DATE_ADD(CURDATE(), INTERVAL 3 MONTH);

  [] Conhecendo o DATE_FORMAT
    [] %d: Dia do mês com dois dígitos (01, 02, ..., 31).
    [] %m: Mês com dois dígitos (01, 02, ..., 12).
    [] %Y: Ano com quatro dígitos.
    [] %y: Ano com dois dígitos.
    [] %H: Hora (00 a 23).
    [] %i: Minutos (00 a 59).
    [] %s: Segundos (00 a 59).
    [] SELECT DATE_FORMAT(NOW(), '%d/%m/%Y %H:%i:%s');
