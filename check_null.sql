WITH 
null_values AS(
  SELECT COUNT(column) AS c1
  FROM tb
  WHERE column IS NULL),
nonnull_values AS(
  SELECT COUNT(column) AS c2
  FROM tb
  WHERE column IS NOT NULL)
SELECT (null_values.c1/nonnull_values.c2)*100
FROM null_values, nonnull_values