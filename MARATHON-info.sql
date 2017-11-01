/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : MARATHON-info.sql

* Purpose :

* Creation Date : 31-10-2017

* Last Modified : Tue 31 Oct 2017 10:04:36 PM PDT

* Created By : Jordan Castillo

* Email: jtcastil@calpoly.edu 

_._._._._._._._._._._._._._._._._._._._._.*/
use marathon;
--Q1)
SELECT RunTime, Pace, Place
FROM marathon
WHERE LastName = 'BRASEL'
		AND FirstName = 'TEDDY';
--Q2)
SELECT FirstName, LastName, RunTime, Place, GroupPlace
FROM marathon
WHERE (Town = 'QUINCY')
AND (State = 'MA')
ORDER BY Place;
--Q3)
SELECT FirstName, LastName, Town, RunTime 
FROM marathon
WHERE (Age = 34)
AND (Sex = 'F')
AND (State = 'Ct')
ORDER BY RunTime;
--Q4)

--Q5)

