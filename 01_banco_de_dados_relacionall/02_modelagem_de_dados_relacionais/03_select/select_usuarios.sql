SELECT *
  FROM usuarios;

  /

SELECT *
  FROM usuarios
 WHERE id = 1
   AND nome LIKE '%João%'

/

SELECT *
  FROM usuarios
 WHERE id = 1
   OR nome LIKE '%Maria%'
