DROP TABLE div_code CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE question CASCADE CONSTRAINTS;
DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE wishList CASCADE CONSTRAINTS;
DROP TABLE jumun_detail CASCADE CONSTRAINTS;
DROP TABLE delivery CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE jumun CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;

CREATE TABLE member(
		member_id                     		VARCHAR2(50)		 NOT NULL,
		member_password               		VARCHAR2(50)		 NULL ,
		member_name                   		VARCHAR2(50)		 NULL ,
		member_phone                  		VARCHAR2(50)		 NULL ,
		member_email                  		VARCHAR2(50)		 NULL 
);


CREATE TABLE jumun(
		jumun_no                      		NUMBER(10)		 NOT NULL,
		jumun_date                    		DATE		 DEFAULT sysdate		 NULL ,
		jumun_status                  		VARCHAR2(30)		 NULL ,
		jumun_tot_price               		NUMBER(10)		 NULL ,
		card_no                       		VARCHAR2(25)		 NULL ,
		card_expire_date              		VARCHAR2(10)		 NULL ,
		card_cvc                      		VARCHAR2(6)		 NULL ,
		card_member_name              		VARCHAR2(10)		 NULL ,
		member_id                     		VARCHAR2(50)		 NOT NULL
);

DROP SEQUENCE jumun_jumun_no_SEQ;

CREATE SEQUENCE jumun_jumun_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER jumun_jumun_no_TRG
BEFORE INSERT ON jumun
FOR EACH ROW
BEGIN
IF :NEW.jumun_no IS NOT NULL THEN
  SELECT jumun_jumun_no_SEQ.NEXTVAL INTO :NEW.jumun_no FROM DUAL;
END IF;
END;


CREATE TABLE product(
		product_no                    		VARCHAR2(30)		 NOT NULL,
		product_name                  		VARCHAR2(150)		 NULL ,
		product_desc                  		VARCHAR2(1000)		 NULL ,
		product_price                 		NUMBER(15)		 NULL ,
		product_L_div                 		VARCHAR2(10)		 NULL ,
		product_M_div                 		VARCHAR2(10)		 NULL ,
		product_S_div                 		VARCHAR2(10)		 NULL ,
		product_image_1               		VARCHAR2(30)		 NULL ,
		product_image_2               		VARCHAR2(30)		 NULL 
);


CREATE TABLE delivery(
		delivery_no                   		NUMBER(10)		 NOT NULL,
		delivery_name                 		VARCHAR2(10)		 NULL ,
		delivery_time                 		VARCHAR2(10)		 DEFAULT sysdate		 NULL ,
		delivery_fee                  		NUMBER(10)		 NULL ,
		jumun_no                      		NUMBER(10)		 NOT NULL
);

DROP SEQUENCE delivery_delivery_no_SEQ;

CREATE SEQUENCE delivery_delivery_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER delivery_delivery_no_TRG
BEFORE INSERT ON delivery
FOR EACH ROW
BEGIN
IF :NEW.delivery_no IS NOT NULL THEN
  SELECT delivery_delivery_no_SEQ.NEXTVAL INTO :NEW.delivery_no FROM DUAL;
END IF;
END;


CREATE TABLE jumun_detail(
		jumun_d_no                    		NUMBER(10)		 NOT NULL,
		jumun_d_product_name          		VARCHAR2(60)		 NULL ,
		jumun_d_product_size          		VARCHAR2(10)		 NULL ,
		jumun_d_product_color         		VARCHAR2(10)		 NULL ,
		jumun_d_product_price         		NUMBER(10)		 NULL ,
		jumun_d_product_qty           		VARCHAR2(10)		 NULL ,
		jumun_no                      		NUMBER(10)		 NOT NULL,
		product_no                    		VARCHAR2(30)		 NOT NULL
);

DROP SEQUENCE jumun_detail_jumun_d_no_SEQ;

CREATE SEQUENCE jumun_detail_jumun_d_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER jumun_detail_jumun_d_no_TRG
BEFORE INSERT ON jumun_detail
FOR EACH ROW
BEGIN
IF :NEW.jumun_d_no IS NOT NULL THEN
  SELECT jumun_detail_jumun_d_no_SEQ.NEXTVAL INTO :NEW.jumun_d_no FROM DUAL;
END IF;
END;


CREATE TABLE wishList(
		wish_no                       		NUMBER(10)		 NOT NULL,
		member_id                     		VARCHAR2(50)		 NOT NULL,
		product_no                    		VARCHAR2(30)		 NOT NULL
);

DROP SEQUENCE wishList_wish_no_SEQ;

CREATE SEQUENCE wishList_wish_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER wishList_wish_no_TRG
BEFORE INSERT ON wishList
FOR EACH ROW
BEGIN
IF :NEW.wish_no IS NOT NULL THEN
  SELECT wishList_wish_no_SEQ.NEXTVAL INTO :NEW.wish_no FROM DUAL;
END IF;
END;


CREATE TABLE cart(
		cart_no                       		NUMBER(10)		 NOT NULL,
		cart_qty                      		NUMBER(10)		 NULL ,
		cart_tot_price                		NUMBER(10)		 NULL ,
		cart_product_size             		VARCHAR2(10)		 NULL ,
		cart_product_color            		VARCHAR2(10)		 NULL ,
		member_id                     		VARCHAR2(50)		 NOT NULL,
		product_no                    		VARCHAR2(30)		 NOT NULL
);

DROP SEQUENCE cart_cart_no_SEQ;

CREATE SEQUENCE cart_cart_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER cart_cart_no_TRG
BEFORE INSERT ON cart
FOR EACH ROW
BEGIN
IF :NEW.cart_no IS NOT NULL THEN
  SELECT cart_cart_no_SEQ.NEXTVAL INTO :NEW.cart_no FROM DUAL;
END IF;
END;


CREATE TABLE address(
		address_no                    		NUMBER(10)		 NOT NULL,
		address_zipcode               		VARCHAR2(10)		 NULL ,
		address_name                  		VARCHAR2(50)		 NULL ,
		address_country               		VARCHAR2(50)		 NULL ,
		address_city                  		VARCHAR2(50)		 NULL ,
		address_address1              		VARCHAR2(50)		 NULL ,
		address_address2              		VARCHAR2(50)		 NULL ,
		member_id                     		VARCHAR2(50)		 NOT NULL
);

DROP SEQUENCE address_address_no_SEQ;

CREATE SEQUENCE address_address_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER address_address_no_TRG
BEFORE INSERT ON address
FOR EACH ROW
BEGIN
IF :NEW.address_no IS NOT NULL THEN
  SELECT address_address_no_SEQ.NEXTVAL INTO :NEW.address_no FROM DUAL;
END IF;
END;


CREATE TABLE question(
		question_no                   		NUMBER(10)		 NOT NULL,
		question_title                		VARCHAR2(50)		 NULL ,
		question_category             		VARCHAR2(20)		 NULL ,
		question_date                 		DATE		 DEFAULT sysdate		 NULL ,
		question_status               		VARCHAR2(10)		 NULL ,
		question_content              		VARCHAR2(1000)		 NULL ,
		member_id                     		VARCHAR2(50)		 NOT NULL
);

DROP SEQUENCE question_question_no_SEQ;

CREATE SEQUENCE question_question_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER question_question_no_TRG
BEFORE INSERT ON question
FOR EACH ROW
BEGIN
IF :NEW.question_no IS NOT NULL THEN
  SELECT question_question_no_SEQ.NEXTVAL INTO :NEW.question_no FROM DUAL;
END IF;
END;


CREATE TABLE review(
		review_no                     		NUMBER(10)		 NOT NULL,
		review_name                   		VARCHAR2(20)		 NULL ,
		review_email                  		VARCHAR2(25)		 NULL ,
		review_title                  		VARCHAR2(30)		 NULL ,
		review_rating                 		NUMBER(10)		 NULL ,
		review_content                		VARCHAR2(1000)		 NULL ,
		member_id                     		VARCHAR2(50)		 NOT NULL,
		product_no                    		VARCHAR2(30)		 NOT NULL
);

DROP SEQUENCE review_review_no_SEQ;

CREATE SEQUENCE review_review_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER review_review_no_TRG
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
IF :NEW.review_no IS NOT NULL THEN
  SELECT review_review_no_SEQ.NEXTVAL INTO :NEW.review_no FROM DUAL;
END IF;
END;


CREATE TABLE div_code(
		code_no                       		NUMBER(10)		 NOT NULL,
		product_L_div                 		VARCHAR2(10)		 NOT NULL,
		product_L_div_desc            		VARCHAR2(30)		 NULL ,
		product_M_div                 		VARCHAR2(10)		 NOT NULL,
		product_M_div_desc            		VARCHAR2(30)		 NULL ,
		product_S_div                 		VARCHAR2(10)		 NOT NULL,
		product_S_div_desc            		VARCHAR2(30)		 NULL 
);

DROP SEQUENCE div_code_code_no_SEQ;

CREATE SEQUENCE div_code_code_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER div_code_code_no_TRG
BEFORE INSERT ON div_code
FOR EACH ROW
BEGIN
IF :NEW.code_no IS NOT NULL THEN
  SELECT div_code_code_no_SEQ.NEXTVAL INTO :NEW.code_no FROM DUAL;
END IF;
END;



ALTER TABLE member ADD CONSTRAINT IDX_member_PK PRIMARY KEY (member_id);

ALTER TABLE jumun ADD CONSTRAINT IDX_jumun_PK PRIMARY KEY (jumun_no);
ALTER TABLE jumun ADD CONSTRAINT IDX_jumun_FK0 FOREIGN KEY (member_id) REFERENCES member (member_id);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (product_no);

ALTER TABLE delivery ADD CONSTRAINT IDX_delivery_PK PRIMARY KEY (delivery_no);
ALTER TABLE delivery ADD CONSTRAINT IDX_delivery_FK0 FOREIGN KEY (jumun_no) REFERENCES jumun (jumun_no);

ALTER TABLE jumun_detail ADD CONSTRAINT IDX_jumun_detail_PK PRIMARY KEY (jumun_d_no);
ALTER TABLE jumun_detail ADD CONSTRAINT IDX_jumun_detail_FK0 FOREIGN KEY (jumun_no) REFERENCES jumun (jumun_no);
ALTER TABLE jumun_detail ADD CONSTRAINT IDX_jumun_detail_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE wishList ADD CONSTRAINT IDX_wishList_PK PRIMARY KEY (wish_no);
ALTER TABLE wishList ADD CONSTRAINT IDX_wishList_FK0 FOREIGN KEY (member_id) REFERENCES member (member_id);
ALTER TABLE wishList ADD CONSTRAINT IDX_wishList_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE cart ADD CONSTRAINT IDX_cart_PK PRIMARY KEY (cart_no);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK0 FOREIGN KEY (member_id) REFERENCES member (member_id);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE address ADD CONSTRAINT IDX_address_PK PRIMARY KEY (address_no);
ALTER TABLE address ADD CONSTRAINT IDX_address_FK0 FOREIGN KEY (member_id) REFERENCES member (member_id);

ALTER TABLE question ADD CONSTRAINT IDX_question_PK PRIMARY KEY (question_no);
ALTER TABLE question ADD CONSTRAINT IDX_question_FK0 FOREIGN KEY (member_id) REFERENCES member (member_id);

ALTER TABLE review ADD CONSTRAINT IDX_review_PK PRIMARY KEY (review_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK0 FOREIGN KEY (member_id) REFERENCES member (member_id);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE div_code ADD CONSTRAINT IDX_div_code_PK PRIMARY KEY (code_no);

