INSERT INTO destinos (nome, descricao)
VALUES ("Destino sem reservas", "Descricao");

/
SELECT *
  FROM reservas rs
 RIGHT JOIN destinos ds ON rs.id_destino = ds.id;
