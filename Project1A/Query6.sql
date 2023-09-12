SELECT S.snum, S.name
FROM Students AS S
INNER JOIN Minor AS M ON S.snum = M.snum
ORDER BY S.snum;
