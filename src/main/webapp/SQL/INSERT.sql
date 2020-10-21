------------------------------ INSERT ------------------------------
--member
INSERT INTO member (member_id, member_password, member_name, member_phone, member_email) 
VALUES ('uni1', '1111', '신혜원', '010-1234-5678', 'uni1@gmail.com');

INSERT INTO member (member_id, member_password, member_name, member_phone, member_email) 
VALUES ('uni2', '2222', '신지원', '010-5555-5678', 'uni2@gmail.com');

INSERT INTO member (member_id, member_password, member_name, member_phone, member_email) 
VALUES ('uni3', '3333', '김민정', '010-1111-5666', 'uni3@gmail.com');

INSERT INTO member (member_id, member_password, member_name, member_phone, member_email) 
VALUES ('uni4', '4444', '신지수', '010-1111-5678', 'uni4@gmail.com');



--product
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('415693', '감탄팬츠(울트라라이트)', '모든 씬에서 착용하기 좋은 고기능의 감탄팬츠. · 아담 스콧 선수와 공동 개발. · 여름 모직과 같은 질감. · 이지케어 가공 처리. · 초속건, 초경량 사양.', 49900, 'M', 'B', 'LP', '415693_1.png', '415693_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('435455', 'JWA울블렌드노턱팬츠', '심플하지만 고급스러우면서도 품위있어 보이는 인상을 주는 울블렌드 노턱 팬츠. · 고급스러우면서도 경량화를 실현한 울 블렌드 소재. · 심플한 스트레이트 실루엣으로 다양한 스타일과 매치', 59900, 'M', 'B', 'LP', '435455_1.png', '435455_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('430876', 'U울블렌드저지팬츠(세트업)', '고급스러운 실루엣의 울 블렌드 저지 팬츠. · 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션. · 스트레치성 있는 울 블렌드 더블 페이스 소재 사용. · 허리 안쪽에 미끄럼 방지를 부착하여 상의를 넣어 연출', 69900, 'M', 'B', 'LP', '430876_1.png', '430876_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('425137', '스트레치울팬츠(세트업)', '클래식한 디자인을 즐길 수 있는 스트레치 울 팬츠. · 고품질의 「Super110」 모직 소재 사용. · 레귤러 피트 사양.', 89900, 'M', 'B', 'LP', '425137_1.png', '425137_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('428335', '스웨트팬츠', '깔끔한 실루엣이면서도 캐주얼한 스타일에 제격인 스웨트 팬츠. · 코튼 X 폴리에스터 혼합 소재 사용. · 테이퍼드 실루엣. · 웨이스트는 사이즈 조절이 가능하 스핀들 코드 추가.', 29900, 'F', 'B', 'LP', '428335_1.png', '428335_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('426284', '슬라우치테이퍼드앵클진(릴랙스피트)', '새로운 실루엣과 빈티지 가공을 더해 트렌디한 인상을 주는 슬라우치 테이퍼드 앵클 진. · 카이하라사 면 소재 100%의 데님 원단 사용. · 슬라우치 실루엣(릴랙스 피트) 디자인. · 밑단은 테이퍼드 실루엣.', 49900, 'F', 'B', 'LP', '426284_1.png', '426284_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('429094', '울트라스트레치진20FW', '신축성이 있어 움직임이 편하면서도 아름다운 실루엣을 연출할 수 있는 울트라 스트레치 진. · 울트라 스트레치 데님 원단 사용. · 스트레치 원사를 사용 · 스키니피트 테이퍼드 실루엣. · 밑위는 약간 깊게 설정하고, 직선 벨트로 변경하여 깔끔한 인상. · 백포켓의 크기와 모양, 위치를 설정하여 아름다운 뒷모습 연출.', 49900, 'F', 'B', 'LP', '429094_1.png', '429094_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('418873', '히트텍울트라스트레치레깅스팬츠', '부드러우면서도 따뜻한 착용감을 자랑하는 히트텍 울트라 스트레치 레깅스 팬츠. · 히트텍 소재의 울트라 스트레치 원단 사용. · 깊은 라이즈 설정. · 웨이스트 밴드 사양. · 안감은 기모 소재 사용. · 흡습, 발열 기능.', 39900, 'F', 'B', 'LP', '418873_1.png', '418873_2.png');

commit;



--cart
INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 2, 59800, 'M', 'Black', 'uni1', 431976);

INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 1, 39900, 'M', 'Gray', 'uni1', 433113);

INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 1, 39900, 'M', 'Blue', 'uni1', 418873);

INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 3, 299700, 'S', 'Green', 'uni2', 428866);

INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 1, 59900, 'M', 'Yellow', 'uni3', 435455);

commit;



--jumun
INSERT INTO jumun (jumun_no, JUMUN_DATE, JUMUN_STATUS, JUMUN_TOT_PRICE, CARD_NO, CARD_EXPIRE_DATE, CARD_CVC, CARD_MEMBER_NAME, MEMBER_ID) 
VALUES (jumun_jumun_no_SEQ.nextval, sysdate, 'Delivered', 79800, '1234 5678 9012 3456', '08/25', '123', '신혜원', 'uni1');

INSERT INTO jumun (jumun_no, JUMUN_DATE, JUMUN_STATUS, JUMUN_TOT_PRICE, CARD_NO, CARD_EXPIRE_DATE, CARD_CVC, CARD_MEMBER_NAME, MEMBER_ID) 
VALUES (jumun_jumun_no_SEQ.nextval, sysdate, 'Delayed', 99800, '9876 5432 1098 7654', '02/21', '456', '신지원', 'uni2');

INSERT INTO jumun (jumun_no, JUMUN_DATE, JUMUN_STATUS, JUMUN_TOT_PRICE, CARD_NO, CARD_EXPIRE_DATE, CARD_CVC, CARD_MEMBER_NAME, MEMBER_ID) 
VALUES (jumun_jumun_no_SEQ.nextval, sysdate, 'Canceled', 59800, '1346 7964 2585 1973', '06/23', '789', '김민정', 'uni3');

commit;


--jumun_detail
INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, 'IDLF트위스트플리츠롱스커트', 'M', 'Blue', 39900, 1, 1, 433113);

INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, '보아후리스크루넥가디건(긴팔)', 'M', 'Red', 39900, 1, 1, 429667);

INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, 'IDLF3D니트자카드스웨터(긴팔)', 'S', 'White', 49900, 1, 2, 432087);

INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, '울트라스트레치진20FW', 'S', 'Blue', 49900, 1, 2, 429094);

INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, '플란넬체크셔츠(긴팔)', 'L', 'White', 29900, 1, 3, 432614);

INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, 'U크루넥T(긴팔)20SS', 'L', 'Black', 29900, 1, 3, 425213);

commit;



--review
INSERT INTO review (review_no, review_name, review_email, review_title, review_rating, review_content, member_id, product_no) 
VALUES (review_review_no_seq.nextval, '신혜원', 'uni1@gmail.com', '상품이 엄청 좋아요', 4, '이번에 신상이 잘 뽑혔네요 다음에도 잘부탁드릴게요 유니샵 >3<', 'uni1', '431464');

INSERT INTO review (review_no, review_name, review_email, review_title, review_rating, review_content, member_id, product_no) 
VALUES (review_review_no_seq.nextval, '신지수', 'uni4@gmail.com', '이번시즌은 아쉽네요', 3, '믿고 사는 사이트였는데 이번은 좀 아쉬워요', 'uni4', '432087');

INSERT INTO review (review_no, review_name, review_email, review_title, review_rating, review_content, member_id, product_no) 
VALUES (review_review_no_seq.nextval, '김민정', 'uni3@gmail.com', '최고로 만족스러워요!!', 5, '사이즈도 딱 맞고 컬러도 맘에 들어요 꺄르르륵', 'uni3', '431464');

commit;