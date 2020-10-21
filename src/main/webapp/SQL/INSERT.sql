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



--address
INSERT INTO address (address_no, address_zipcode, address_name, address_country, address_city, address_address1, address_address2, member_id) 
VALUES (address_address_no_seq.nextval, '1111', '우리집', '대한민국', '서울', '양천구 목동 저편한세상', '101동 101호', 'uni1');

INSERT INTO address (address_no, address_zipcode, address_name, address_country, address_city, address_address1, address_address2, member_id) 
VALUES (address_address_no_seq.nextval, '1111', '집', '대한민국', '서울', '양천구 목동 저편한세상', '101동 1003호', 'uni2');

INSERT INTO address (address_no, address_zipcode, address_name, address_country, address_city, address_address1, address_address2, member_id) 
VALUES (address_address_no_seq.nextval, '3333', '스윗홈', '대한민국', '김포', '김포구 김동 라베니체', '301동 301호', 'uni3');

INSERT INTO address (address_no, address_zipcode, address_name, address_country, address_city, address_address1, address_address2, member_id) 
VALUES (address_address_no_seq.nextval, '5555', 'home', '대한민국', '부산', '동래구 부산동 아이파크', '202동 903호', 'uni4');

commit;


--question
INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '질문이요', '배송', sysdate, '처리중', '오늘 오후 1시 전에 주문하면 모레에 도착할까요???', 'uni1');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '품절제품 입고 계획', '상품', '2020-10-09', '완료', '마음에 드는 레깅스 제품이 있는데 어제 품절 됐더라고요 ㅠㅠㅠ 재입고 계획 있으신가요 ㅠㅠ', 'uni1');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '제품에 하자가 있어요', '교환/환불', sysdate, '처리중', '제품에 구멍이 나있어요 교환하려고 하는데 어떻게 해야 하나요??', 'uni2');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '질문이요', '상품', '2020-09-29', '완료', '신상품 출시가 언제인가요??', 'uni2');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '세일관련 질문이요', '이벤트', sysdate, '처리중', '신상품 세일 이벤트 한다는데 최대 몇 % 세일인가요???', 'uni3');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '배송 질문이요', '배송', '2020-09-12', '처리완료', '5일전에 주문했는데 아직까지 배송이 안옵니다. 어떤 문제가 생긴거죠???', 'uni3');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '사이즈 문의', '상품', sysdate, '처리중', '평소에 m사이즈 코트를 입는데 쇼트코트는 어떤 사이즈로 구매하면 되나요??', 'uni4');

INSERT INTO question (question_no, question_title, question_category, question_date, question_status, question_content, member_id) 
VALUES (question_question_no_seq.nextval, '환분문의', '교환/환불', '2020-08-29', '처리완료', '제가 원하는 색상은 없어서 다른 색상으로 주문하긴 했는데 마음에 들지 않아요.. 환불하려는데 어떻게 하면 되나요??', 'uni4');

commit;



--div_code
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('1', 'M', '남자', 'T', '상의', 'SH', '티셔츠');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('2', 'M', '남자', 'T', '상의', 'KN', '니트');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('3', 'M', '남자', 'T', '상의', 'OT', '아우터');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('4', 'M', '남자', 'B', '하의', 'SP', '반바지');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('5', 'M', '남자', 'B', '하의', 'LP', '긴바지');

INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('6', 'F', '여자', 'T', '상의', 'SH', '티셔츠');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('7', 'F', '여자', 'T', '상의', 'KN', '니트');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('8', 'F', '여자', 'T', '상의', 'OT', '아우터');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('9', 'F', '여자', 'B', '하의', 'SK', '스커트');
INSERT INTO div_code (code_no, product_L_div, product_L_div_desc, product_M_div, product_M_div_desc, product_S_div, product_S_div_desc) 
VALUES ('10', 'F', '여자', 'B', '하의', 'LP', '긴바지');

COMMIT;


--product
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES 
('432614', '플란넬체크셔츠(긴팔)', '양면 기모 소재를 사용하여 부드러운 감촉을 느낄 수 있는 플란넬 체크 셔츠.
· 면 소재 100%의 플란넬 원단 사용.
· 스코틀랜드의 브리티시 전통을 베이스로 한 체크디자인을 유니클로의 컬러 팔레트로 표현하여 모던한 체크 무늬를 표현.', 
29900, 'F', 'T', 'SH', '432614_1.png', '432614_2.png');
 

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES 
('429667', '보아후리스크루넥가디건(긴팔)', '추운 날씨에 레이어드 아이템으로 제격인 보아 후리스 크루넥 가디건.
· 가벼우면서도 따뜻한 감촉을 느낄 수 있는 보아 후리스 소재 사용.
· 개폐가 가능한 스냅 버튼으로 변경.
· 소매 밑단 부분은 파이핑 처리.', 
39900, 'F', 'T', 'OT', '429667_1.png', '429667_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES 
('431976', '스웨트셔츠(긴팔)', '깔끔한 인상을 주면서도 캐주얼한 스타일에 제격인 스웨트 셔츠.
· 표면감이 부드러운 코튼 소재의 더블페이스 니트 원단 채용.
· 어깨에서 허리 부분으로 이어지는 부분은 트렌디한 둥근 실루엣으로 설정.
· 베이직한 크루넥 타입.
· 다소 짧은 기장감으로 캐주얼한 스타일에 제격!', 
29900, 'F', 'T', 'SH', '431976_1.png', '431976_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES 
('424873', 'U크루넥T(반팔)20SS', '베이직한 디자인이면서도 부드러운 착용감을 자랑하는 크루넥 T셔츠.
유니클로 파리 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다.
· 부드러운 감촉을 느낄 수 있는 면 소재 100% 사용하였습니다.
· 네크라인의 립 폭은 굵게 디자인.', 
19900, 'F', 'T', 'SH', '424873_1.png', '424873_2.png');

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

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES 
('425142', '치노쇼트팬츠', '트렌디한 여유감 있는 실루엣으로 설정하여 캐주얼한 스타일에 제격인 치노 쇼트 팬츠. 면 소재 100% 사용.', 
29900, 'M', 'B', 'SP', '425142_1.png', '425142_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES 
('427823', '저지이지쇼트팬츠D', '부드러우면서도 편한 착용감을 느낄 수 있는 저지 이지 쇼트 팬츠. 면 소재 100%의 저지 원단 사용.', 
19900, 'M', 'B', 'SP', '427823_1.png', '427823_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES 
('424420', 'KIDS이지쇼트팬츠', '시원하면서도 편한 착용감을 자랑하는 이지 쇼트 팬츠. 움직임이 더욱 편안한 실루엣으로 변경되었습니다. 면 소재 100% 사용. 웨이스트 왼편에는 밴드 교체용 홀 추가.', 
7900, 'M', 'B', 'SP', '424420_1.png', '424420_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES 
('427819', '드라이스트레치이지쇼트팬츠C', '땀을 흘려도 끈적이지 않아 편한 착용감을 느낄 수 있는 드라이 스트레치 이지 쇼트 팬츠. 저지 소재 사용. 드라이 기능. 신축성이 있어 움직임이 편합니다.', 
9900, 'M', 'B', 'SP', '427819_1.png', '427819_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES 
('422975', '울트라스트레치액티브쇼트팬츠', '뛰어난 기능과 세련된 디자인으로 스포츠씬뿐만 아니라 캐주얼한 스타일에도 제격인 울트라 스트레치 액티브 쇼트 팬츠. 드라이 EX 소재 사용. 울트라 스트레치 원단 채용. 밑단은 압착 테이프 및 반사 테이프를 채용하여 깔끔한 인상을 줍니다. 동전과 IC카드를 수납할 수 있는 지퍼 포켓 사양.', 
29900, 'M', 'B', 'SP', '422975_1.png', '422975_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2)
VALUES ('430812', 'JWA보아후리스블루종', '클래식한 양가죽 재킷에서 영감을 받아 모던한 느낌을 더했습니다.
· 가벼운 양털을 두꺼운 니트 위에 겹쳐 따뜻하고 편안한 옷을 입어보세요.
· 트렌디한 쇼트 기장으로 깔끔한 실루엣.
유니클로의 심플한 고품질 옷에 JW ANDERSON의 혁신적인 디자인이 더해진 라이프웨어를 만나보세요!', 59900, 'F', 'T', 'OT', '430812_1.png', '430812_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2)
VALUES ('424589', '릴랙스트렌치코트', '클래식한 디자인이면서도 여유감 있는 실루엣으로 설정하여 트렌디한 인상을 주는 릴랙스 트렌치 코트.
· 내구발수 가공 처리.
· 볼륨 실루엣.', 59900, 'F', 'T', 'OT', '424589_1.png', '424589_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2)
VALUES ('420252', '심리스다운쇼트코트', '깔끔하고 심플한 디자인을 즐길 수 있는 심리스 다운 쇼트 코트.
· 내구 발수, 방풍 기능.', 169000, 'F', 'T', 'OT', '420252_1.png', '420252_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('429291', '심리스다운파카', '심리스 타입으로 고급스러운 인상을 주는 심리스 다운 파카(3D CUT).
· 가벼운 물방울을 튕겨내는 내구 발수 가공 추가.
· 640필 파워* 이상의 고품질 다운 사용.
· 어깨 부분 패턴을 3D 구조로 디자인하여 활동성 업.', 169000, 'M', 'T', 'OT', '429291_1.png', '429291_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('432054', 'JWA더블페이스싱글브레스트코트', '컬렉션의 핵심인 더블 페이스 소재를 사용하여 가벼운 착용감을 실현한 더블페이스 싱글 브레스트 코트.
· 트렌디하면서도 품위 있는 인상을 주는 오버사이즈 코트입니다.
· 안감이 없어 가벼운 소재감을 느낄 수 있습니다.
· 긴 무릎 기장으로 설정하여 트렌디한 인상을 줍니다.
· 빈티지한 디자인의 허리 벨트 사양.
· 2개 실을 혼합하여 울과 같은 음영과 깊이 있는 색감을 표현했습니다.', 149000, 'M', 'T', 'OT', '432054_1.png', '432054_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('428990', '헌팅재킷', '코듀로이, 플란넬 소재를 사용하여 캐주얼하면서도 따뜻한 착용감을 자랑하는 헌팅 재킷.
· 매트한 질감의 코튼 혼합 소재 사용.
· 옷깃과 소매는 코듀로이 소재 사용.
· 안감은 체크 무늬의 플란넬 소재 사용.
· 가벼운 물방울을 튕겨내는 내구발수 가공 처리.
· 재킷 위에도 착용하기 좋은 기장감.', 79900, 'M', 'T', 'OT', '428990_1.png', '428990_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('428863', '캐시미어크루넥스웨터(긴팔)', '섬유의 보석이라 불리는 캐시미어 소재를 100% 사용하여 부드러우면서도 따뜻한 착용감을 자랑하는 캐시미어 크루넥 스웨터.
· 매끄러우면서도 부드러운 감촉을 느낄 수 있습니다.
· 엄격한 품질 관리로 만들어져 일상을 럭셔리하게 연출해줍니다.
· 크루넥 타입.
· 소매 밑단의 립 부분을 길게 설정하여 손목이 가늘어 보입니다.', 89900, 'F', 'T', 'KN', '428863_1.png', '428863_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('428866', '캐시미어크루넥가디건(긴팔)', '섬유의 보석이라 불리는 캐시미어 소재를 100% 사용하여 부드러우면서도 따뜻한 착용감을 자랑하는 캐시미어 크루넥 가디건
· 매끄러우면서도 부드러운 감촉을 느낄 수 있습니다.
· 엄격한 품질 관리로 만들어져 일상을 럭셔리하게 연출해줍니다.
· 크루넥 타입.
· 소매 밑단의 립 부분을 길게 설정하여 손목이 가늘어 보입니다.', 99900, 'F', 'T', 'KN', '428866_1.png', '428866_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('432087', 'IDLF 3D니트자카드스웨터(긴팔)', '입체적인 실루엣과 고급스러운 소재감을 즐길 수 있는 3D 니트 자카드 스웨터.
· 시대와 세대를 넘어 사랑 받고 있는 프렌치 시크의 대명사 "이네스 드 라 프레상쥬"와 스페셜 콜라보레이션.
· 신축성이 있는 원사를 사용하였습니다.
· 홀가먼트 기술을 채용하여 입체적인 실루엣을 실현하고 봉제선이 없어 부드러운 착용감을 느낄 수 있습니다.
· 전통적인 페어 아일 무늬를 자카드 짜임으로 표현하였습니다.', 49900, 'F', 'T', 'KN', '432087_1.png', '432087_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, 
            product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('429067', 'EFM터틀넥스웨터(긴팔)', 
        '섬세하면서도 우아한 감촉을 느낄 수 EFM 터틀넥 스웨터.
        · 19.5 마이크로 극세 메리노 울 소재 100% 사용.
        · 워셔블(물세탁) 사양.
        · 칼라 높이를 낮게 설정하여 편한 착용감을 느낄 수 있습니다.
        · 어깨에서부터 소매 밑단으로 갈수록 짜임을 단계적으로 설정하여 편한 착용감을 느낄 수 있습니다.
        · 터틀넥 타입.', 
        39900, 'M', 
        'T', 'KN', '429067_1.png', '429067_2.png');
        
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, 
            product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('419196', '프리미엄램스울V넥가디건(긴팔)', 
        '소재의 원료를 변경하여 더욱 부드러운 감촉을 느낄 수 있는 프리미엄 램스울 V넥 가디건.
        · 19.5 마이크로 프리미엄 램스울 소재 100% 사용.
        · V넥 타입.', 
        49900, 'M', 
        'T', 'KN', '419196_1.png', '419196_2.png');
        
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, 
            product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('435798', '캐시미어크루넥스웨터(긴팔)', 
        '섬유의 보석이라 불리우는 캐시미어 소재를 사용하여 부드러우면서도 따뜻한 감촉을 느낄 수 있는 캐시미어 크루넥 스웨터.
        · 캐시미어 소재 100% 사용.
        · 크루넥 타입.', 
        99900, 'M', 
        'T', 'KN', '435798_1.png', '435798_2.png');
        
INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('430015', '스탠드칼라T(긴팔)', '편안한 착용감을 느낄 수 있으면서도 트렌디한 인상을 주는 스탠드 칼라 T셔츠.
탄력감이 있는 캐주얼한 소재감을 느낄 수 있습니다. 스탠드 칼라 디자인. 사이즈 업하여 여유감 있는 실루엣으로 착용하는 것도 추천!
소매 브라우징 부분을 넉넉하게 설정하여 편안한 착용감 실현!', 19900, 'M', 'T', 'SH', '430015_1.png', '430015_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('429179', '와플크루넥T(긴팔)', '캐주얼한 스타일에 제격인 와플 크루넥 T셔츠. 디자인의 포인트가 되는 가슴 포켓 추가. 표면에 큰 요철감을 느낄 수 있는 와플 소재 사용.
밑단은 라운트 테일 디자인.',12900,'M', 'T', 'SH', '429179_1.png', '429179_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('425213', 'U크루넥T(긴팔)20SS', '심플한 디자인이면서도 소재, 디테일 모두 고집한 크루넥 T셔츠.크리스토퍼 르메르가 이끄는 파리의 디자이너 팀이 제안하는 새로운 LifeWear 컬렉션. 클래식한 티셔츠 다운 저지 소재를 사용하였습니다.
클래식한 스티치를 채용하였습니다. 드룝 숄더 사양으로 편한 착용감을 느낄 수 있습니다. 편리한 가슴 포켓 사양.',29900,'M', 'T', 'SH', '425213_1.png', '425213_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('433113', 'IDLF트위스트플리츠롱스커트', '광택 있는 소재감과 아름다운 머메이드 실루엣을 즐길 수 있는 트위스트 플리츠 롱 스커트.
시대와 세대를 넘어 사랑 받고 있는 프렌치 시크의 대명사 이네스 드 라 프레상쥬와 스페셜 콜라보레이션. 트위스트 주름을 가공하여 캐주얼한 인상을 줍니다. 광택감이 있는 새틴 소재를 사용하였습니다. 트위스트 주름은 신축성이 있어 깔끔하면서도 맵시 있는 인상을 줍니다. 웨스트는 밴드 사양으로 편하게 착용할 수 있습니다. 비틀어 보관하면 주름이 오래 유지됩니다. 워셔블(물세탁) 사양입니다.', 
39900, 'F', 'B', 'SK', '433113_1.png', '433113_2.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('432733', '3D니트EFM립플레어스커트', '고급스러우면서도 섬세한 감촉을 즐길 수 있는 3D 니트 EFM 립 플레어 스커트. 고급스러운 광택감을 느낄 수 있는 메리노 울 소재 100% 사용. 홀가먼트 기술 채용. 따끔따끔하지 않은 감촉 실현. 플레어 실루엣.', 59900, 'F', 'B', 'SK', '432733_1.png', '432733_1.png');

INSERT INTO product (product_no, product_name, product_desc, product_price, product_L_div, product_M_div, product_S_div, product_image_1, product_image_2) 
VALUES ('431464', 'U데님펜슬롱스커트', '스트레치 소재로 움직임이 편안한 데님 펜슬 롱 스커트. 13온스의 카이하라 데님 원단 사용. 유니클로 파리 RD센터의 아티스틱 디렉터 크리스토퍼 르메르(Christophe Lemaire)가 혁신적인 소재와 현대적인 디자인으로 재해석한 Uniqlo U 컬렉션입니다. 미니멀하고 세련된 슬림한 실루엣에 프런트 슬릿을 추가.', 49900, 'F', 'B', 'SK', '431464_1.png', '431464_2.png');

commit;



--cart
INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 1, 49900, 'M', 'Black', 'uni1', 431464);

INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 1, 39900, 'M', 'Gray', 'uni1', 433113);

INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 1, 39900, 'M', 'Blue', 'uni1', 418873);

INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 3, 299700, 'S', 'Green', 'uni2', 429094);

INSERT INTO cart (cart_no, CART_QTY, CART_TOT_PRICE, CART_PRODUCT_SIZE, CART_PRODUCT_COLOR, MEMBER_ID, PRODUCT_NO) 
VALUES (cart_cart_no_SEQ.nextval, 1, 59900, 'M', 'Yellow', 'uni3', 435455);

commit;

--delivery
INSERT INTO DELIVERY
VALUES ('GEN', '일반', '3~4일', 3000);
INSERT INTO DELIVERY
VALUES ('EX', '특급', '1~2일', 6000);


--jumun
INSERT INTO jumun (jumun_no, jumun_date, jumun_status, jumun_tot_price, card_no, card_expire_date, card_cvc, card_member_name, member_id, delivery_no) 
VALUES (jumun_jumun_no_SEQ.nextval, sysdate, 'Delivered', 79800, '1234 5678 9012 3456', '08/25', '123', '신혜원', 'uni1','GEN');

INSERT INTO jumun (jumun_no, JUMUN_DATE, JUMUN_STATUS, JUMUN_TOT_PRICE, CARD_NO, CARD_EXPIRE_DATE, CARD_CVC, CARD_MEMBER_NAME, MEMBER_ID, delivery_no) 
VALUES (jumun_jumun_no_SEQ.nextval, sysdate, 'Delayed', 99800, '9876 5432 1098 7654', '02/21', '456', '신지원', 'uni2','EX');

INSERT INTO jumun (jumun_no, JUMUN_DATE, JUMUN_STATUS, JUMUN_TOT_PRICE, CARD_NO, CARD_EXPIRE_DATE, CARD_CVC, CARD_MEMBER_NAME, MEMBER_ID, delivery_no) 
VALUES (jumun_jumun_no_SEQ.nextval, sysdate, 'Canceled', 59800, '1346 7964 2585 1973', '06/23', '789', '김민정', 'uni3','EX');

commit;


--jumun_detail
INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, 'IDLF트위스트플리츠롱스커트', 'M', 'Blue', 39900, 1, 1, 433113);

INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, '보아후리스크루넥가디건(긴팔)', 'M', 'Red', 39900, 1, 1, 435455);

INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, 'IDLF3D니트자카드스웨터(긴팔)', 'S', 'White', 49900, 1, 2, 432087);

INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, '울트라스트레치진20FW', 'S', 'Blue', 49900, 1, 2, 429094);

INSERT INTO jumun_detail (JUMUN_D_NO, JUMUN_D_PRODUCT_NAME, JUMUN_D_PRODUCT_SIZE, JUMUN_D_PRODUCT_COLOR, JUMUN_D_PRODUCT_PRICE, JUMUN_D_PRODUCT_QTY, JUMUN_NO, PRODUCT_NO) 
VALUES (jumun_detail_jumun_d_no_SEQ.nextval, '플란넬체크셔츠(긴팔)', 'L', 'White', 29900, 1, 3, 429094);

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