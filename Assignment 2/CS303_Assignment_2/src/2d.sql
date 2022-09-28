SELECT `employee name`
FROM employee NATURAL JOIN works, company
WHERE employee.city = company.city AND 
  works.`company name` = company.`company name`;