CREATE TABLE viagens.destinos (
	id INT,
    nome VARCHAR(255) NOT NULL UNIQUE COMMENT 'Nome do destino',
    descricao VARCHAR(255) NOT NULL COMMENT 'Descrição do destino'
);