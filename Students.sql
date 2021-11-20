--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Сб ноя 20 13:08:49 2021
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Предметы
CREATE TABLE Предметы ("Код предмета" BIGINT PRIMARY KEY UNIQUE NOT NULL, "Наименование предмета" VARCHAR (50), "Описание предмета" TEXT);

-- Таблица: Спецальности
CREATE TABLE Спецальности ("Код специальности" BIGINT PRIMARY KEY NOT NULL UNIQUE, "Наименование спецальности" VARCHAR (50), "Описание специальности" TEXT);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
