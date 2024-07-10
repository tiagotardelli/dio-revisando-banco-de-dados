# O que é um Banco de Dados não relacional?
* Termo correto: NOT Only SQL
* Não seguem modelo de tabelas e relacionamentos
* Projetados para lidar com alto volume de dados, alta escalabilidade
* Alta flexibilidade na estrutura de dados
* Eles são amplamente utilizados em cenários onde a consistência imediata dos dados não é crítica

# Diferenças
|SQL                                | NoSQL|
| ---                               | --- |
| Modelo de dados fixo              | Modelo de dados flexivel|
| Escabilidade vertical (hardware)  | Escabilidade horizontal|
| Transações ACID 100%              | Transações ACID ausentes total ou parcial|
|Linguagem de consulta SQL          | Cada SGBD tem sua própria|

# Vantagens dos bancos de dados NoSQL
* Flexibilidade na modelagem
* Alta escabilidade
* Melhor desempenho em cenário de consulta intensiva
* Tolerância a falhas

# Desbvantagens dos banco de dados NoSQL
* Menor consistência de dados imediata
* Menor suporte a consultas complexas ** depende do SGBD

# Tipos de Armazenamento:
* Key-Value
* Documento
* Coluna
* Grafos
* entre outros ...

## Key-Value > Chave Valor
Armazena dados como pares de chave e valor, onde cada chave é um identificador único para acessar o valor
correspondente
Exemplo de SGBD: Redis, Riak, Amaon DynamoDB
Uso: Um site pode usar um banco de dados Redis para armazenar informações de sessão de usuário.

## Document > Documento
Armazena dados em documentos semiestruturados, geralmente em formato JSON ou BSON
Exemplo de SGBD: MongoDB, Couchbase, Apache CouchDB
Uso: Um catálogo de e-commerce pode usar o MongoDB para armazenar informações de produtos, como nome, descrição, preço
e atributos adicionais.

## Coluna
Armazenam dados em formato de colunas, o que permite alta escalabilidade e eficiência em determinados tipos de consultas
Exemplo de SGBD: Apache Cassandra, ScyllaDB, HBase
Uso: Um sistema de registro de aplicativos pode usar o Apache Cassandra para armazenar regisros de log.

## Grafo
Armazenar e consultar dados interconectados, onde os relacionamentos entre os dados são tão importantes quanto os 
próprios dados
Exemplo de SGBD: Neo4j, Amazon Neptune, JanusGraph
Uso: Uma rede social pode usar o Neo4j para armazenar os perfis dos usuários e suas conexões, permitindo consultas
eficientes para econtrar amigos em comum.