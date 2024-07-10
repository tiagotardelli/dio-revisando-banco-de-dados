SELECT COUNT(*) as total_usuarios
  FROM usuarios;

/

SELECT COUNT(*) as total_usuarios
  FROM usuarios us
 INNER JOIN reservas rs ON us.id = rs.id_usuario;

 /

SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS maior_idade
  FROM usuarios;