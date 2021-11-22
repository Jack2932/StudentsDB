--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Пн ноя 22 09:35:56 2021
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Country
CREATE TABLE Country (Code nchar (2) PRIMARY KEY UNIQUE NOT NULL, Name nvarchar (100) REFERENCES Type (Name));

-- Таблица: Hotel
CREATE TABLE Hotel (id INTEGER PRIMARY KEY UNIQUE NOT NULL, Name nvarchar (100) REFERENCES Country (Name), CountOfStars INTEGER, CountryCode nchar (2));

-- Таблица: HotelComment
CREATE TABLE HotelComment (id INTEGER PRIMARY KEY UNIQUE NOT NULL, Hotelid INTEGER, Text nvarchar, Author nvarchar (100), CreationDate DATETIME);

-- Таблица: Hotelimage
CREATE TABLE Hotelimage (id INTEGER PRIMARY KEY UNIQUE NOT NULL, Hotelid INTEGER REFERENCES HotelComment (Hotelid), imageSounce varbinary);

-- Таблица: Tour
CREATE TABLE Tour (id INT PRIMARY KEY UNIQUE NOT NULL, TicketCount INT, Name nvarchar (100), Description nvarchar, ImagePreview varbinary, Price money, isActual bit);

-- Таблица: Type
CREATE TABLE Type (id VARCHAR (10) PRIMARY KEY UNIQUE NOT NULL, Name VARCHAR (10) REFERENCES Tour (Name), Description VARCHAR (10));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
