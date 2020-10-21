INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '질문이요', '배송', sysdate, '처리중', '오늘 오후 1시 전에 주문하면 모레에 도착할까요???', 'uni1');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '품절제품 입고 계획', '상품', '2020-10-09', '처리완료', '마음에 드는 레깅스 제품이 있는데 어제 품절 됐더라고요 ㅠㅠㅠ 재입고 계획 있으신가요 ㅠㅠ', 'uni1');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '제품에 하자가 있어요', '교환/환불', sysdate, '처리중', '제품에 구멍이 나있어요 교환하려고 하는데 어떻게 해야 하나요??', 'uni2');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '질문이요', '상품', '2020-09-29', '처리완료', '신상품 출시가 언제인가요??', 'uni2');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '세일관련 질문이요', '이벤트', sysdate, '처리중', '신상품 세일 이벤트 한다는데 최대 몇 % 세일인가요???', 'uni3');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '배송 질문이요', '배송', '2020-09-12', '처리완료', '5일전에 주문했는데 아직까지 배송이 안옵니다. 어떤 문제가 생긴거죠???', 'uni3');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '사이즈 문의', '상품', sysdate, '처리중', '평소에 m사이즈 코트를 입는데 쇼트코트는 어떤 사이즈로 구매하면 되나요??', 'uni4');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '환분문의', '교환/환불', '2020-08-29', '처리완료', '제가 원하는 색상은 없어서 다른 색상으로 주문하긴 했는데 마음에 들지 않아요.. 환불하려는데 어떻게 하면 되나요??', 'uni4');

commit;