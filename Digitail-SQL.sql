
select top 5 * from vets
select top 5  * from sale

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'sale';


vets table: id , first_name , last_name ,title created_at, updated_at, deleted_at
422	Robert	Ciocan	NULL	2018-09-19 18:11:49.0000000	2022-04-11 10:04:09.0000000	null
484	Andrei	Tutuneanu	NULL	2018-11-09 10:17:32.0000000	2022-08-02 18:42:33.0000000	null
564	Alexandru	Buzdea	Doctor	2019-01-08 06:39:38.0000000	2021-10-18 16:09:54.0000000	null
644	Lia	Ion	NULL	2019-02-14 19:36:41.0000000	2023-01-20 09:56:05.0000000	null
859	Annamaria	Mione	Doctor	2019-05-18 20:05:05.0000000	2022-11-25 19:50:13.0000000	null


id user_id patient_id vet_id total created_at updated_at deleted_at

7420890	1461014	2375265	6792	250	2022-12-01 01:08:19.0000000	2022-12-01 08:32:06.0000000	null
7420923	1460824	2374883	2020	90	2022-12-01 01:41:08.0000000	2022-12-01 01:44:51.0000000	null
7420951	1461028	2375303	6792	3009.98999023438	2022-12-01 02:22:48.0000000	2022-12-05 08:48:21.0000000	null
7495669	1461035	2375313	6792	250	2022-12-01 03:49:50.0000000	2022-12-01 04:07:15.0000000	null
7495696	1461044	2375334	2469	350	2022-12-01 04:19:01.0000000	2022-12-01 16:26:56.0000000	null

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
