SELECT S.name
FROM Students AS S
INNER JOIN Register AS R ON S.snum = R.snum
WHERE R.regtime = 'Fall2020';
