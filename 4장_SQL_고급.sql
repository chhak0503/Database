#날짜 : 2026/05/06
#이름 : 김철학 
#내용 : 4장 SQL 고급 실습

# 실습 4-1
CREATE TABLE Employee (
	empno  	INT PRIMARY KEY,
    name	VARCHAR(10) NOT NULL,
    gender	CHAR(1) NOT NULL,
    hp		CHAR(13) UNIQUE NOT NULL,
    job		VARCHAR(10),
    depno	INT,
    regdate	DATE NOT NULL
);

CREATE TABLE Dept (
	depno 	INT PRIMARY KEY,
    dname	VARCHAR(10) NOT NULL,
    tel		VARCHAR(12) NOT NULL
);

CREATE TABLE Sale (
	no		INT AUTO_INCREMENT PRIMARY KEY,
    empno	INT NOT NULL,
    year	YEAR NOT NULL,
    month	TINYINT NOT NULL,
    price	INT DEFAULT 0
);

# 실습 4-2
INSERT INTO Employee VALUES (1001, '김유신', 'M', '010-1234-1001', '부장', 101, '2026-11-19');
INSERT INTO Employee VALUES (1002, '김춘추', 'M', '010-1234-1002', '차장', 104, '2026-11-19');
INSERT INTO Employee VALUES (1003, '장보고', 'M', '010-1234-1003', '사원', NULL, '2026-11-19');
INSERT INTO Employee VALUES (1004, '강감찬', 'M', '010-1234-1004', '대리', 102, '2026-11-19');
INSERT INTO Employee VALUES (1005, '신사임당', 'F', '010-1234-1005', '과장', 102, '2026-11-19');
INSERT INTO Employee VALUES (1006, '이황', 'M', '010-1234-1006', '차장', 103, '2026-11-19');
INSERT INTO Employee VALUES (1007, '이이', 'M', '010-1234-1007', '사원', 105, '2026-11-19');
INSERT INTO Employee VALUES (1008, '이순신', 'M', '010-1234-1008', NULL, NULL, '2026-11-19');
INSERT INTO Employee VALUES (1009, '허난설헌', 'F', '010-1234-1009', '사원', 104, '2026-11-19');
INSERT INTO Employee VALUES (1010, '정약용', 'M', '010-1234-1010', '대리', 104, '2026-11-19');
SELECT * FROM Employee;

INSERT INTO Dept VALUES (101, '경영지원부', '051-512-1001');
INSERT INTO Dept VALUES (102, '영업부', '051-512-1002');
INSERT INTO Dept VALUES (103, '개발부', '051-512-1003');
INSERT INTO Dept VALUES (104, '인사부', '051-512-1004');
INSERT INTO Dept VALUES (105, '기획부', '051-512-1005');
SELECT * FROM Dept;

-- Sale 테이블 데이터 입력 ------------------------------------------------------------------------
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2018, 1,  98100);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2018, 1, 136000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2018, 1,  80000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2018, 1,  78000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2018, 1,  93000);
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2018, 2,  24000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2018, 2, 126000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2018, 2,  19000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2018, 2,  19000);
INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2018, 2,  53000);
-- ------------------------------------------------------------------------
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2019, 1,  24000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2019, 1, 109000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2019, 1, 101000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2019, 1,  53000);
INSERT INTO Sale (empno, year, month, price) VALUES (1007, 2019, 1,  24000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2019, 2, 160000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2019, 2, 101000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2019, 2,  43000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2019, 2,  24000);
INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2019, 2, 109000);
-- ------------------------------------------------------------------------
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2020, 1, 201000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2020, 1, 63000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2020, 1, 74000);
INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2020, 1, 122000);
INSERT INTO Sale (empno, year, month, price) VALUES (1007, 2020, 1, 111000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2020, 2, 120000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2020, 2, 93000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2020, 2, 84000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2020, 2, 180000);
INSERT INTO Sale (empno, year, month, price) VALUES (1008, 2020, 2, 76000);
-- ------------------------------------------------------------------------
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2021, 1, 56000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2021, 1, 123000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2021, 1, 91000);
INSERT INTO Sale (empno, year, month, price) VALUES (1007, 2021, 1, 78000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2021, 2, 32000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2021, 2, 148000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2021, 2, 106000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2021, 2, 112000);
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2021, 3, 47000);
INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2021, 3, 36000);
SELECT * FROM Sale;
-- ------------------------------------------------------------------------

# 실습 4-3
SELECT * FROM Employee WHERE name != '김춘추';
SELECT * FROM Employee WHERE name <> '김춘추'; -- != 연산자와 동일
SELECT * FROM Employee WHERE job = '사원' OR job = '대리';
SELECT * FROM Employee WHERE job IN ('사원', '대리'); 	-- 위 OR 조건절과 동일
SELECT * FROM Employee WHERE name LIKE '김%'; 		-- % : 와일드카드, 아무 문자열
SELECT * FROM Employee WHERE name LIKE '%신'; 		-- 이름이 '신'으로 끝나는 직원
SELECT * FROM Employee WHERE name LIKE '이_'; 		-- 이름이 '이'씨로 시작하는 두글자 직원
SELECT * FROM Employee WHERE job is NULL; 			-- job이 NULL인 직원

# 실습 4-4
SELECT * FROM sale ORDER BY price ASC;  -- ASC : ASCENDING, 오름차순
SELECT * FROM Sale ORDER BY price DESC; -- DESC : DESCENDING, 내림차순

SELECT * FROM Employee ORDER BY name ASC;
SELECT * FROM Employee ORDER BY regdate ASC;

SELECT * FROM Sale 
	WHERE price > 50000 
    ORDER BY year DESC, month, price DESC;

# 실습 4-5
SELECT * FROM Sale LIMIT 3;
SELECT * FROM Sale LIMIT 0, 3;
SELECT * FROM Sale LIMIT 1, 2;

SELECT * FROM Sale 
	WHERE price > 50000
		ORDER BY year DESC, month ASC, price DESC
			LIMIT 5;

# 실습 4-6
SELECT SUM(price) AS 합계 FROM Sale;



SELECT CEILING(1.2);
SELECT CEILING(1.8); -- 올림함수
SELECT FLOOR(1.2);
SELECT FLOOR(1.8); -- 내림함수
SELECT ROUND(1.2);
SELECT ROUND(1.8);
SELECT RAND(); 		-- 0 ~ 1 사이 실수
SELECT CEILING(RAND() * 45); -- 1 ~ 45 사이 정수

SELECT * FROM Sale;
UPDATE Sale Set price = 80000 WHERE no=3;
SELECT COUNT(price) AS 갯수 FROM Sale;
SELECT COUNT(*) AS 튜플갯수 FROM Sale;

SELECT LEFT('HelloWorld', 5);
SELECT RIGHT('HelloWorld', 5);
SELECT SUBSTRING('HelloWorld', 6, 5);
SELECT CONCAT('Hello', 'World');
SELECT CONCAT(empno, name, hp) FROM Employee WHERE empno='1008';

SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();

INSERT INTO Employee SET
				empno = '1012',
                name = '을지문덕',
                gender = 'F',
                hp = '010-1234-1012',
                regdate = NOW();

SELECT * FROM Employee;

# 실습 4-7
SELECT SUM(price) AS 매출총합 FROM Sale WHERE year=2018 AND month=1;

# 실습 4-8
SELECT 
	SUM(price) AS 총합,
    AVG(price) AS 평균
FROM Sale  
WHERE 
	year = 2019 AND 
	month=2 AND 
    price >= 50000;

# 실습 4-9
SELECT 
	MAX(price) AS 최고매출,
    MIN(price) AS 최저매출    
FROM Sale WHERE year = 2020;

# 실습 4-10
SELECT * FROM Sale;
SELECT empno FROM Sale GROUP BY empno; -- GROUP BY절에서 사용한 컬럼을 SELECT 조회
SELECT empno, year FROM Sale GROUP BY empno, year;

SELECT empno, COUNT(*) AS 건수 FROM Sale GROUP BY empno;

SELECT 
	empno, 
    year,
    SUM(price) AS 합계
FROM Sale 
WHERE price >= 50000
GROUP BY empno, year
ORDER BY 합계 DESC
LIMIT 3;

# 실습 4-11


SELECT 
	empno, 
    year,
    SUM(price) AS 합계
FROM Sale 
WHERE price >= 100000
GROUP BY empno, year
HAVING 합계 >= 200000 -- GROUP BY 결과의 조건
ORDER BY 합계 DESC;

# 실습 4-12
CREATE TABLE Sale2 LIKE Sale;
SELECT * FROM Sale2;
INSERT INTO Sale2 SELECT * FROM Sale;
UPDATE Sale2 SET year = year + 4;

SELECT * FROM Sale
UNION
SELECT * FROM Sale2;

SELECT 
	empno, year, SUM(price) AS 합계
FROM sale GROUP BY empno, year
UNION
SELECT 
	empno, year, SUM(price) AS 합계
FROM sale2 GROUP BY empno, year
ORDER BY year ASC, 합계 DESC;

# 실습 4-13
SELECT * FROM Sale;
SELECT * FROM Employee;

SELECT * 
	FROM Sale 
	INNER JOIN Employee ON Sale.empno = Employee.empno;

SELECT * FROM Employee JOIN Dept ON Employee.depno = Dept.depno;

SELECT * FROM Sale a 
		 JOIN Employee b
         ON a.empno = b.empno;
         
SELECT * FROM Sale AS a
			JOIN Employee AS b
            USING (empno); -- 두 테이블의 컬럼명이 동일한 경우 USING 사용

SELECT 
	a.no, a.empno, a.price, b.name, b.job, c.dname 
FROM Sale AS a
	JOIN Employee AS b ON a.empno = b.empno
    JOIN Dept AS c ON b.depno = c.depno
WHERE price > 100000
ORDER BY price DESC;

# 실습 4-14
SELECT * FROM Sale AS a
			LEFT JOIN Employee AS b
				ON a.empno = b.empno;

SELECT * FROM Sale AS a
			RIGHT JOIN Employee AS b
				ON a.empno = b.empno;

# 실습 4-15
SELECT 
	a.empno,
    a.name,
    a.job,
    b.dname
	FROM Employee AS a
			JOIN Dept AS b
				ON a.depno = b.depno;


# 실습 4-16
SELECT 
	SUM(price) AS 매출합 
FROM Employee AS a
JOIN Sale AS b
ON a.empno = b.empno
WHERE a.name = '김유신' AND b.year = 2019;

# 실습 4-17
SELECT 
	a.empno,  
    b.name,
    c.dname,
    b.job,
    a.year,
	SUM(price) AS 매출합
FROM Sale AS a
JOIN Employee AS b ON a.empno = b.empno
JOIN Dept AS c ON b.depno = c.depno
WHERE year = 2019 AND price >= 50000
GROUP BY empno
HAVING 매출합 >= 100000
ORDER BY 매출합 DESC;


















