WITH 
unique_values AS(
  SELECT COUNT(DISTINCT(column)) AS c1
  FROM tb),
duplicated AS(
  SELECT COUNT(column) AS c2
  FROM tb)
SELECT 100-(unique_values.c1/duplicated.c2)*100
FROM unique_values, duplicated