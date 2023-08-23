1-
```sql
SELECT c.nome AS nome_curso, COUNT(a.id) AS total_alunos
FROM cursos c
LEFT JOIN alunos a ON c.id = a.curso_id
GROUP BY c.nome;
```