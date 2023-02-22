### Реализация заданий по работе с БД MySQL:

-- В подключенном MySQL репозитории создать базу данных “Друзья человека”

CREATE DATABASE humanFriends;

USE humanFriends;

-- Создать таблицы с иерархией из диаграммы в БД

CREATE TABLE Dog (

iddog INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

name VARCHAR(20) NOT NULL,

birthday DATE NOT NULL,

skill VARCHAR(20) NULL);

--

CREATE TABLE Cat (

idcat INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

name VARCHAR(20) NOT NULL,

birthday DATE NOT NULL,

skill VARCHAR(20) NULL);

-- 

CREATE TABLE Hamster (

idhamster INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

name VARCHAR(20) NOT NULL,

birthday DATE NOT NULL,

skill VARCHAR(20) NULL);

--

CREATE TABLE Horse (

idhorse INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

name VARCHAR(20) NOT NULL,

birthday DATE NOT NULL,

skill VARCHAR(20) NULL);

--

CREATE TABLE Camel (

idcamel INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

name VARCHAR(20) NOT NULL,

birthday DATE NOT NULL,

skill VARCHAR(20) NULL);

--

CREATE TABLE Donkey (

iddonkey INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

name VARCHAR(20) NOT NULL,

birthday DATE NOT NULL,

skill VARCHAR(20) NULL);

-- Заполнить низкоуровневые таблицы именами (животных), командами которые они выполняют и датами рождения

INSERT Dog (

name, birthday, skill)

VALUES

("Dog1", "2022-06-08", "sit"),

("Dog2", "2020-05-09", "voice"),

("Dog3", "2015-01-12", "eat");

--

INSERT Cat (

name, birthday, skill)

VALUES

("Cat1", "2022-09-03", "eat"),

("Cat2", "2021-02-07", "hunt"),

("Cat3", "2013-07-04", "sleep");

--

INSERT Hamster (

name, birthday, skill)

VALUES

("Hamster1", "2023-02-01", "run"),

("Hamster2", "2021-09-07", "jump"),

("Hamster3", "2019-04-06", "wheel");

--

INSERT Horse (

name, birthday, skill)

VALUES

("Horse1", "2022-03-08", "bow"),

("Horse2", "2021-12-10", "kiss"),

("Horse3", "2009-08-01", "sit");

--

INSERT Camel (

name, birthday, skill)

VALUES

("Camel1", "2022-09-04", "go"),

("Camel2", "2021-10-03", "stand"),

("Camel3", "2012-12-12", "spit");

--

INSERT Donkey (

name, birthday, skill)

VALUES

("Donkey1", "2022-06-12", "pull"),

("Donkey2", "2021-07-07", "stop"),

("Donkey3", "2017-02-08", "go");

-- Создание таблицы Домашние животные и её заполнение

CREATE TABLE HomePets (

idHomePet INT PRIMARY KEY NOT NULL AUTO_INCREMENT)

SELECT name, birthday, skill, "hamster" AS animalType

FROM Hamster;

--

INSERT INTO HomePets (

name, birthday, skill, animalType)

SELECT name, birthday, skill, "cat" AS animalType

FROM Cat;

--

INSERT INTO HomePets (

name, birthday, skill, animalType)

SELECT name, birthday, skill, "dog" AS animalType

FROM Dog;

-- Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу

DELETE FROM Сamel;

--

CREATE TABLE PackAnimals (

idPackAnimal INT PRIMARY KEY NOT NULL AUTO_INCREMENT)

SELECT name, birthday, skill, "donkey" AS animalType

FROM Donkey;

--

INSERT INTO PackAnimals (

name, birthday, skill, animalType)

SELECT name, birthday, skill, "horse" AS animalType

FROM Horse;

-- либо, если не требовалось создавать новую таблицу, а просто объединить

SELECT * FROM Horse

UNION

SELECT * FROM Donkey;

-- Создать новую таблицу “молодые животные” в которую попадут все животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью до месяца подсчитать возраст животных в новой таблице

CREATE TABLE YoungAnimals (

idYoungAnimal INT PRIMARY KEY NOT NULL AUTO_INCREMENT)

SELECT name, birthday, skill, animalType, (TIMESTAMPDIFF(MONTH, birthday, CURDATE())) AS ageInMonth

FROM (SELECT * FROM PackAnimals UNION SELECT * FROM HomePets) s

WHERE birthday BETWEEN CURDATE() - INTERVAL 3 YEAR AND CURDATE() - INTERVAL 1 YEAR;

-- Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам

REATE TABLE Animals (

idAnimal INT PRIMARY KEY NOT NULL AUTO_INCREMENT)

SELECT name, birthday, skill, animalType

FROM (SELECT * FROM PackAnimals UNION SELECT * FROM HomePets) s;