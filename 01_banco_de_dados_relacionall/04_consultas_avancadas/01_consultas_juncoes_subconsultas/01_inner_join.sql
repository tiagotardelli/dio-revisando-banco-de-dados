SELECT *
  FROM usuarios us
 INNER JOIN reservas re ON us.id = re.id;

 /
SELECT *
  FROM usuarios us
 INNER JOIN reservas rs ON us.id = rs.id
 INNER JOIN destino ds ON rs.id = ds.id;
 ;

/

INSERT INTO usuarios (nome, email, data_nascimento, rua, numero, cidade, estado, pais)
VALUES ("sem reservas", "dio@teste.com", "1992-05-05", "rua", "12", "cidade", "estado");

/

SELECT *
  FROM usuarios us
 INNER JOIN reservas re ON us.id = re.id;