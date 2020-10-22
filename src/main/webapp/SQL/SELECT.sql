------------------------------ SELECT ------------------------------
/*
* Q@A 
*/
select * from question where member_id ='uni1';

/*
* MEMBER SELECT
*/
SELECT *
FROM MEMBER
WHERE member_id='uni1';

/*
 * 1. 멤버한사람의 카트아이템리스트
 * 2. 카트아이템 1개의 제품정보
 * 3. 멤버한사람의 카트정보출력(제품정보)
 */
 --1. 멤버한사람의 카트아이템리스트
select * from cart c where c.member_id='uni1';
select * from cart c where c.user_id='uni2';
select * from cart c where c.user_id='uni3';
--2. 카트아이템 1개의 제품정보
select * from cart c join product p on c.product_no=p.product_no where c.cart_item_no=1111; 
--3. 멤버한사람의 카트정보출력(제품정보)


/*
 * 1. 멤버 한사람의 특정날짜의 주문전체목록
 * 2. 멤버 한사람의 특정날짜의 주문한개
 * 3. 주문한개의  멤버의 정보
 * 4. 주문한개의  제품여러개 정보들(주문상세,제품)
 * 5. 주문한개의 주문자정보 & 제품여러개 정보들(주문상세)
 */

 --1. 멤버 한사람의 특정날짜의 주문전체목록
 select j.* from 
 member m join jumun j
 on m.member_id = j.member_id and m.member_id='uni1' and to_char(j.jumun_date,'YYYY/MM/DD')='2020/10/20' ;
--2. 멤버 한사람의 특정날짜의 주문한개 
 select j.* from 
 member m join jumun j
 on m.member_id = j.member_id and m.member_id='uni2' and to_char(j.jumun_date,'YYYY/MM/DD')='2020/10/20' 
 where j.jumun_no=3001; 
-- 4. 주문한개의  제품여러개 정보들(주문상세,제품)
select jd.*,p.* from jumun j 
join jumun_detail jd 
on j.jumun_no=jd.jumun_no
join product p
on jd.product_no=p.product_no
where j.user_id='uni2' and j.jumun_no=3001;

--wishlist
/*
 * 1.멤버의 찜리스트
 */
select p.product_no,p.product_name,p.product_price, p.product_image_1
from wishlist w
join product p
on w.product_no = p.product_no
where w.member_id = 'uni2'; 


/************************ 관리자***************************/
--1. 모든멤버의 특정날짜의 주문전체목록 
 select j.* from 
 member m join jumun j
 on m.member_id = j.member_id and to_char(j.jumun_date,'YYYY/MM/DD')='2020/10/20' ;
-- 3-1. 주문한건의  멤버의 정보
 select * from member m
 join jumun j
 on m.member_id=j.member_id where j.jumun_no=3003;
-- 3-2. 특정멤버의 주문정보출력
 select * from member m
 inner join jumun j
 on m.member_id=j.member_id where m.member_id='uni3'; 
-- 3-2. 특정멤버의 정보를 주문정보를 포함해서출력
 select * from member m
 left outer join jumun j
 on m.member_id=j.member_id where u.member_id='uni3';
 
-- 5. 주문한개의 주문자정보 & 제품여러개 정보들(주문상세) 
select u.*,p.* from member m 
join jumun j on m.member_id=j.member_id
join jumun_detail jd on j.jumun_no=jd.jumun_no
join product p on jd.product_no=p.product_no
where j.jumun_no=3001; 


/*************************PRODUCT*******************************/
select * from product
order by product_no;