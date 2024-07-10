# Consultas Avançadas

## Junções: JOINs
São usadas no SQL para combinar dados de duas ou mais tabelas relacionadas em um única consulta
Tipos:
* INNER JOIN
* LEFT JOIN ou LEFT OUTER JOIN
* RIGHT JOIN ou RIGHT OUTER JOIN
* FULL JOIN ou FULL OUTER JOIN

### INNER JOIN
Retorna apenas as linhas que têm correspondência em ambas as tabelas envolvidas na junção. A junção é feita com base
em uma condição de igualdade especificada na cláusula ON

![INNER JOIN](representa_inner_join.png)

```sql
SELECT * 
  FROM tabela1
 INNER JOIN tabela2 ON tabela1.coluna - tabela2.coluna;
```

## LEFT JOIN
Retorna todas as linhas da tabela à esquerda da junção e as linhas correspondentes da tabela à direita. Se não houver
correspondência, os valores da tabela à direita serão NULL

![LEFT JOIN](representa_left_join.png)

```sql
SELECT * 
  FROM tabela1
 LEFT JOIN tabela2 ON tabela1.coluna - tabela2.coluna;
```

## RIGHT JOIN
Retorna todas as linhas da tabela à direita da junção e as linhas correspondentes da tabela à esquerda. Se não houver
correspondência, os valores da tabela à esquerda serão NULL

![RIGHT JOIN](representa_right_join.png)


```sql
SELECT * 
  FROM tabela1
 RIGHT JOIN tabela2 ON tabela1.coluna - tabela2.coluna;
```
## FULL JOIN
Retorna todas as linhas de ambas as tabelas envolvidas na junção, combinando-as com base em uma condição de igualdade.
Se não houver correspondência, os valores ausentes serão preenchidos com NULL

![FULL JOIN](representa_full_join.png)

```sql
SELECT * 
  FROM tabela1
 FULL JOIN tabela2 ON tabela1.coluna - tabela2.coluna;
```

## Subconsultas
Elas permitem realizar consultas mais complexas permitindo que você use o resultado de uma consulta como entrada para
outra consulta.
As subconsultas podem ser usadas em várias partes de uma consulta:
* SELECT
* FROM
* WHERE
* HAVING
* JOIN

## Funções Agregadas ou Agregadoras
* COUNT: Conta o número de registros
* SUM: Soma os valores de uma coluna numérica
* AVG: Calcula a média dos valores de uma coluna numérica
* MIN: Retorna o valor mínimo de uma coluna
* MAX: Retorna o valor máximo de uma coluna

## Agrupamento de Resultados
```sql
SELECT ...
  FROM ...
GROUP BY
```

## Ordenação de Resultados
```sql
SELECT ...
  FROM ...
ORDER BY
```

## Análise do Plano de Execução
Elas nos permite examinar as operações realizadas, as tabelas acessadas, os índices utilizados e outras informações
importantes para identificar  possíveis melhorias de desempenho.

```sql
EXPLAIN
  SELECT *
    FROM {{tabela}}
```
Tipos de retornos:
* select_type: "SIMPLE", "SUBQUERY", "JOIN"
* table
* type: "ALL", "INDEX" entre outros
* possible_keys: Os índices possíveis que podem ser utilizados na operação
* key: O índice utilizado na operação, se aplicável
* key_len: O comprimento do índice utilizado
* ref: As colunas ou constantes usadas para acessar o índice
* rows

## Índices de Busca
Esses recursos são fundamentais para melhorar o desempenho das consultas e otimizar a recuperação de informações em
banco de dados

```sql
CREATE INDEX {{nome_index}}
    ON {{tabela}} ({{coluna1, coluna2}});
```