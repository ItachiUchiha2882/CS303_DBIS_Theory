-- approach 1
SELECT `company name`
FROM works
GROUP BY `company name`
HAVING SUM(salary) <= ALL (SELECT SUM(salary)
                           FROM works
                           GROUP BY `company name`);