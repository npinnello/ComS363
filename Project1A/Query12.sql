SELECT D.name, D.level, COUNT(M.snum) AS num_students
FROM Degrees AS D
INNER JOIN Major AS M ON D.name = M.name AND D.level = M.level
GROUP BY D.name, D.level
ORDER BY num_students DESC, D.name;
