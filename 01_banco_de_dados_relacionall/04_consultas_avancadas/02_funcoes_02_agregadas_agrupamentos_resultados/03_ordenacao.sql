SELECT COUNT(*) AS qtd_reservas
     , id_destino
  FROM reservas
GROUP BY id_destino
ORDER BY qtd_reservas DESC;

/

SELECT COUNT(*) AS qtd_reservas
     , id_destino
  FROM reservas
GROUP BY id_destino
ORDER BY qtd_reservas
       , id_destino 
    DESC;