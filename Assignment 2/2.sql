-- 2a
UPDATE works
SET salary = salary*1.1
WHERE `company name` = "First Bank Corporation";
-- 2b
UPDATE works
SET salary = salary*1.1
WHERE `company name` = "First Bank Corporation" 
  AND `employee name` IN (SELECT `manager name` 
                          FROM manages);
-- 2c
DELETE FROM works
WHERE `company name` = "Small Bank Corporation";
-- 2d
SELECT `employee name`
FROM employee NATURAL JOIN works, company
WHERE employee.city = company.city AND 
  works.`company name` = company.`company name`;
-- 2e
SELECT A.`employee name`
FROM employee AS A,manages AS M, employee AS B
WHERE A.`employee name` = M.`employee name` AND 
  M.`manager name` = B.`employee name` AND 
  A.street = B.street AND A.city = B.city;
-- 2f
SELECT `employee name`
FROM works AS A
WHERE salary > (SELECT AVG(salary)
                FROM works AS B
                WHERE A.`company name` = B.`company name`
               );
-- 2g
-- approach 1
SELECT `company name`
FROM works
GROUP BY `company name`
HAVING SUM(salary) <= ALL (SELECT SUM(salary)
                           FROM works
                           GROUP BY `company name`);
-- approach 2
SELECT `company name` 
FROM works
GROUP BY `company name`
HAVING COUNT(`employee name`) <= ALL (SELECT COUNT(`employee name`)
                                      FROM works
                                      WHERE salary > 0
                                      GROUP BY `company name`);
-- 2h
SELECT `company name` 
FROM works
GROUP BY `company name`
HAVING COUNT(DISTINCT `employee name`) >= ALL (
          SELECT COUNT(DISTINCT `employee name`) 
          FROM works
          GROUP BY `company name`);
-- 2i
SELECT `company name`
FROM works
GROUP BY `company name`
HAVING AVG(salary) > (SELECT AVG(salary)
                      FROM works
                      WHERE `company name` = "First Bank Corporation");
-- 2j
UPDATE employee
SET city = "Newtown"
WHERE `employee name` = "Jones";
-- 2k
UPDATE works
SET salary = (CASE
             WHEN salary*1.1 > 100000 THEN salary*1.03
             ELSE salary*1.1
             END)
WHERE `company name` = "First Bank Corporation" 
  AND `employee name` IN (SELECT `manager name`
                          FROM manages);