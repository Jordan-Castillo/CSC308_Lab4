/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : CARS-info.sql

* Purpose :

* Creation Date : 30-10-2017

* Last Modified : Mon 30 Oct 2017 09:05:41 PM PDT

* Created By : Jordan Castillo

* Email: jtcastil@calpoly.edu 

_._._._._._._._._._._._._._._._._._._._._.*/
USE cars;
-- Q 1) output name (Assuming this means makes.Make, prompt does not specify)
--					and year, of all 'renault' Models
SELECT mak.Make, cd.Year
FROM makes mak, cardata cd
WHERE (mak.Model = 'renault')
AND (mak.Id = cd.Id)
ORDER BY cd.Year;

-- Q 2) 
SELECT mak.Make, cd.Year
FROM makes mak, cardata cd
WHERE (mak.Model = 'Volvo')
AND (mak.Id = cd.Id)
AND (cd.Year >= 1977)
AND (cd.Year <= 1981)
ORDER BY cd.Year;

-- Q 3)
SELECT cm.FullName, cr.Name
FROM carmakers cm, countries cr, continents ct
WHERE (ct.Id = cr.Continent)
AND (cr.Id = cm.Country)
AND (ct.Name = 'asia')
ORDER BY cm.FullName;

-- Q 4)
SELECT mk.Make, mk.Model
FROM cardata cd, makes mk
WHERE (cd.Id = mk.Id)
AND (cd.Cylinders != 4)
AND (cd.Year = 1980)
AND (cd.MPG > 20)
AND (cd.Accelerate > 15);

-- Q 5)
SELECT DISTINCT cm.FullName, cr.Name
FROM continents ct, countries cr, carmakers cm, makes mk, cardata cd
WHERE (ct.Id = cr.Continent)
AND (cr.Id = cm.Country)
AND (cm.Maker = mk.Model)
AND (mk.Id = cd.Id)
AND (ct.Name != 'europe')
AND (cd.Weight < 2000)
AND (cd.Year >= 1979)
AND (cd.Year <= 1981);

-- Q 6)
SELECT mk.Make, cd.Year, (cd.Weight / cd.Horsepower) AS ratio
FROM carmakers cm, cardata cd, makes mk
WHERE (cm.Maker = mk.Model)
AND (cd.Id = mk.Id)
AND (mk.Model = 'saab')
AND (cd.Year > 1978)
ORDER BY ratio DESC;


