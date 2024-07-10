INSERT INTO reservas (id_usuario, id_destino)
VALUES (1, 3);

/

SELECT COUNT(*)
     , id_destino
  FROM reservas
GROUP BY id_destino;