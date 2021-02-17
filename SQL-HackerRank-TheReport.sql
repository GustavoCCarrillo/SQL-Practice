HackerRank Challenge - The Report - Basic Join


SELECT NAME, GRADE, MARKS 
FROM STUDENTS INNER JOIN GRADES ON MARKS BETWEEN MIN_MARK AND MAX_MARK 
WHERE GRADE > 7 ORDER BY GRADE DESC, NAME ASC;

SELECT NULL, GRADE, MARKS 
FROM STUDENTS INNER JOIN GRADES ON MARKS BETWEEN MIN_MARK AND MAX_MARK 
WHERE GRADE <= 7 ORDER BY GRADE DESC, MARKS ASC;