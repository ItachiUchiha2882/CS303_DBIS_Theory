-- approach 2
SELECT `company name` 
FROM works
GROUP BY `company name`
HAVING COUNT(`employee name`) <= ALL (SELECT COUNT(`employee name`)
                                      FROM works
                                      WHERE salary > 0
                                      GROUP BY `company name`);