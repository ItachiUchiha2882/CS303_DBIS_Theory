SELECT `company name`
FROM works
GROUP BY `company name`
HAVING AVG(salary) > (SELECT AVG(salary)
                      FROM works
                      WHERE `company name` = "First Bank Corporation");