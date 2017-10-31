/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : STUDENTS-info.sql

* Purpose :

* Creation Date : 30-10-2017

* Last Modified : Mon 30 Oct 2017 03:39:42 PM PDT

* Created By : Jordan Castillo

* Email: jtcastil@calpoly.edu 

_._._._._._._._._._._._._._._._._._._._._.*/

USE students;
-- Q 1) all students in classroom 111. list first and lastname, sort by lastname
SELECT FirstName, LastName
FROM list
WHERE classroom = 111
ORDER BY LastName;

-- Q 2) list grade and classroom, sort by classroom
SELECT DISTINCT classroom, grade
FROM list
WHERE DISTINCT classroom
ORDER BY class;

-- Q 3) report first and lastname of teachers and room number, sort by room number
SELECT DISTINCT t.First, t.Last, t.classroom
FROM teachers t, list l
WHERE (t.classroom = l.classroom) AND (l.grade = 5)
ORDER BY t.classroom;

-- Q 4) first and lastname of students taught by 'OTHA MOYER', sort by lastname
SELECT l.LastName, l.FirstName
FROM list l, teachers t
WHERE (l.classroom = t.classroom) AND (t.First = 'OTHA') AND (t.Last = 'MOYER')
ORDER BY l.LastName;

-- Q 5) first, lastname, grade of teachers teaching K - 3, sort by grade and teachers last name
SELECT DISTINCT t.First, t.Last, l.grade
FROM teachers t, list l
WHERE (t.classroom = l.classroom) 
AND (l.grade = 0 OR l.grade = 1 OR l.grade = 2 OR l.grade = 3)
ORDER BY l.grade, t.Last;
