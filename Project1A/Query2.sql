SELECT M.name, M.level
FROM Major AS M
INNER JOIN Students AS S ON M.snum = S.snum
WHERE S.name = 'Kevin';
