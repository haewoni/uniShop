INSERT INTO address (address_no, address_zipcode, address_name, address_country, address_city, address_address1, address_address2, member_id) 
VALUES (address_address_no_seq.nextval, '1111', '우리집', '대한민국', '서울', '양천구 목동 저편한세상', '101동 101호', 'uni1');

INSERT INTO address (address_no, address_zipcode, address_name, address_country, address_city, address_address1, address_address2, member_id) 
VALUES (address_address_no_seq.nextval, '1111', '집', '대한민국', '서울', '양천구 목동 저편한세상', '101동 1003호', 'uni2');

INSERT INTO address (address_no, address_zipcode, address_name, address_country, address_city, address_address1, address_address2, member_id) 
VALUES (address_address_no_seq.nextval, '3333', '스윗홈', '대한민국', '김포', '김포구 김동 라베니체', '301동 301호', 'uni3');

INSERT INTO address (address_no, address_zipcode, address_name, address_country, address_city, address_address1, address_address2, member_id) 
VALUES (address_address_no_seq.nextval, '5555', 'home', '대한민국', '부산', '동래구 부산동 아이파크', '202동 903호', 'uni4');

commit;