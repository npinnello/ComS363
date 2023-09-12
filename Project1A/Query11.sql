SELECT COUNT(DISTINCT S.snum) AS num_female_software_eng_students
FROM Students AS S
INNER JOIN (Major AS M
            UNION
            SELECT snum, name, level
            FROM Minor) AS SoftwareEngMajors
ON S.snum = SoftwareEngMajors.snum
WHERE S.gender = 'F'
AND (SoftwareEngMajors.name = 'Software Engineering' AND SoftwareEngMajors.level = 'BS');
