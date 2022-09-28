SELECT `employee name`
FROM works AS A
WHERE salary > (SELECT AVG(salary)
                FROM works AS B
                WHERE A.`company name` = B.`company name`
               );