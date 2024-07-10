CREATE TABLE usuarios_nova (
	id INT,
    nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'E-mail do usuário',
    endereco VARCHAR(255) NOT NULL COMMENT 'Endereço completo do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário'
);

/

# migrando dados
INSERT INTO usuarios_nova (id, nome, email, data_nascimento, endereco)
SELECT id, nome, email, data_nascimento, endereco
  FROM usuarios;

/

DROP TABLE usuarios;

/

ALTER TABLE usuarios_nova RENAME usuarios;

/

ALTER TABLE usuarios MODIFY COLUMN endereco VARHCHAR(150);