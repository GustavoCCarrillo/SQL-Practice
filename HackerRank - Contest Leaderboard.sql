
HackerRank - Contest Leaderboard


Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
Exclude all hackers with a total score of  from your result.





SELECT h.hacker_id, h.name, SUM(score) 
FROM 
(
    SELECT hacker_id, challenge_id, MAX(score) AS score 
    FROM Submissions 
    GROUP BY hacker_id,challenge_id
) t
JOIN Hackers h ON t.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING SUM(score) > 0
ORDER BY SUM(score) DESC, h.hacker_id