#날짜 : 2024/01/18
#이름 : 김철학
#내용 : 7장 정규화 실습하기

-- 비정규형 테이블
CREATE TABLE `BookOrder` (
	`orderNo`	 int,
    `orderDate`	 date,
    `userId`	 varchar(10),
    `userName`	 varchar(10),
    `userAddr`	 varchar(50),
    `bookNo`	 int,
    `bookName`	 varchar(20),
    `count`		 int,
    `price`		 int
);

insert into `BookOrder` values (10001, NOW(), 'a101', '김유신', '김해', 101, '프로그래밍', 1, 28000);
insert into `BookOrder` values (10002, NOW(), 'a102', '김춘추', '경주', 101, '프로그래밍', 1, 28000);
insert into `BookOrder` values (10002, NOW(), 'a102', '김춘추', '경주', 102, '자료구조',  2, 16000);
insert into `BookOrder` values (10003, NOW(), 'a103', '장보고', '완도', 102, '자료구조', 2, 32000);
insert into `BookOrder` values (10004, NOW(), 'a104', '강감찬', '서울', 110, '데이터베이스', 1, 25000);
insert into `BookOrder` values (10005, NOW(), 'a105', '이순신', '서울', 110, '데이터베이스', 1, 25000);
insert into `BookOrder` values (10005, NOW(), 'a105', '이순신', '서울', 110, '자료구조', 1, 16000);

#####################################################################
-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Schema BookOrder
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BookOrder` DEFAULT CHARACTER SET utf8 ;
USE `BookOrder` ;

CREATE TABLE `Book` (
  `bookNo` INT PRIMARY KEY,
  `bookName` VARCHAR(20)
  );

CREATE TABLE `User` (
  `userId` VARCHAR(10) PRIMARY KEY,
  `userName` VARCHAR(10),
  `userAddr` VARCHAR(50)
);

CREATE TABLE `UserOrder` (
  `orderNo` INT PRIMARY KEY,
  `orderDate` DATE NULL,
  `User_userId` VARCHAR(10) NOT NULL,
  CONSTRAINT `fk_UserOrder_User1` FOREIGN KEY (`User_userId`) REFERENCES `User` (`userId`)
);

CREATE TABLE `Order` (
  `orderNo` INT,
  `bookNo` INT,
  `count` INT,
  `price` INT,
  PRIMARY KEY (`orderNo`, `bookNo`),
  CONSTRAINT `fk_Order_UserOrder` FOREIGN KEY (`orderNo`) REFERENCES `UserOrder` (`orderNo`),
  CONSTRAINT `fk_Order_Book1` FOREIGN KEY (`bookNo`) REFERENCES `Book` (`bookNo`)
);

#####################################################################

insert into `Book` values (101, '프로그래밍');
insert into `Book` values (102, '자료구조');
insert into `Book` values (110, '데이터베이스');

insert into `User` values ('a101', '김유신', '김해');
insert into `User` values ('a102', '김춘추', '경주');
insert into `User` values ('a103', '장보고', '완도');
insert into `User` values ('a104', '강감찬', '서울');
insert into `User` values ('a105', '이순신', '서울');

insert into `UserOrder` values (10001, NOW(), 'a101');
insert into `UserOrder` values (10002, NOW(), 'a102');
insert into `UserOrder` values (10003, NOW(), 'a103');
insert into `UserOrder` values (10004, NOW(), 'a104');
insert into `UserOrder` values (10005, NOW(), 'a105');

insert into `Order` values (10001, 101, 1, 28000);
insert into `Order` values (10002, 101, 1, 28000);
insert into `Order` values (10002, 102, 2, 32000);
insert into `Order` values (10003, 102, 2, 32000);
insert into `Order` values (10004, 110, 1, 25000);
insert into `Order` values (10005, 110, 1, 25000);
insert into `Order` values (10005, 102, 1, 16000);






