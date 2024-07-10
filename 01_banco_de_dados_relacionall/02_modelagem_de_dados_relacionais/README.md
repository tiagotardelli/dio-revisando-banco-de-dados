# Ambiente para Aprendizagem

Gratuito por 7 dias somente

https://clients.cloudclusters.io/

# Tabelas, Colunas e Registros

## Tabelas
Ela é usada para armazenar dados de forma organizada. Cada tabela em um banco de dados relacional tem um nome único
e é dividida em colunas e linhas.

## Colunas
Uma coluna é uma estrutura dentro de uma tabela que representa um atributo específico dos dados armazenados. Cada
coluna tem um nome único e um tipo de dados associado que define o tipo de informação que pode ser armazenado nela,
como números, textos, datas, etc.

## Registro
Um registro, também conhecido como linha ou tupla, é uma instância individual de dados de uma tabela.

## Tipos de Dados
Os dados podem variar muito entre os diversos SGBD, os mais comuns são:
* Inteiro (integer)
* Decimal/Numérico (Decimal/Numeric)
* Caractere/Varchar (Character/Varchar)
* Data/Hora (Date/Time)
* Booleano (Boolean)
* Texto longo (Text)

## Comando: CREATE TABLE
```sql
CREATE TABLE{{nome}}

        ({{coluna}} {{tipo}} {{opções} COMMENT}
        {{'COMENTARIO'}});
```

Opções:
* Restrições de valor: NOT NULL, UNIQUE, DEFAULT
* Cahves primárias e estrangeiras
* Auto Incremento

## Comando: INSERT
```sql
INSERT INTO
    {{nome_tabela}}
    ([coluna1, coluna2, ...]) *** você pode ocultar as colunas
VALUES
    ([valor1, valor2, ...]);
```

## Comando: SELECT e SELECT com WHERE
```sql
SELECT {{lista_colunas}} 
  FROM tabela; 
# * retorna todas as colunas

SELECT {{lista_colunas}} 
  FROM {{tabela}}
 WHERE {{condicao}}; 
```
Operadores:
* = (igualdade)
* <> ou != (desigualdade)
* > (maior que)
* < (menor que)
* >= (maior ou igual que)
* <= (menor ou igual que)
* LIKE (pertence a uma lista de valores)
* BETWEEN (dentro de um intervalo)
* AND (e lógico)
* OR (ou lógico)

## Comandos: UPDATE e DELETE
```sql
UPDATE {{tabela}}
   SET
        {{coluna_1}} = {{novo_valor_1}},
        {{coluna_2}} = {{novo_valor_2}}
 WHERE
        {{condicao}};
# O WHERE é opcional, mas altamente usado. Sem WHERE atualiza todos os dados da coluna na tabela


DELETE FROM
    {{tabela}}
WHERE
    {{condicao}};
# O WHERE é opcional, mas altamente usado. Sem WHERE deleta todos os dados da tabela

```

## Comando: DROP TABLE
DROP TABLE é usado em SQL para remover uma tabela existente no banco de dados. Ele exclui permanentemente a tabela.
```sql
DROP TABLE {{tabela}};
```

## Comando: ALTER TABLE
ALTER TABLE é usada em SQL para modificar a estrutura de uma tabela existente em um banco de dados.
Ela permite:
* Adicionar, alterar ou excluir colunas
* Modificar as restrições, índices
* Reonomear a tabela entre outras alterações

## Chaves Primárias
* Identifica exclusivamente
* Não pode conter valores nulos (NULL)
* Uma tabela pode ter apenas uma chave primária

```sql
CREATE TABLE {{tabela}} (
    {{nome_da_coluna}} PRIMARY KEY AUTOINCREMENT,
    ...
);

ALTER TABLE {{tabela}}
MODIFY COLUMN {{nome_da_coluna}} INT PRIMARY KEY;
```
 
## Chaves Estrangeiras
Ela é usada para estabelecer e manter a integridade dos dados entre tabelas relacionadas
* Pode ser nula (NOT NULL); ** registro órfão
* É possível ter mais de uma (ou nenhuma) em uma tabela

```sql
CREATE TABLE {{tabela}} (
    {{nome_da_coluna}} PRIMARY KEY AUTOINCREMENT,
    {{chave_estrangeira}} INT,
    FOREIGN KEY ({{chave_estrangeira}}) REFERENCES {{outra_tabela}} ({{chave_primaria}});
);

ALTER TABLE {{tabela}}
ADD CONSTRAINT {{nome_constraint}}
FOREIGN KEY ({{chave_estrangeira}})
REFERENCES {{outra_tabela}} ({{chave_primaria}});
```
Restrições:
* ON DELETE especifica o que acontece com os registros dependentes quando um registro pai é excluído
* ON UPDATE define o comportamento dos registros dependentes quando um registro pai é atualizado
* CASCADE, SET NULL, SET DEFAULT e RESTRICT