--
-- ���� ������������ � ������� SQLiteStudio v3.3.3 � �� ��� 22 09:35:56 2021
--
-- �������������� ��������� ������: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- �������: Country
CREATE TABLE Country (Code nchar (2) PRIMARY KEY UNIQUE NOT NULL, Name nvarchar (100) REFERENCES Type (Name));

-- �������: Hotel
CREATE TABLE Hotel (id INTEGER PRIMARY KEY UNIQUE NOT NULL, Name nvarchar (100) REFERENCES Country (Name), CountOfStars INTEGER, CountryCode nchar (2));

-- �������: HotelComment
CREATE TABLE HotelComment (id INTEGER PRIMARY KEY UNIQUE NOT NULL, Hotelid INTEGER, Text nvarchar, Author nvarchar (100), CreationDate DATETIME);

-- �������: Hotelimage
CREATE TABLE Hotelimage (id INTEGER PRIMARY KEY UNIQUE NOT NULL, Hotelid INTEGER REFERENCES HotelComment (Hotelid), imageSounce varbinary);

-- �������: Tour
CREATE TABLE Tour (id INT PRIMARY KEY UNIQUE NOT NULL, TicketCount INT, Name nvarchar (100), Description nvarchar, ImagePreview varbinary, Price money, isActual bit);

-- �������: Type
CREATE TABLE Type (id VARCHAR (10) PRIMARY KEY UNIQUE NOT NULL, Name VARCHAR (10) REFERENCES Tour (Name), Description VARCHAR (10));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
