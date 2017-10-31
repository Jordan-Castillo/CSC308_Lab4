/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : CSU-info.sql

* Purpose :

* Creation Date : 30-10-2017

* Last Modified : Mon 30 Oct 2017 10:58:15 PM PDT

* Created By : Jordan Castillo

* Email: jtcastil@calpoly.edu 

_._._._._._._._._._._._._._._._._._._._._.*/
use csu;
-- Q 1) Report all campuses from LA county, osrt
SELECT Campus
FROM campuses
WHERE County = 'Los Angeles'
ORDER BY Campus;

-- Q 2) 
SELECT dg.year, dg.degrees
FROM campuses cp, degrees dg
WHERE (cp.Id = dg.CampusId)
AND (cp.Campus = 'California  Maritime Academy')
AND (dg.year >= 1994)
AND (dg.year <= 2000)
ORDER BY dg.year;

-- Q 3)
SELECT DISTINCT cp.Campus, dc.Name, de.Gr, de.Ug
FROM campuses cp, degrees dg, disciplines dc, discEnr de
WHERE (dc.Id = de.Discipline)
AND (de.CampusID = cp.Id)
AND (dc.Name = 'Mathematics' OR dc.Name = 'Engineering' OR dc.Name = 'Computer and Info. Sciences')
AND (cp.Campus = 'California Polytechnic State University-San Luis Obispo'
 OR cp.Campus = 'California State Polytechnic University-Pomona')
AND (de.Year = 2004)
ORDER BY cp.Campus, dc.Name;

-- Q 4) not working, and not sure where to go from here
SELECT cp.Campus, de1.Gr, de2.Gr
FROM discEnr AS de1
JOIN discEnr AS de2
ON (de1.Year = de2.Year) AND (de1.CampusID = de2.CampusID)
JOIN disciplines AS dc
ON (dc.ID = de1.Discipline)
JOIN campuses AS cp
ON (cp.Id = de1.CampusId)
WHERE (dc.Name = 'Agriculture' OR dc.Name = 'Biological Sciences')
AND (de1.Gr > 0 AND de2.Gr > 0)
AND (de1.Year = 2004)
ORDER BY de1.Gr;

-- Q 5)
SELECT cp.Campus, dc.Name
FROM disciplines dc, campuses cp, discEnr de
WHERE 
ORDER BY

-- Q 6)
SELECT
FROM
WHERE
ORDER BY

-- Q 7)
SELECT
FROM
WHERE
ORDER BY

