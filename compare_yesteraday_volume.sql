WITH 
today_volume AS (
    SELECT COUNT(dt) AS c1
    FROM tb
    WHERE dt = DATE.today()),
yesterday_volume AS (
    SELECT COUNT(dt) AS c2
    FROM tb
    WHERE dt = DATE_ADD(DATE.today(), -1)
    )
SELECT today_volume.c1 - yesterday_volume.c2
FROM today_volume, yesterday_volume