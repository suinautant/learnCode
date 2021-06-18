-- --------------------------------
-- 20210618
-- --------------------------------
/* ============================ */
/* ===== ANSI JOIN SYNTAX ===== */
/* ============================ */
SELECT
  v.vend_name,
  p.prod_name,
  p.prod_price
FROM
  vendors v
  JOIN products p ON v.vend_id = p.vend_id;
  /* ======================== */
  /* ===== T-SQL SYNTAX ===== */
  /* ======================== */
SELECT
  v.vend_name,
  p.prod_name,
  p.prod_price
FROM
  vendors v,
  products p
where
  v.vend_id = p.vend_id;
  /* ================= */
  /* ===== 5-2-5 ===== */
  /* ================= */
SELECT
  v.vend_name,
  p.prod_name,
  p.prod_price
FROM
  vendors v
  JOIN products p ON v.vend_id = p.vend_id
WHERE
  p.prod_price >= (
    SELECT
      AVG(p.prod_price)
    FROM
      products
  );
  /* ================= */
  /* ===== 5-2-6 ===== */
  /* ================= */
SELECT
  v.vend_name,
  p.prod_name,
  p.prod_price
FROM
  vendors v
  JOIN products p ON v.vend_id = p.vend_id
WHERE
  p.prod_price >= (
    SELECT
      AVG(p.prod_price)
    FROM
      products
  );
  /* ================= */
  /* ===== 5-2-7 ===== */
  /* ================= */
  CREATE VIEW vendorsproducts1 AS
SELECT
  v.vend_name,
  p.prod_name,
  p.prod_price
FROM
  vendors v
  JOIN products p ON v.vend_id = p.vend_id
WHERE
  p.prod_price >= (
    SELECT
      AVG(p.prod_price)
    FROM
      products p
  );
  /* ====================== */
  /* ===== ALTER TEST ===== */
  /* ====================== */
INSERT INTO
  member (name, tel)
VALUES('홍길동', '010-1111-1111');
INSERT INTO
  member (name, tel)
VALUES('이순신', '010-2222-2222');
ALTER TABLE
  member
ADD
  COLUMN (addr VARCHAR(50));
ALTER TABLE
  member DROP COLUMN tel;
DROP DATABASE test2;
  /* ==================== */
  /* ===== 대박은행 ===== */
  /* ==================== */
  /* ========================== */
  /* ===== customer table ===== */
  /* ========================== */
INSERT INTO
  customer
VALUES
  (
    'C10001',
    '강진우',
    '서울특별시 서초구 서초동 595-10',
    '02-111-1111'
  );
INSERT INTO
  customer
VALUES
  (
    'C10002',
    '김민규',
    '부산광역시 수영구 남천동 33',
    '051-222-2222'
  );
INSERT INTO
  customer
VALUES
  (
    'C11001',
    '김정훈',
    '서울특별시 성북구 돈암동 456-1',
    '02-333-3333'
  );
INSERT INTO
  customer
VALUES
  (
    'C11002',
    '김희래',
    '대구광역시 수성구 범어동 45',
    '053-444-4444'
  );
INSERT INTO
  customer
VALUES
  (
    'C11003',
    '나원호',
    '광주광역시 광산구 송정동 63-6',
    '062-555-5555'
  );
INSERT INTO
  customer
VALUES
  (
    'C11004',
    '성민재',
    '대전광역시 유성구 대정동 29-4',
    '042-666-6666'
  );
INSERT INTO
  customer
VALUES
  (
    'C12001',
    '이상우',
    '울산광역시 남구 무거동 762',
    '052-777-7777'
  );
INSERT INTO
  customer
VALUES
  (
    'C12002',
    '이상학',
    '인천고아역시 남동구 간석동 104',
    '032-888-8888'
  );
INSERT INTO
  customer
VALUES
  (
    'C12003',
    '이희웅',
    '서울특별시 강서구 화곡동 283',
    '02-999-9999'
  );
INSERT INTO
  customer
VALUES
  (
    'C12004',
    '정인교',
    '부산광역시 북구 덕천동 290',
    '051-000-0000'
  );
insert into
  branch(b_code, b_name, b_addr, b_phone, b_assets)
values(
    'B10001',
    '서울강북',
    '서울특별시 강북구 1111',
    '02-100-1000',
    1000000000
  );
insert into
  branch(b_code, b_name, b_addr, b_phone, b_assets)
values(
    'B20001',
    '부산본점',
    '부산광역시 연제구 연산동 3333',
    '051-300-3000',
    2100000000
  );
insert into
  branch(b_code, b_name, b_addr, b_phone, b_assets)
values(
    'B20002',
    '울산',
    '울산광역시 남구 신정동 7777',
    '052-700-7000',
    500000000
  );
insert into
  branch(b_code, b_name, b_addr, b_phone, b_assets)
values(
    'B30001',
    '대구',
    '대구광역시 중구 동인동 4444',
    '053-400-4000',
    800000000
  );
insert into
  branch(b_code, b_name, b_addr, b_phone, b_assets)
values(
    'B40001',
    '광주',
    '광주광역시 서구 치평동 5555',
    '062-500-5000',
    700000000
  );
insert into
  branch(b_code, b_name, b_addr, b_phone, b_assets)
values(
    '540001',
    '대전',
    '대전광역시 서구 둔산동 6666',
    '042-600-6000',
    600000000
  );
insert into
  branch(b_code, b_name, b_addr, b_phone, b_assets)
values(
    'B10002',
    '서울강남',
    '서울특별시 강남구 논현동 2222',
    '02-200-2000',
    2000000000
  );
insert into
  branch(b_code, b_name, b_addr, b_phone, b_assets)
values(
    'B10003',
    '인천',
    '인천광역시 남동구 구월동 8888',
    '032-800-8000',
    1500000000
  );
insert into
  branch(b_code, b_name, b_addr, b_phone, b_assets)
values(
    'B20003',
    '제주',
    '제주특별자치도 제주시 연동 9999',
    '063-900-9000',
    300000000
  );
insert into
  account(
    a_no,
    a_name,
    a_dropdate,
    a_term,
    a_amount,
    branch_b_code
  )
values(
    '1100986756',
    '내사랑독도정기예금',
    NULL,
    '20',
    '3000000',
    'B10001'
  );
insert into
  account(
    a_no,
    a_name,
    a_dropdate,
    a_term,
    a_amount,
    branch_b_code
  )
values(
    '110761102',
    '하이복리정기예금',
    NULL,
    '30',
    '6000000',
    'B30001'
  );
insert into
  account(
    a_no,
    a_name,
    a_dropdate,
    a_term,
    a_amount,
    branch_b_code
  )
values(
    '1100441401',
    '풍년기원정기예금',
    NULL,
    '50',
    '10000000',
    'B20002'
  );
insert into
  account(
    a_no,
    a_name,
    a_dropdate,
    a_term,
    a_amount,
    branch_b_code
  )
values(
    '1100892234',
    '고금리특판예금',
    '2012-06-13',
    '60',
    '6000000',
    'B40001'
  );
insert into
  account(
    a_no,
    a_name,
    a_dropdate,
    a_term,
    a_amount,
    branch_b_code
  )
values(
    '1100345641',
    '롯데가을야구정기예금',
    NULL,
    '40',
    '8000000',
    'B20001'
  );
insert into
  account(
    a_no,
    a_name,
    a_dropdate,
    a_term,
    a_amount,
    branch_b_code
  )
values(
    '1100667709',
    '행복채움정기예금',
    NULL,
    '20',
    '4000000',
    'B10002'
  );
insert into
  account(
    a_no,
    a_name,
    a_dropdate,
    a_term,
    a_amount,
    branch_b_code
  )
values(
    '1101233412',
    '베이비케어정기예금',
    '2012-08-31',
    '10',
    '2000000',
    'B50001'
  );
insert into
  account(
    a_no,
    a_name,
    a_dropdate,
    a_term,
    a_amount,
    branch_b_code
  )
values(
    '1101452311',
    '예스월복리정기예금',
    NULL,
    '30',
    '4500000',
    'B10003'
  );
  /* ========================== */
  /* ===== loan table ===== */
  /* ========================== */
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L110001',
    '근로자서민대출상품',
    '2011-05-01',
    60,
    10000000,
    'B10001'
  );
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L110002',
    '전업주부대출상품',
    '2011-07-01',
    36,
    5000000,
    'B30001'
  );
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L110003',
    '다이렉트대출상품',
    '2011-09-25',
    12,
    7000000,
    'B20001'
  );
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L110004',
    '우리신용대출상품',
    '2011-11-30',
    24,
    6000000,
    'B40001'
  );
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L120001',
    '부동산담보대출상품',
    '2011-12-15',
    120,
    50000000,
    'B20002'
  );
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L120002',
    '결혼출산장려대출상품',
    '2012-02-01',
    48,
    10000000,
    'B10002'
  );
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L120003',
    '새희망홀씨대출상품',
    '2012-03-14',
    60,
    30000000,
    'B20001'
  );
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L120004',
    '학자금대출상품',
    '2012-05-25',
    36,
    3000000,
    'B10003'
  );
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L120005',
    '중소기업신용대출상품',
    '2012-07-10',
    60,
    20000000,
    'B20003'
  );
INSERT INTO
  loan (
    l_no,
    l_name,
    l_date,
    l_term,
    l_amount,
    branch_b_code
  )
VALUES
  (
    'L120006',
    '전세자금대출상품',
    '2012-08-30',
    90,
    15000000,
    'B50001'
  );
  /* ====================================== */
  /* ===== customer_has_account table ===== */
  /* 해당하는 이름명으로 할 것 */
  /* RENAME TABLE old_table TO new_table; */
  /* ====================================== */
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C10001', '1100986756');
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C10002', '1100345641');
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C11001', '1100441401');
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C11002', '1100892234');
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C11003', '1100345641');
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C11004', '1101452311');
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C12001', '1101233412');
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C12002', '1101452311');
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C12003', '1100761102');
INSERT INTO
  customer_has_account (customer_c_no, account_a_no)
VALUES
  ('C12004', '1100667709');
  /* ====================================== */
  /* ===== customer_has_account table ===== */
  /* 해당하는 이름명으로 할 것 */
  /* ====================================== */
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C10001', 'L120001');
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C10002', 'L120005');
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C11001', 'L120002');
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C11002', 'L120003');
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C11003', 'L110001');
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C11004', 'L120006');
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C12001', 'L110004');
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C12002', 'L110003');
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C12003', 'L110002');
INSERT INTO
  customer_has_loan (customer_c_no, loan_l_no)
values
  ('C12004', 'L120004');
  /* =============== */
  /* ===== 5-1 ===== */
  /* =============== */
SELECT
  c_no,
  c_name,
  c_addr
FROM
  customer;
  /* =============== */
  /* ===== 5-2 ===== */
  /* =============== */
SELECT
  *
FROM
  account
WHERE
  a_dropdate IS NOT NULL;
  /* =============== */
  /* ===== 5-3 ===== */
  /* =============== */
SELECT
  c_name,
  c_addr,
  c_phone
FROM
  customer
WHERE
  c_addr LIKE '서울%'
  OR c_addr LIKE '부산%';
  /* =============== */
  /* ===== 5-4 ===== */
  /* =============== */
SELECT
  a_no,
  a_name,
  a_dropdate,
  a_amount
FROM
  account
WHERE
  branch_b_code = (
    SELECT
      b_code
    FROM
      branch
    WHERE
      b_name = '광주'
  );
  /* JOIN */
SELECT
  a.a_no,
  a.a_name,
  a.a_dropdate,
  a.a_amount
FROM
  account a
  JOIN branch b ON a.branch_b_code = b.b_code
WHERE
  b.b_name = '광주';
  /* =============== */
  /* ===== 5-5 ===== */
  /* =============== */
SELECT
  *
FROM
  branch b
  LEFT JOIN account a ON b.b_code = a.branch_b_code
WHERE
  a.a_name IS NULL;
SELECT
  *
FROM
  branch
WHERE
  b_code NOT IN (
    SELECT
      a.branch_b_code
    FROM
      account a
  );
  /* =============== */
  /* ===== 5-6 ===== */
  /* =============== */
SELECT
  l_no,
  l_name,
  l_date,
  l_term,
  l_amount
FROM
  loan;
  /* =============== */
  /* ===== 5-7 ===== */
  /* =============== */
SELECT
  *
FROM
  loan
WHERE
  branch_b_code IN (
    SELECT
      b_code
    FROM
      branch
    WHERE
      b_name LIKE '서울%'
  );
  /* join */
SELECT
  *
FROM
  loan l
  JOIN branch b ON l.branch_b_code = b.b_code
WHERE
  b.b_name LIKE '서울%';
  /* =============== */
  /* ===== 5-8 ===== */
  /* =============== */
SELECT
  COUNT(*)
FROM
  account
WHERE
  branch_b_code IN (
    SELECT
      b_code
    FROM
      branch
    WHERE
      b_name = '부산본점'
      OR b_name = '울산'
  );
  /* ==== */
  /* join */
  /* ==== */
SELECT
  *
FROM
  branch b
  JOIN account a ON b.b_code = a.branch_b_code
WHERE
  b_name IN ('부산본점', '울산');
  /* =============== */
  /* ===== 5-9 ===== */
  /* =============== */
SELECT
  b_name,
  b_addr,
  b_phone,
  b_assets
FROM
  branch
WHERE
  b_assets >= 1000000000;
  /* ================ */
  /* ===== 5-10 ===== */
  /* ================ */
UPDATE
  customer
SET
  c_addr = '부산광역시 동래구 명륜동'
WHERE
  c_name = '김정훈';
UPDATE
  customer
SET
  c_addr = '인천광역시 남동구 간석동 104'
WHERE
  c_name = '이상학';
  /* ================ */
  /* ===== 5-11 ===== */
  /* ================ */
SELECT
  b_name
FROM
  branch
WHERE
  b_code = (
    SELECT
      branch_b_code
    FROM
      account
    WHERE
      a_name LIKE '롯데가을%'
  );
  /* join */
SELECT
  b.b_name
FROM
  branch b
  JOIN account a ON a.branch_b_code = b.b_code
WHERE
  a_name = '롯데가을야구정기예금';
  /* ================ */
  /* ===== 5-12 ===== */
  /* ================ */
SELECT
  l_name,
  l_amount
FROM
  loan
WHERE
  l_term >= 48
ORDER BY
  l_amount DESC
LIMIT
  1;
  /* ================ */
  /* ===== 5-13 ===== */
  /* ================ */
UPDATE
  loan
SET
  l_term = 48,
  l_amount = 4000000
WHERE
  l_name LIKE '학자금%';
select
  *
from
  loan
where
  l_name like '학자금%';
  /* ================ */
  /* ===== 5-14 ===== */
  /* ================ */
SELECT
  l_no,
  l_date,
  l_name
FROM
  loan
WHERE
  l_name = '새희망홀씨대출상품';
  /* ================= */
  /* ===== 5-15  ===== */
  /* ================= */
SELECT
  c.c_name,
  l.l_amount
FROM
  loan l
  JOIN loan_has_customer lc ON l.l_no = lc.loan_l_no
  JOIN customer c ON c.c_no = lc.customer_c_no;
SELECT
  c.c_name,
  l.l_amount
FROM
  loan_has_customer lc
  JOIN loan l ON l.l_no = lc.loan_l_no
  JOIN customer c ON c.c_no = lc.customer_c_no;
  /* ================= */
  /* ===== 5-16  ===== */
  /* ================= */
SELECT
  a.a_no,
  ac.customer_c_no,
  a.a_amount * 1.115 AS '예금액*11.5%'
FROM
  account_has_customer ac
  JOIN account a ON ac.account_a_no = a.a_no;
SELECT
  a.a_no,
  ac.customer_c_no,
  SUM(a.a_amount) * 1.115 AS '예금액*11.5%'
FROM
  account_has_customer ac
  JOIN account a ON ac.account_a_no = a.a_no
  JOIN customer c ON ac.customer_c_no = c.c_no
GROUP BY
  c.c_no;