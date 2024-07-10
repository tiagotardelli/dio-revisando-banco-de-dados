# Operações no MongoDB

## Ferramentas de acesso
O MongoDB oferece algumas formas de conexão:
* Drivers -> para acessar as aplicações
* Compass
* Shell
* MongoDB for VS Code
* Atlas SQL


## Criando um DataBase
```json
use {{nome_do_banco}}

```
## Criando uma collection
```json
db.createCollection("usuarios")
db.createCollection("destinos")

db.usuarios.insertOne({})

```

## Inserindo Documentos

```json
db.usuarios.insertOne({})
db.usuarios.insertMany([{}])

db.usuarios.insertOne({
"nome": "Tiago",
"email": "tiagob.tardelli@gmail.com",
"idade": 37,
"data_nascimento": "1987-03-21"
})

db.usuarios.insertMany([
    {
        "nome": "Tiago",
        "idade": 37,
        "email": "contato@tiagotardelli.com.br",
        "endereco": "Rua Santa Cruz, 995 - Jardim Vera Cruz, Sorocaba/SP"
    },
    {
        "nome": "Tiago",
        "idade": 38,
        "email": "contato#tardelli@tiagotardelli.com.br",
        "endereco": "Rua Santa Cruz, 995 - Jardim Vera Cruz, Sorocaba/SP"
    },
]);
```

## Consultando Documentos
```json
db.usuarios.find({})
db.usuarios.findOne({})
db.usuarios.findOneAndUpdate({}, {})
db.usuarios.findOneAndDelete({})

db.usuarios.findOneAndUpdate({"nome": "Tiago"}, {$set: {"nome": "João"}})

```
## Atualizando Documentos

```json
db.usuarios.updateMany({"nome": "Tiago"}, {$set: {"idade": 37}})
db.usuarios.updateMany({"nome": "Tiago"}, {$set: {"viagens": 0}})
db.usuarios.updateMany({"nome": "Tiago"}, {$inc: {"viagens": 1}})
db.usuarios.updateMany({"nome": "Tiago"}, {$inc: {"viagens": 2}})

db.usuarios.updateMany({"nome": "Tiago"}, {$set: {"interesses": ["culinaria"]}})
db.usuarios.updateMany({"nome": "Tiago"}, {$push: {"interesses": "kart"}})
```
Operadores:
* $inc
* $push
* $set
* $unset
* $rename

## Exluindo Documentos
```json
db.usuarios.deleteOne({})
db.usuarios.deleteMany({})


db.usuarios.deleteOne({"nome": "Tiago"})
db.usuarios.deleteMany({"nome": "Tiago"})
```

## Consultas Simples

### Igualdade
Realizar consultas baseadas em um valor específico para um campo.

```json
db.usuarios.find({"endereco.cidade": "São Paulo"})
```

### Operadores Lógicos
Realizar consultas baseadas em um valor específico para um campo.
* $and
* $or
* $not
           
```json
{idade:37}
{$and: [{nome:"Tiago"}, {idade:37}]
{$and: [{nome:"Tiago"}, {idade: {$eq: 37}}]}
{$and: [{idade: {$ne: 17}}]}
{$or: [{nome:"Tiago"}, {idade: {$eq: 37}}]}
{idade: {$gt:30}}
{idade: {$gte:30}
{idade: {$lt:30}}}

{idade:  {$not: {$eq: 37}}}

{cidade: {$in: ["São Paulo", "Belo Horizonte"]}}
```

### Operadores de Comparação
* $eq:  ==
* $ne: !=
* $gt: >
* $gte: >=
* $lt: <
* $lte: <=
* $in: []
* $nin: []

### Projeções
Definir quais campos devem ser retornados em uma consulta.

```json
db.usuario.find({cidade: {$nin: ["São Paulo", "Belo Horizonte"]}}, {nome:1})
```

### Ordenação
Ordenar os resultados de uma consulta com base em um ou mais campos.

```json
db.usuarios.find({"cidade": {$in: ["Sorocaba", "Piedade"]}}, {nome:1}).sort({idade:1})
```

### Limitação
Limitar o número de documentos retornados em uma consulta.

### Paginação

```json
db.usuarios.find().skip(10).limit(5)
```





[Documentação do MongoDB](https://www.mongodb.com/docs/manual/introduction/)

