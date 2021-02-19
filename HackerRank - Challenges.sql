
HackerRank - Challenges - SQL 


/* get total count of submissions for each student */
WITH tempData
AS
(SELECT c.hacker_id , h.name , count(c.hacker_id) AS challenges_created
FROM Hackers h
JOIN Challenges c ON c.hacker_id = h.hacker_id
GROUP BY c.hacker_id, h.name)

/* Query the tempData rows for id, name and challenges created */
SELECT hacker_id,name,challenges_created
FROM tempData
WHERE
challenges_created=(SELECT Max(challenges_created) FROM tempData) /*select user that has max count of submission*/
OR
challenges_created in (SELECT challenges_created FROM tempData
GROUP BY challenges_created
HAVING COUNT(challenges_created)=1 ) /*filter out unique submissions*/
ORDER BY challenges_created DESC, hacker_id