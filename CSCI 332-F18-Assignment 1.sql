##############

#CSCI 332 DATABASE CONCEPT
#Liwei Wang
#09/22/2018

##############
USE Hotel;

#6.7
SELECT * FROM Hotel;

#6.8
SELECT * FROM Hotel
WHERE city = "London";

#6.9
SELECT guestName,guestAddress FROM Guest
WHERE city = "London"
ORDER BY GuestName ASC;

#6.10
SELECT roomNo,type
FROM Room
WHERE type IN ("double","family") AND price < 40
ORDER BY price ASC;

#6.11
SELECT * FROM Booking
WHERE dateTo IS NULL;

##############

#6.12
SELECT COUNT(hotelNo) AS "Number of Hotel"
FROM Hotel;

#6.13
SELECT AVG(price) AS "Average price of a room"
FROM Room;

#6.14
SELECT SUM(price) AS "Total Revenue per night"
FROM Room
WHERE type = "double";

#6.15 Method I
#I will suppose that 'booking for Auguest' means they book the hotel at Augest, 
#including the day they start and leave.

SELECT COUNT(DISTINCT guestNo) AS "Number of Guest"
FROM Booking
WHERE dateTo,dateFrom LIKE '%Aug%';

#6.15 Method II
SELECT COUNT(DISTINCT guestNo) AS "Number of Guest"
FROM Booking
WHERE dateTo,dateFrom BETWEEN '1-Aug' AND '31-Aug';
# It really depends on what excatly dataType of dateTo and dataFrom is. 


##############

#6.27
INSERT INTO Hotel
VALUES('00001','HolidayInn','Charleston'),
	  ('00002','Hilton','London');#etc.

INSERT INTO Room
VALUES('DOU123','00011','double','35'),
	  ('FAM111','00001','family','60');#etc.

INSERT INTO Booking
VALUES('00001','44444444444','31-July','5-Aug','DOU123');# the best guestNo could be their ID
#etc.

INSERT INTO Guest
VALUES('44444444444','Liwei','C of C complex, Charleston,SC');#etc.

#6.28
UPDATE Room
SET price = 1.05*price;







