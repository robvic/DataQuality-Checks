WITH 
volume_today AS (
    SELECT column AS c1
    FROM tb 
    WHERE dt = CURRENT_DATE())
SELECT COUNT(c1)
FROM volume_today