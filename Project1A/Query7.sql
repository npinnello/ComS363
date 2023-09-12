SELECT S.name, S.snum
FROM Students AS S
INNER JOIN Major AS M ON S.snum = M.snum
INNER JOIN Register AS R ON S.snum = R.snum
INNER JOIN Courses AS C ON R.course_number = C.number
WHERE M.level IN ('MS', 'PhD') AND C.name = 'database'
ORDER BY S.snum;
