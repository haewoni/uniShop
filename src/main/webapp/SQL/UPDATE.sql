------------------------------ UPDATE ------------------------------
-- MEMBER UPDATE
update MEMBER 
set MEMBER_ID = 'uni99',
    MEMBER_PASSWORD = '0000',
    MEMBER_NAME = '정솬',
    MEMBER_PHONE = '000-0000-0000',
    MEMBER_EMAIL = 'uni99@gmail.com'
where MEMBER_ID ='uni100';

-- PRODUCT UPDATE
update PRODUCT 
set PRODUCT_NO='999999',
    PRODUCT_NAME='product_name수정',
    PRODUCT_DESC='product_desc수정',
    PRODUCT_PRICE='product_price수정',
    PRODUCT_L_DIV='product_l_div수정',
    PRODUCT_M_DIV='product_m_div수정',
    PRODUCT_S_DIV='product_s_div수정',
    PRODUCT_IMAGE_1='product_image_1수정',
    PRODUCT_IMAGE_2='product_image_2수정'
where PRODUCT_NO = '000000';

-- JUMUN UPDATE
update JUMUN set JUMUN_STATUS='Delivered'
		where MEMBER_ID='uni2' and JUMUN_NO=2;	

-- JUMUN_DETAIL UPDATE
update JUMUN_DETAIL 
set JUMUN_D_PRODUCT_NAME='BAPE',
    JUMUN_D_PRODUCT_SIZE='L',
    JUMUN_D_PRODUCT_COLOR='PURPLE',
    JUMUN_D_PRODUCT_PRICE='999999',
    JUMUN_D_PRODUCT_QTY='2'
where JUMUN_NO=999 AND PRODUCT_NO='999999';

-- CART UPDATE
-- uni3 카트에 있는 제품 수량증가
update CART set CART_QTY=CART_QTY + 1 
		where MEMBER_ID='uni3' and CART_NO=5;
        







		