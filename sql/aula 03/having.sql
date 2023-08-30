select 
  max(preco), 
  min(estoque), 
  categoria, 
  count(*) as total_produtos 
from 
  produtos 
where preco > 150 
group by categoria 
having total_produtos < 3;