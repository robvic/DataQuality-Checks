WITH daily_volume AS (
    SELECT 
        category,
        dt,
        COUNT(column) AS c1
    FROM tb
    GROUP BY category, dt)
SELECT
    category,
    ROUND(AVG(c1),0)
FROM daily_volume
GROUP BY category