UPDATE works
SET salary = salary*1.1
WHERE `company name` = "First Bank Corporation" 
  AND `employee name` IN (SELECT `manager name` 
                          FROM manages);