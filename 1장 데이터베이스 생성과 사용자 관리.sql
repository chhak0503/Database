#날짜 : 2024/01/02
#이름 : 김철학
#내용 : 1장 데이터베이스 생성과 사용자 관리

#실습 1-1
CREATE DATABASE `StudyDB`;
DROP DATABASE `StudyDB`;

#실습 1-2
CREATE USER 'chhak'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `StudyDB`.* TO 'chhak'@'%';
FLUSH PRIVILEGES;

#실습 1-3
ALTER USER 'chhak'@'%' IDENTIFIED BY 'abc1234';
DROP USER 'chhak'@'%';
FLUSH PRIVILEGES;