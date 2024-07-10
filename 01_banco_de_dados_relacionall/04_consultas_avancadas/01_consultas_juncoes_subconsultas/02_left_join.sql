SELECT *
  FROM usuarios us
 LEFT JOIN reservas re ON us.id = re.id;
