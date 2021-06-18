※ 아 래 의 지 시 사 항 에 따 라 실 습 하 여 보 시 오.문 제 1.이 름 이 김 씨 인 사 람 의 모 든 컬 럼 을 검 색 하 여 보 시 오.
SELECT
  *
FROM
  employee
WHERE
  pname LIKE '김%';
문 제 2.2010 년 에 입 사 한 사 람 의 이 름,
  입 사 일,
  급 여 를 검 색 하 여 보 시 오.
SELECT
  *
FROM
  employee
WHERE
  hiredate LIKE '2010-%';
문 제 3.직 급 이 과 장 인 사 람 의 급 여 평 균 을 구 하 여 보 시 오.단,
  별 칭 은 임 의 로 하 시 오.
SELECT
  AVG(sal) as '과장 급여'
FROM
  employee
WHERE
  job = '과장';
v 문 제 4.직 급 의 개 수 를 출 력 하 여 보 시 오.단,
  중 복 되 는 값 을 제 외 하 시 오.
SELECT
  COUNT(DISTINCT job) as '직급 수'
FROM
  employee;
v 문 제 5.부 서 번 호 별 로 부 서 번 호 와 급 여 의 평 균 을 출 력 하 여 보 시 오.
SELECT
  deptno,
  AVG(sal)
FROM
  employee
GROUP BY
  deptno;
문 제 6.퇴 사 한 사 람 수 를 구 하 여 보 시 오.
SELECT
  COUNT(*)
FROM
  employee
WHERE
  firedate IS NOT NULL;
SELECT
  COUNT(firedate)
FROM
  employee;
v 문 제 7.급 여 의 평 균 보 다 많 은 사 람 의 이 름,
  직 급,
  급 여 순 으 로 출 력 하 여 보 시 오.단,
  급 여 를 내 림 차 순 정 렬 하 시 오.
SELECT
  pname,
  job,
  sal
FROM
  employee
WHERE
  sal > (
    SELECT
      AVG(sal)
    FROM
      employee
  )
ORDER BY
  sal DESC;
문 제 8.이 름,
  급 여,
  보 너 스,
  연 봉 순 으 로 출 력 하 여 보 시 오.단,
  연 봉 은 (월 급 여 * 12) + 보 너 스 로 한 다.
SELECT
  pname,
  sal,
  bonus,
  sal * 12 + IFNULL(bonus, 0) as '연봉'
FROM
  employee;
문 제 9.보 너 스 를 받 지 않 는 사 람 의 수 를 구 하 여 보 시 오.단,
  별 칭 은 임 의 로 하 시 오.
SELECT
  COUNT(*) as '보너스 없는 사람 수'
FROM
  employee
WHERE
  bonus IS NULL;
v 문 제 10.김 진 수 의 직 급 과 같 은 직 급 을 가 진 사 람 의 사 원 번 호,
  이 름,
  직 급 순 으 로 출 력 하 여 보 시 오.단,
  이 름 을 오 름 차 순 정 렬 하 시 오.
SELECT
  perno,
  pname,
  job
FROM
  employee
WHERE
  job = (
    SELECT
      job
    FROM
      employee
    WHERE
      pname = '김진수'
  )
ORDER BY
  pname;
문 제 11.부 서 번 호 가 30 인 사 원 의 급 여 평 균 을 구 하 여 보 시 오.
select
  avg(sal) as '부서번호 30 급여평균'
from
  employee
where
  deptno = 30;
문 제 12.사 원 명 이 박 청 규 를 대 리 로 진 급 하 고 급 여 를 150 만 원 으 로 데 이 터 수 정 하 시 오.그 리 고,
  데 이 터 가 수 정 되 었 는 지 확 인 하 여 보 시 오.
UPDATE
  employee
SET
  job = '대리',
  sal = 1500000
WHERE
  pname = '박청규';
문 제 13.2011 년 12 월 31 일 까 지 입 사 한 직 급 이 '사원' 인 사 람 의 급 여 를 10 % 인 상 하 도 록 수 정 하 시 오.그 리 고,
  데 이 터 가 수 정 되 었 는 지 확 인 하 여 보 시 오.
UPDATE
  employee
SET
  sal = sal * 1.1
WHERE
  hiredate <= '2011-12-31'
  AND job = '사원';
문 제 14.사 원 명 이 강 원 일 을 부 서 번 호 40 으 로 데 이 터 수 정 하 시 오.그 리 고,
  데 이 터 가 수 정 되 었 는 지 확 인 하 여 보 시 오.
UPDATE
  employee
SET
  deptno = 40
WHERE
  pname = '강원일';
문 제 15.퇴 사 한 사 원 들 의 데 이 터 를 삭 제 하 시 오.그 리 고,
  데 이 터 가 삭 제 되 었 는 지 확 인 하 여 보 시 오.
DELETE FROM
  employee
WHERE
  firedate IS NOT NULL;
v 문 제 16.급 여 가 가 장 작 은 사 람 의 이 름 과 급 여,
  부 서 번 호 를 출 력 하 여 보 시 오.
SELECT
  pname,
  sal,
  deptno
FROM
  employee
WHERE
  sal = (
    SELECT
      MIN(sal)
    FROM
      employee
  );
문 제 17.사 원 명 이 전 민 철 을 부 사 장 으 로 승 진 시 키 고 급 여 를 600 만 원,
  보 너 스 를 100 만 원 으 로 인 상 하 도 록 데 이 터 를 수 정 하 시 오.그 리 고,
  데 이 터 가 수 정 되 었 는 지 확 인 하 여 보 시 오.
update
  employee
set
  job = '부사장',
  sal = 6000000,
  bonus = 1000000
where
  pname = '전민철';
v 문 제 18.부 서 별 로 부 서 번 호 와 월 급 여 의 합 계 를 출 력 하 여 보 시 오.단,
  부 서 번 호 는 10,
  20 번 만 출 력 하 시 오.
SELECT
  deptno,
  AVG(sal)
FROM
  employee
WHERE
  deptno IN (
    SELECT
      DISTINCT deptno
    FROM
      employee
  );
SELECT
  deptno,
  sum(sal)
FROM
  employee
WHERE
  deptno = 10
  OR deptno = 20
GROUP BY
  deptno;
10 9418000 20 4200000 문 제 19.부 서 번 호 가 30 인 사 원 들 의 보 너 스(특 별 상 여 금) 를 기 존 보 너 스 에 50 만 원 추 가 하 여 데 이 터 를 수 정 하 여 보 시 오.그 리 고,
  데 이 터 가 수 정 되 었 는 지 확 인 하 여 보 시 오.
UPDATE
  employee
SET
  bonus = IFNULL(bonus, 0) + 500000
WHERE
  deptno = 30;
update
  employee
set
  bonus = bonus + 500000
where
  deptno = 30;
update
  employee
set
  bonus = 500000
where
  deptno = 30
  and (bonus is NULL);
select
  *
from
  employee;
문 제 20.직 급 이 사 원 과 대 리 인 사 람 수 를 구 하 여 보 시 오.단,
  별 칭 은 임 의 로 하 시 오.
SELECT
  COUNT(*)
FROM
  employee
WHERE
  job = '사원'
  OR job = '대리'
GROUP BY
  job;
SELECT
  COUNT(job)
FROM
  employee
WHERE
  job = '사원'
  OR job = '대리';
SELECT
  COUNT(job)
FROM
  employee
WHERE
  job IN ('사원', '대리');
-- 사 원 과 대 리 가 아 닌 경 우 NOT IN
SELECT
  job
FROM
  employee
WHERE
  job NOT IN ('사원', '대리');
-- 문제25. 직급이 사원, 대리, 팀장의 이름과 입사년도를 출력하여 보시오.
  --단, 연도는 MySQL에서 제공하는 날짜 관련 함수를 사용하시오.
SELECT
  ROUND(AVG(sal), 2) AS '평균 급여'
FROM
  employee
GROUP BY
  job
HAVING
  job = '과장';
SELECT
  SUM(sal)
FROM
  employee
GROUP BY
  job
HAVING
  job = '과장';
  /* 문제22. 2010년에 입사한 사람의 이름, 입사일, 급여를 검색하여 보시오.
                                                                                                                                                                                    단, 연도는 MySQL에서 제공하는 날짜 관련 함수를 사용하시오.
                                                                                                                                                                                    문제23. 부서번호가 10인 부서를 총무부로 출력하여 보시오.
                                                                                                                                                                                    단, MySQL에서 제공하는 관련 함수를 사용하시오. */
SELECT
  perno,
  pname,
  job,
  hiredate,
  firedate,
  sal,
  bonus,
  REPLACE(deptno, 10, '총무부') AS '부서'
FROM
  employee;
  /* 
                                                                                                                                                                  문 제 24. 1 월 에 입 사 한 사 람 수 를 출 력 하 여 보 시 오.단,
                                                                                                                                                                    MySQL 에 서 제 공 하 는 관 련 함 수 를 사 용 하 시 오.
                                                                                                                                                                   */
SELECT
  *
FROM
  employee
WHERE
  MONTH(hiredate) = '01';
SELECT
  *
FROM
  employee
WHERE
  hiredate LIKE '%-01-%';
  /* 
                                                                                                                                                                        	문제25. 직급이 사원, 대리, 팀장의 이름과 입사년도를 출력하여 보시오. 
                                                                                                                                                                          단, 연도는 MySQL에서 제공하는 날짜 관련 함수를 사용하시오. 
                                                                                                                                                                        	*/
SELECT
  pname AS '이름',
  job AS '직급',
  YEAR(hiredate) AS '입사년도'
FROM
  employee
WHERE
  job = '사원'
  OR job = '대리'
  OR job = '팀장'
ORDER BY
  job;
SELECT
  pname AS '이름',
  job AS '직급',
  YEAR(hiredate) AS '입사년도'
FROM
  employee
WHERE
  job = '사원'
  OR job = '대리'
  OR job = '팀장'
ORDER BY
  FIELD(job, '팀장', '대리', '사원');
SELECT
  pname AS '이름',
  job AS '직급',
  YEAR(hiredate) AS '입사년도'
FROM
  employee
WHERE
  job IN ('사원', '대리', '팀장')
ORDER BY
  FIELD(job, '팀장', '대리', '사원');
--
  --
  --
SELECT
  c.cust_email,
  c.cust_id,
  o.order_num
FROM
  customers c
  JOIN orders o ON c.cust_id = o.cust_id;
--
  --
  --
SELECT
  c.cust_id,
  c.cust_address,
  o.order_num,
  o.order_date
FROM
  customers c
  JOIN orders o ON c.cust_id = o.cust_id;
  /* === */
  /* 2-3 */
  /* === */
SELECT
  DISTINCT vend_id
FROM
  products
  /* === */
  /* 2-4 */
  /* === */
SELECT
  AVG(prod_price) AS '평균'
FROM
  products
GROUP BY
  prod_name;
  /* === */
  /* 2-5 */
  /* === */
SELECT
  prod_id,
  quantity,
  item_price,
  quantity * item_price AS '판매가격'
from
  orderitems
ORDER BY
  quantity * item_price DESC
limit
  1;
  /* =============== */
  /* ===== 2-7 ===== */
  /* =============== */
SELECT
  *
FROM
  orderitems
ORDER BY
  quantity DESC
limit
  3;
  /* === */
  /* 2-8 */
  /* ??? */
  /* === */
SELECT
  *
FROM
  orders
GROUP BY
  cust_id
HAVING
  order_num >= 2006;
  /* === */
  /* 2-9 */
  /* === */
SELECT
  *
FROM
  customers
WHERE
  cust_state IN ('IL', 'IN', 'MI');
  /* ===== */
  /* 2-10 */
  /* ===== */
SELECT
  *
FROM
  customers
WHERE
  cust_name = 'Fun4All';
  /* ===== */
  /* 2-11 */
  /* ===== */
SELECT
  *
FROM
  customers c1
  JOIN customers c2 ON c1.cust_id = c2.cust_id;
  /* ================ */
  /* ===== 2-12 ===== */
  /* ================ */
SELECT
  v.vend_name,
  p.prod_name,
  p.prod_price
FROM
  vendors v
  JOIN products p ON v.vend_id = p.vend_id;