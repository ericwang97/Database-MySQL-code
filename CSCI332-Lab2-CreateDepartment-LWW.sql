CREATE DATABASE university2lww;
USE university2lww;
CREATE TABLE IF NOT EXISTS DEPARTMENT
(
DID CHAR(4),
DeptName VARCHAR(30) NOT NULL,
OfficeLocation VARCHAR(255),
ChairID CHAR(8),
PRIMARY KEY (DID)
);