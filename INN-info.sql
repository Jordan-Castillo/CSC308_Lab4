/* -.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.

* File Name : INN-info.sql

* Purpose :

* Creation Date : 31-10-2017

* Last Modified : Tue 31 Oct 2017 09:47:39 PM PDT

* Created By : Jordan Castillo

* Email: jtcastil@calpoly.edu 

_._._._._._._._._._._._._._._._._._._._._.*/
USE inn;
-- Q 1)
SELECT RoomName, RoomCode
FROM rooms
WHERE (basePrice < 160)
AND (decor = 'modern')
AND (Beds = 2)
ORDER BY RoomCode;
-- Q 2) prompt says to 'Output reservations in chronological order' but 'reservation' isnt an attribute
--		  taking this prompt to mean LastName.
SELECT rs.LastName, rs.CheckIn, rs.CheckOut, (rs.Adults + rs.Kids), rs.Rate
FROM reservations rs, rooms rm
WHERE (rs.Room = rm.RoomCode)
AND (MONTHNAME(rs.CheckIn) = 'August' AND MONTHNAME(rs.CheckOut) = 'August')
AND (rm.RoomName = 'Convoke and sanguine')
ORDER BY rs.LastName
-- Q 3)
SELECT rm.RoomName, rs.CheckIn, rs.CheckOut
FROM reservations rs, rooms rm
WHERE (rs.Room = rm.RoomCode)
AND (rs.CheckIn = '2010-02-06')
ORDER BY rm.RoomName;

-- Q 4)
SELECT rs.CODE, rs.CheckIn,
		 rs.CheckOut, rm.RoomName, (DATEDIFF(rs.CheckOut, rs.CheckIn) * rs.Rate) AS Total
FROM reservations rs, rooms rm
WHERE (rs.Room = rm.RoomCode)
AND (rs.LastName = 'KNERIEN' AND rs.FirstName = 'GRANT')
ORDER BY rs.CheckIn;

-- Q 5)
SELECT rm.RoomName, rs.Rate, DATEDIFF(rs.CheckOut, rs.CheckIn) AS lengthOfStay, 
		 (DATEDIFF(rs.CheckOut, rs.CheckIn) * rs.Rate) AS Total
FROM  reservations rs, rooms rm
WHERE (rs.Room = rm.RoomCode)
AND (rs.CheckIn = '2010-12-31')
ORDER BY DATEDIFF(rs.CheckOut, rs.CheckIn) DESC;

-- Q 6)
SELECT rs.CODE, rm.RoomName, rs.Room, rs.CheckIn, rs.CheckOut
FROM reservations rs, rooms rm
WHERE (rs.Room = rm.RoomCode)
AND (rm.bedType = 'Double')
AND (rm.maxOcc >= 4)
ORDER BY rs.CheckIn, rs.Room;

