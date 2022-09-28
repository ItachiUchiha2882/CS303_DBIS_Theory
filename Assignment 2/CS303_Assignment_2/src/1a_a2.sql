-- approach 2
SELECT ID, marks, (CASE
             WHEN score >= 80 THEN 'A'
             WHEN score >= 60 AND score < 80 THEN 'B'
             WHEN score >= 40 AND score < 60 THEN 'C'
             ELSE 'F'
             END) AS grade
FROM marks;