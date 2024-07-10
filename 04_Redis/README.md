# O que é Redis?
O Redis é um sistema de armazenamento de dados em memória de alto desempenho.


# Principais Características do Redis
* Armazenamento em Memória
* Estrutura de Dados Versátil
* Operações Atômicas
* Cache de Alto Desempenho
* Pub / Sub (Publicação/Assinatura)

# Principais Utilizações do Redis
* Cache de Dados
* Filas de Mensagens
* Contagem de Acessos e Esatísticas em Tempo Real
* Gerenciamento de Sessões
* Cache de Resultado de Consultas

# Principais Comandos
* SET
* GET
* DEL
* EXISTS
* KEYS
* INCR
* DECR

```
SET nome "Tiago"
SET nome2 "Vanessa"

GET nome

GET nome_2

KEYS nome*

SET nome_3 "Maria"

DEL nome

EXPIRE nome_2 1

EXPIRE nome_3 10

SET nome "Tiago"

EXPIRE nome 15

TTL nome

EXISTS nome

SET acessos 1

GET acessos

INCR acessos

DECR acessos

LPUSH usuarios "Pamela", "Joao", "Maria"

LRANGE usuarios 0 -1

LPUSH usuarios "Rebeca"

LLEN usuarios

```

[Site Redis para teste](https://app.redislabs.com/#/databases)