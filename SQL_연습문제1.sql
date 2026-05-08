#날짜 : 2026/05/08
#이름 : 김철학
#내용 : SQL 연습문제1

#실습 1-1 (최고관리자 root 작업)
CREATE DATABASE Shop;
CREATE USER 'shop'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON Shop.* TO 'shop'@'%';
FLUSH PRIVILEGES; -- 현재 세션에 반영

USE Shop;

#실습 1-2
CREATE TABLE `Customer` (
	`custId` VARCHAR(10)  PRIMARY KEY,
	`name`   VARCHAR(10)  NOT NULL,
	`hp`	 CHAR(13)     UNIQUE,
	`addr`   VARCHAR(100) DEFAULT NULL,
	`rdate`	 DATE         NOT NULL
);

CREATE TABLE `Product` (
	`prodNo`	INT         PRIMARY KEY,
	`prodName`  VARCHAR(10) NOT NULL,
	`stock`		INT         DEFAULT 0,
	`price`		INT 	    DEFAULT NULL,
	`company`   VARCHAR(20) NOT NULL
);
-- Order 예약어는 `backtick` 문자로 처리
CREATE TABLE `Order` ( 
	`orderNo`	   INT  	   AUTO_INCREMENT  PRIMARY KEY,
	`orderId`      VARCHAR(10) NOT NULL,
	`orderProduct` INT         NOT NULL,
	`orderCount`   INT         DEFAULT 1,
	`orderDate`    DATETIME    NOT NULL
);

#실습 1-3
INSERT INTO `Customer` VALUES ('c101', '김유신', '010-1234-1001', '김해시 봉황동', '2022-01-01');
INSERT INTO `Customer` VALUES ('c102', '김춘추', '010-1234-1002', '경주시 보문동', '2022-01-02');
INSERT INTO `Customer` VALUES ('c103', '장보고', '010-1234-1003', '완도군 청산면', '2022-01-03');
INSERT INTO `Customer` VALUES ('c104', '강감찬', '010-1234-1004', '서울시 마포구', '2022-01-04');
INSERT INTO `Customer` (`custid`, `name`, `rdate`) VALUES ('c105', '이성계', '2022-01-05');
INSERT INTO `Customer` VALUES ('c106', '정철', '010-1234-1006', '경기도 용인시', '2022-01-06');
INSERT INTO `Customer` (`custid`, `name`, `rdate`) VALUES ('c107', '허준', '2022-01-07');
INSERT INTO `Customer` VALUES ('c108', '이순신', '010-1234-1008', '서울시 영등포구', '2022-01-08');
INSERT INTO `Customer` VALUES ('c109', '송상현', '010-1234-1009', '부산시 동래구', '2022-01-09');
INSERT INTO `Customer` VALUES ('c110', '정약용', '010-1234-1010', '경기도 광주시', '2022-01-10');
SELECT * FROM Customer;

INSERT INTO `Product` VALUES (1, '새우깡',   5000, 1500, '농심');
INSERT INTO `Product` VALUES (2, '초코파이', 2500, 2500, '오리온');
INSERT INTO `Product` VALUES (3, '포카칩',   3600, 1700, '오리온');
INSERT INTO `Product` VALUES (4, '양파링',   1250, 1800, '농심');
INSERT INTO `Product` (`prodNo`, `prodName`, `stock`, `company`) VALUES (5, '죠리퐁',   2200, '크라운');
INSERT INTO `Product` VALUES (6, '마카렛트', 3500, 3500, '롯데');
INSERT INTO `Product` VALUES (7, '뿌셔뿌셔', 1650, 1200, '오뚜기');
SELECT * FROM Product;


INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c102', 3, 2, '2022-07-01 13:15:10');
INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c101', 4, 1, '2022-07-01 14:16:11');
INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c108', 1, 1, '2022-07-01 17:23:18');
INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c109', 6, 5, '2022-07-02 10:46:36');
INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c102', 2, 1, '2022-07-03 09:15:37');
INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c101', 7, 3, '2022-07-03 12:35:12');
INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c110', 1, 2, '2022-07-03 16:55:36');
INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c104', 2, 4, '2022-07-04 14:23:23');
INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c102', 1, 3, '2022-07-04 21:54:34');
INSERT INTO `Order` (`orderId`, `orderProduct`, `orderCount`, `orderDate`) VALUES ('c107', 6, 1, '2022-07-05 14:21:03');
SELECT * FROM `Order`;

#실습 1-4
#실습 1-5
#실습 1-6
#실습 1-7
#실습 1-8
#실습 1-9
#실습 1-10
#실습 1-11
#실습 1-12
#실습 1-13
#실습 1-14
#실습 1-15
#실습 1-16
#실습 1-17
#실습 1-18
#실습 1-19
#실습 1-20
#실습 1-21
#실습 1-22
#실습 1-23
#실습 1-24
#실습 1-25
#실습 1-26
#실습 1-27
#실습 1-28
#실습 1-29
#실습 1-30
