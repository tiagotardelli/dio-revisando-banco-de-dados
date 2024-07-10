EXPLAIN
    SELECT *
      FROM usuarios
     WHERE email = "joao.silva@exemplo.com";

/

EXPLAIN
    SELECT *
      FROM usuarios
     WHERE nome = "João Silva";
    
/

CREATE INDEX idx_nome ON usuarios (nome);

/

EXPLAIN
    SELECT *
      FROM usuarios
     WHERE nome = "João Silva";