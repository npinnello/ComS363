SELECT name, snum, ssn
FROM Students
WHERE name LIKE '%n%' OR name LIKE '%N%'
ORDER BY snum;
