SELECT A.`employee name`
FROM employee AS A,manages AS M, employee AS B
WHERE A.`employee name` = M.`employee name` AND 
  M.`manager name` = B.`employee name` AND 
  A.street = B.street AND A.city = B.city;