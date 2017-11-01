/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : CSU-info.sql

* Purpose :

* Creation Date : 30-10-2017

* Last Modified : Tue 31 Oct 2017 02:28:34 PM PDT

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
FROM campuses cp, disciplines AS dc
JOIN discEnr as de1
	ON(dc.Name = 'Agriculture' AND dc.Id = de1.Discipline)
JOIN discEnr as de2
	ON(dc.Name = 'Biological Sciences' AND dc.Id = de2.Discipline)
WHERE (cp.Id = de1.CampusId AND cp.Id = de2.CampusId)
AND (de1.Year = 2004 AND de2.Year = 2004)
ORDER BY cp.Campus, de1.Gr

-- Q 5)
SELECT cp.Campus, dc.Name
FROM campuses cp, disciplines dc, discEnr de
WHERE (cp.Id = de.CampusId)
AND (dc.Id = de.Discipline)
AND (de.Gr/de.Ug > 3)
AND (de.Year = 2004)
ORDER BY cp.Campus, dc.Name;

-- Q 6)
SELECT en.Year, (en.FTE * fe.fee) AS Sum, ((en.FTE * fe.fee) / fc.FTE) AS facultyAmount 
FROM campuses cp, enrollments en, fees fe, faculty fc
WHERE (cp.Id = en.CampusId AND cp.Id = fe.CampusID AND cp.Id = fc.CampusId)
AND (cp.Campus = 'Fresno State University')
AND (en.Year >= 2002 AND en.Year <= 2004) 
ORDER BY en.Year;

-- Q 7)
SELECT
FROM
WHERE
ORDER BY

