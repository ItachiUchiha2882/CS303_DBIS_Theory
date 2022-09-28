SELECT `company name` 
FROM works
GROUP BY `company name`
HAVING COUNT(DISTINCT `employee name`) >= ALL (
          SELECT COUNT(DISTINCT `employee name`) 
          FROM works
          GROUP BY `company name`);