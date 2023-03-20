
select top 5 * from vets
select top 5  * from sale

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'sale';

-- 1- What is the total amount of sales made by each vet during the month of Feb’23? 
--[ Output should have the name of the vet (along with title) and the total amount.
--Sample row:  Dr. John Doe   |    250000     
-- Join vets and sales
SELECT v.title + ' ' + v.first_name + ' ' + v.last_name AS [Vet Name], 
       SUM(s.total) AS [Total Sales]
FROM vets v
JOIN sale s ON v.id = s.vet_id
WHERE MONTH(s.created_at) = 2 AND YEAR(s.created_at) = 2023
GROUP BY v.id, v.title, v.first_name, v.last_name

2- 
