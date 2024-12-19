/* 마리아 DB는 도메인 생성 지원하지 않음*/
-- CREATE TABLE TBL_Customer(
-- 	customer_id VARCHAR(50) PRIMARY KEY,
-- 	customer_name VARCHAR(100) NOT NULL,
-- 	age INT,
-- 	grade VARCHAR(20),
-- 	job VARCHAR(50),
-- 	points INT
-- );


-- CREATE TABLE TBL_Product(
-- 	product_id VARCHAR(50) PRIMARY KEY,
-- 	product_name VARCHAR(100) NOT NULL,
-- 	stock INT NOT NULL,
-- 	price INT NOT NULL,
-- 	manufacturer VARCHAR(100)
-- );


-- CREATE TABLE TBL_Order_List(
-- 	order_id VARCHAR(50) PRIMARY KEY,
-- 	customer_id VARCHAR(50),
-- 	product_id VARCHAR(50),
-- 	quantity INT NOT NULL,
-- 	delivery_address VARCHAR(255),
-- 	order_date DATE NOT NULL,
-- 	FOREIGN KEY(customer_id) REFERENCES tbl_customer(customer_id) ON UPDATE CASCADE ON DELETE CASCADE,
-- 	FOREIGN KEY(product_id) REFERENCES tbl_product(product_id) ON UPDATE RESTRICT ON DELETE RESTRICT
-- );


-- mysql index 생성
-- CREATE INDEX ORDER_LIST_IDX_product_id ON tbl_order_list(product_id);
-- ALTER TABLE tbl_order_list ADD INDEX ORDER_LIST_IDX_customer_id(customer_id);

-- mysql index 조회
-- SHOW INDEX FROM tbl_order_list;

-- mysql index 삭제
-- DROP INDEX ORDER_LIST_IDX_customer_id ON tbl_order_list;

-- mysql 외래키 확인 쿼리문
-- SHOW CREATE TABLE tbl_order_list;
-- CREATE TABLE `tbl_order_list` (
--   `order_id` varchar(50) NOT NULL,
--   `customer_id` varchar(50) DEFAULT NULL,
--   `product_id` varchar(50) DEFAULT NULL,
--   `quantity` int(11) NOT NULL,
--   `delivery_address` varchar(255) DEFAULT NULL,
--   `order_date` date NOT NULL,
--   PRIMARY KEY (`order_id`),
--   KEY `product_id` (`product_id`),
--   KEY `ORDER_LIST_IDX_customer_id` (`customer_id`),
--   CONSTRAINT `tbl_order_list_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
--   CONSTRAINT `tbl_order_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci

-- mysql 외래키 삭제
-- ALTER TABLE tbl_order_list DROP CONSTRAINT tbl_order_list_ibfk_1;
-- ALTER TABLE tbl_order_list DROP CONSTRAINT tbl_order_list_ibfk_2;

-- mysql 외래키 생성
-- ALTER TABLE tbl_order_list add CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES tbl_product(product_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
-- ALTER TABLE tbl_order_list add CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES tbl_customer(customer_id) ON UPDATE CASCADE ON DELETE CASCADE;


-- INSERT INTO TBL_CUSTOMER
--    VALUES ( 'apple', '정소화',20, 'gold', '학생', 1000),
--    ( 'banana', '김선우',25, 'vip', '간호사', 2500),
--    ( 'carrot', '고명석',28, 'gold', '교사', 4500),
--    ( 'orange', '김용욱',22, 'silver', '학생', 0),
--    ( 'melon', '성원용',35, 'gold', '회사원', 5000),
--    ( 'peach', '오형준',NULL, 'silver', '의사', 300),
--    ( 'pear', '채광주',31, 'silver', '회사원', 500);
-- 
--    INSERT INTO TBL_PRODUCT VALUES
--     ( 'p01', '그냥만두',5000,4500 ,'대한식품' ),
--     ( 'p02', '매운쫄면',2500,5500 ,'민국푸드' ),
--     ( 'p03', '콩떡파이',3600,2600 ,'한빛제과' ),
--     ( 'p04', '맛난초콜릿',1250,2500 ,'한빛제과' ),
--     ( 'p05', '얼큰라면',2200,1200 ,'대한식품' ),
--     ( 'p06', '통통우동',1000,1550 ,'민국푸드' ),
--     ( 'p07', '달콤비스킷',1650,1500 ,'한빛제과' );
-- 
--    INSERT INTO TBL_ORDER_LIST VALUES
--       ( 'o01', 'apple', 'p03', 10,  '서울시 마포구', '2024-01-01'),
--       ( 'o02', 'melon', 'p01', 5,  '인천시 계양구', '2024-01-10'),
--       ( 'o03', 'banana', 'p06', 45,  '경기도 부천시', '2024-01-11'),
--       ( 'o04', 'carrot', 'p02', 8,  '부산시 금정구', '2024-02-01'),
--       ( 'o05', 'melon', 'p06', 36,  '경기도 용인시', '2024-02-20'),
--       ( 'o06', 'banana', 'p01', 19,  '충청북도 보은군', '2024-03-02'),
--       ( 'o07', 'apple', 'p03', 22,  '서울시 영등포구', '2024-03-15'),
--       ( 'o08', 'pear', 'p02', 50,  '강원도 춘천시', '2024-04-10'),
--       ( 'o09', 'banana', 'p04', 15,  '전라남도 목포시', '2024-04-11'),
--       ( 'o10', 'carrot', 'p03', 20,  '경기도 안양시', '2024-05-22'),
--  — Foreign key에 null은 입력가능
--       ( 'o11', null, 'p03', 20,  '경기도 안양시', '2024-05-22');

-- 쿼리 실행 순서
-- FROM > WHERE > GROUP BY > HAVING > ORDER BY > SELECT

-- SELECT customer_id, customer_name, grade FROM tbl_customer;

-- SELECT manufacturer FROM tbl_product;
-- distinct 중복 제거
-- SELECT DISTINCT manufacturer FROM tbl_product;
-- 전부 조회
-- SELECT all manufacturer FROM tbl_product;
-- 띄어쓰기를 입력할 경우 'test  test' 따옴표 안에 있어야 가능하다.
-- SELECT manufacturer '제 조 사' FROM tbl_product;
-- SELECT product_id 상품ID, product_name 상품명, stock 재고량, price 가격, manufacturer 제조업체 FROM tbl_product;
-- mysql 산술식
-- SELECT product_id 상품ID, product_name 상품명, stock 재고량, price 가격, price + 500 '조정 가격', manufacturer 제조업체 FROM tbl_product;
-- SELECT product_id 상품ID, product_name 상품명, stock 재고량, (stock * price) '재고의 총 가격의 합', price 가격, price + 500 '조정 가격', manufacturer 제조업체 FROM tbl_product;

-- SELECT product_id, product_name, stock, price, manufacturer FROM tbl_product WHERE manufacturer = '한빛제과';
-- SELECT product_id, product_name, stock, price, manufacturer FROM tbl_product WHERE manufacturer != '한빛제과';

-- SELECT customer_id, product_id, quantity, order_date FROM tbl_order_list WHERE customer_id = 'apple' AND quantity >= 15;
-- SELECT customer_id, product_id, quantity, order_date FROM tbl_order_list WHERE customer_id = 'apple' or quantity >= 15;

-- SELECT product_id, product_name, price, manufacturer FROM tbl_product WHERE price >= 2000 and price <= 3000;
-- SELECT product_id, product_name, price, manufacturer FROM tbl_product WHERE price BETWEEN 2000 AND 3000;
-- SELECT product_id, product_name, price, manufacturer FROM tbl_product WHERE manufacturer LIKE '%제과';

-- SELECT * FROM tbl_customer WHERE customer_name LIKE '김%';
-- SELECT * FROM tbl_customer WHERE customer_name LIKE '%형%';
-- SELECT * FROM tbl_customer;
-- SELECT * from tbl_customer where customer_id LIKE '_____';
-- SELECT * FROM tbl_customer WHERE points LIKE '___';
-- SELECT * FROM tbl_customer WHERE points BETWEEN 100 AND 999;

-- SELECT * FROM tbl_customer;   
-- SELECT * FROM tbl_customer WHERE age IS NULL;
-- SELECT * FROM tbl_customer ORDER BY age DESC;
-- SELECT * FROM tbl_order_list WHERE tbl_order_list.quantity >= 10 ORDER BY tbl_order_list.product_id ASC, tbl_order_list.quantity DESC;

-- SELECT COUNT(tbl_product.product_id), AVG(tbl_product.price) FROM tbl_product;
-- SELECT SUM(stock) '재고량 합계' FROM tbl_product WHERE manufacturer = '한빛제과';

-- SELECT COUNT(customer_id) FROM tbl_customer;
-- SELECT COUNT(age) FROM tbl_customer;
-- SELECT COUNT(*) FROM tbl_customer;

-- 중복이 제거 되고 count
-- SELECT COUNT(DISTINCT manufacturer) FROM tbl_product;

-- coalesce(칼럼명, 넣을 값)  대체 값
-- SELECT customer_id, customer_name, COALESCE(age, 0) AS '나이(없으면 0 적용)' FROM tbl_customer;

-- SELECT order_id, COALESCE(customer_id, '미확인') 'customer_id(없는 경우 미확인)', product_id, quantity FROM tbl_order_list;

-- SELECT COALESCE(NULL, NULL, NULL, 1);
-- SELECT COALESCE(10, NULL, NULL, 1);
-- SELECT COALESCE(NULL, 1, 2, 3);
-- SELECT COALESCE(NULL, NULL, NULL, NULL, '모두null');

-- INSERT INTO tbl_product VALUES('product_id', 'product_name', 'stock', 'price', 'manufacturer');
-- SELECT CONCAT("INSERT INTO tbl_product VALUES('",  product_id, "', '", product_name, "', '", stock, "', '", price, "', '", manufacturer, "');") 
-- AS 'insert문' FROM tbl_product;

-- SELECT product_id, COUNT(*) '주문건수', SUM(quantity) '총주문수량' FROM tbl_order_list GROUP BY product_id;

-- SELECT manufacturer, COUNT(*) 제품수, MAX(price) 최고단가 FROM tbl_product GROUP BY manufacturer;

-- SELECT * FROM tbl_product;
-- SELECT * FROM tbl_order_list;
-- SELECT * FROM tbl_product a LEFT JOIN tbl_order_list b ON a.product_id = b.product_id;
-- -- 제품 테이블에서 제품을 3개 이상 제조한 제조업체별로 제품의 개수와 제품 중 가장 비싼 단가를 검색.
-- SELECT * FROM tbl_product GROUP BY manufacturer HAVING COUNT(*) >= 3;
-- 고객 테이블에서 적립금 평균이 1,000원 이상인 등급에 대해 등급별 고객 수와 적립금 평균을 검색.
-- SELECT * FROM tbl_customer;
-- SELECT AVG(points) FROM tbl_customer GROUP BY grade HAVING AVG(points) >= 1000;

-- SELECT * FROM tbl_order_list;
-- 주문 테이블에서 각 주문고객이 주문한 제품의 총 주문 수량을 주문 제품별로 검색.
-- SELECT customer_id, product_id, quantity, SUM(quantity) FROM tbl_order_list group BY customer_id ,product_id;

-- 제품 테이블에서 각 제품별 수량과 주문 테이블에 각 제품 별 수량을 검색(*중복  포함)
-- SELECT product_id, COUNT(*) cnt FROM tbl_product GROUP BY product_id UNION ALL SELECT product_id, COUNT(*) cnt FROM tbl_order_list GROUP BY product_id;
-- 제품 테이블에서 각 제품별 수량과 주문 테이블에 각 제품 별 수량을 검색(*중복  제외)
-- SELECT product_id, COUNT(*) cnt FROM tbl_product GROUP BY product_id UNION SELECT product_id, COUNT(*) cnt FROM tbl_order_list GROUP BY product_id;

-- intersect(교집합)  /  제품 테이블과 주문 테이블에 모두 존재하는 제품 
-- SELECT DISTINCT product_id FROM tbl_product INTERSECT SELECT DISTINCT product_id FROM tbl_order_list;

-- except(차집합)  /  제품 테이블에는 존재하고 주문 테이블에는 존재하지 않는 제품 ID를 검색.
-- SELECT product_id FROM tbl_product EXCEPT SELECT product_id FROM tbl_order_list;

-- SELECT * FROM tbl_order_list;
-- SELECT * FROM tbl_product;
-- SELECT * FROM tbl_order_list a LEFT JOIN tbl_product b on a.product_id = b.product_id where a.customer_id='banana';
-- 선생님 예시
-- SELECT o.customer_id, o.product_id, b.product_id, b.product_name FROM tbl_order_list o, tbl_product b WHERE o.product_id = b.product_id AND customer_id = 'banana';

-- SELECT * FROM tbl_order_list;
-- SELECT * FROM tbl_product;
-- SELECT * FROM tbl_customer;
-- 판매 데이터베이스에서 나이가 30세 이상 고객(고객정보)이 주문한 제품 ID와 주문일자를 검색.
-- SELECT a.age, a.customer_name, b.product_id, b.order_date FROM tbl_customer a, tbl_order_list b WHERE a.customer_id = b.customer_id AND age >= 30;
-- 판매 내역 전체를 조회하는데 고객명(고객정보)과 상품명(상품정보)도 출력항목에 포함한다.
-- SELECT * FROM tbl_order_list a, tbl_product b, tbl_customer c WHERE a.customer_id = c.customer_id AND a.product_id = b.product_id;
-- 고명석 고객이 주문한 제품의 제품명, 주문일자, 주문 건수를 검색.
-- SELECT * FROM tbl_order_list a, tbl_customer b, tbl_product c WHERE a.customer_id = b.customer_id AND a.product_id = c.product_id AND b.customer_name = '고명석';

-- SELECT a.customer_id, a.product_id, b.product_name, a.quantity, a.order_date FROM tbl_order_list a INNER JOIN tbl_product b ON a.product_id = b.product_id;


-- SELECT * FROM tbl_order_list;
-- SELECT * FROM tbl_customer;
-- SELECT * FROM tbl_product;

-- inner join : 합집합으로 없는 것들을 빼는 join.

-- 'banana' 고객의 판매내역을 조회하는데, 상품ID, 상품명, 주문수량, 주문일자를 검색.
-- SELECT a.product_id, a.order_id, a.quantity, a.order_date FROM tbl_order_list a INNER JOIN tbl_product b ON a.product_id = b.product_id WHERE a.customer_id = 'banana';

-- 판매 데이터베이스에서 나이가 30세 이상 고객이 주문한 제품의 주문번호, 주문일자를 검색.
-- SELECT a.order_id, a.order_date, b.age FROM tbl_order_list a INNER JOIN tbl_customer b ON a.customer_id = b.customer_id WHERE b.age >= 30;

-- 판매내역 전체를 조회하는데, 고객명과 상품명도 출력 항목에 포함.
-- '='이 없을 경우 테이블을 곱하기 때문에 테이블이 엄청 커진다.
-- SELECT b.customer_name, a.order_id FROM tbl_order_list a INNER JOIN tbl_customer b INNER join tbl_product c ON a.customer_id = b.customer_id AND a.product_id = c.product_id;

-- mysql의 경우 테이블명에 별명이 붙은 경우 * 앞에 a.*, b.*로 붙여줘야 조회가 가능하다.
-- 고명석 고객이 주문한 제품의 제품명, 주문일자, 주문수량을 검색.
-- SELECT a.order_id, a.order_date, a.quantity, a.*, b.* FROM tbl_order_list a INNER JOIN tbl_customer b ON a.customer_id = b.customer_id WHERE b.customer_name = '고명석';

-- (natural join) 제품테이블과 주문테이블을 조인하여 두 테이블의 모든 정보를 검색.
-- SELECT a.*, b.* FROM tbl_order_list a NATURAL JOIN tbl_product b;

-- using(이름이 같다면 연결할 키 나열)
-- 제품 테이블과 주문 테이블을 조인하여 두 테이블의 모든 정보를 검색.
-- SELECT a.*, b.* FROM tbl_product a JOIN tbl_order_list b USING(product_id);

-- 제품 테이블과 주문 테이블을 조인하여 두 테이블의 모든 정보를 검색.
-- SELECT * FROM tbl_order_list a JOIN tbl_product b USING(product_id) JOIN tbl_customer c USING(customer_id);



-- left join : 왼쪽이 메인 테이블로 없는 값은 null로 채운다.
-- 판매 데이터베이스에서 고객이 존재하지 않는 주문을 검색.
-- SELECT * FROM tbl_order_list a LEFT JOIN tbl_customer b ON a.customer_id = b.customer_id;
-- SELECT * FROM tbl_order_list a right JOIN tbl_customer b ON a.customer_id = b.customer_id;
-- SELECT * FROM tbl_order_list a inner JOIN tbl_customer b ON a.customer_id = b.customer_id;

-- CREATE TABLE TBL_EMPLOYEE(
-- 	emp_id INT PRIMARY KEY,				-- 사원 ID
-- 	emp_name VARCHAR(50) NOT NULL,	-- 사원 이름
-- 	POSITION VARCHAR(50),				-- 직급
-- 	salary INT,								-- 급여
-- 	manager_id INT							-- 관리자ID
-- )
-- SELECT * FROM tbl_employee;

-- INSERT INTO tbl_employee (emp_id, emp_name, position, salary, manager_id) VALUES
-- (1, '김철수', '대표이사', 1000000, NULL),			--  김철수는 최고 관리자(대표이사)
-- (2, '이영희', '부장', 700000, 1),					-- 김철수가 이영희의 관리자
-- (3, '박민수', '부장', 700000, 1),					-- 김철수가 박민수의 관리자
-- (4, '최지훈', '사원', 400000, 2),				-- 이영희가 최지훈의 관리자
-- (5, '정다은', '사원', 400000, 2),				-- 이영희가 정다은의 관리자
-- (6, '한서준', '사원', 400000, 3),				-- 박민수가 한서준의 관리자?
-- (7, '장수현', '사원', 400000, 3);				-- 박민수가 장수현의 관리자?

-- SELECT * FROM tbl_employee;

-- self join(재귀호출)
-- 직원 테이블에서 직원과 상위 관리자를 매핑하여 조회.
-- SELECT a.emp_id 사원번호, a.emp_name 사원이름, a.position 사원직급, b.emp_name 관리자이름, b.position 관리자직급 FROM tbl_employee a LEFT JOIN tbl_employee b ON a.manager_id = b.emp_id;

-- sub query
-- SELECT customer_name, (
-- 	SELECT COUNT(*) FROM tbl_order_list a WHERE a.customer_id = b.customer_id
-- 	) order_count
-- FROM tbl_customer b ORDER BY order_count DESC;

-- 고객 테이블과 주문 테이블을 사용해, 각 고객의 이름과 해당 고객의 총 주문 수를 조회 (left join)
-- SELECT a.customer_name, COUNT(b.customer_id) order_counts
-- FROM tbl_customer a 
-- LEFT JOIN tbl_order_list b ON a.customer_id = b.customer_id
-- GROUP BY customer_name 
-- ORDER BY order_counts  DESC;

-- 주문 테이블에서 총 주문량이 50을 초과하는 제품 ID와 총 주문량 조회
-- SELECT product_id, total_quantity
-- FROM (
-- 	SELECT product_id, SUM(quantity) total_quantity FROM tbl_order_list GROUP BY product_id
-- ) product_totals
-- WHERE total_quantity > 50;

-- 주문 테이블에서 총 주문량이 50을 초과하는 제품 ID와 총 주문량 조회(서브 쿼리 미사용)
-- SELECT product_id, SUM(quantity) total_quantity
-- FROM tbl_order_list
-- GROUP BY product_id
-- HAVING SUM(quantity) > 50;

-- "성원용" 고객의 전체 주문내역을 검색.
-- SELECT * FROM tbl_order_list WHERE customer_id IN (
-- 	SELECT customer_id
-- 	FROM tbl_customer
-- 	WHERE customer_name = '성원용'
-- );

-- SELECT * FROM tbl_order_list WHERE customer_id not IN (
-- 	SELECT customer_id
-- 	FROM tbl_customer
-- 	WHERE customer_name = '성원용'
-- );

-- SELECT * FROM tbl_order_list WHERE customer_id = (
-- 	SELECT customer_id
-- 	FROM tbl_customer
-- 	WHERE customer_name = '성원용'
-- );

-- SELECT * FROM tbl_customer;
-- SELECT * FROM tbl_order_list;
-- INSERT into tbl_customer (customer_id, customer_name, age, grade, job, points) VALUES ('grape', '성원용', 27, 'silver', '직장인', 0);
-- INSERT INTO tbl_order_list (order_id, customer_id, product_id, quantity, delivery_address, order_date) VALUES ('o12', 'grape', 'p04', 33, '서울시 서초구', '2024-12-03');

-- insert
-- INSERT into tbl_customer (customer_id, customer_name, age, grade, points) VALUES ('tomato', '정은심', 38, 'gold', 100);
-- SHOW CREATE TABLE tbl_customer;
-- SELECT * FROM tbl_customer;

-- 부속질의문 insert
-- CREATE TABLE tbl_manufacturer(
-- 	manufacturer_id INT AUTO_INCREMENT PRIMARY KEY,		-- auto_increment > 자동 시퀀스 값
-- 	manufacturer_name VARCHAR(50) NOT NULL,
-- 	address VARCHAR(255)
-- );
-- INSERT INTO tbl_manufacturer(manufacturer_name)
-- SELECT DISTINCT manufacturer FROM tbl_product;  -- 중복제거 된 값 삽입
-- SELECT * FROM tbl_manufacturer;
-- SELECT DISTINCT manufacturer FROM tbl_product;



