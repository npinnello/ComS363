SELECT C.number, C.name, COUNT(R.snum) AS num_students
FROM Courses AS C
LEFT JOIN Register AS R ON C.number = R.course_number
GROUP BY C.number, C.name
ORDER BY C.number;
