CREATE TABLE usuarios (
	id INT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'E-mail do usuário',
    endereco VARCHAR(50) NOT NULL COMMENT 'Endereço completo do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário'
);