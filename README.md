![logo](https://user-images.githubusercontent.com/66353700/101781894-b8889480-3b3b-11eb-8264-fac2b257292d.png)
# UniShop
> Spring Framework 를 사용한 의류 쇼핑몰 구축 프로젝트로, Member, Product, Cart, Jumun 기능을 가지고 있는 웹사이트 입니다.

> 개발일정: 2020-10-05 ~ 2020-11-17



![](../header.png)


## 사용 예제

> 2021-21-22: AWS EC2 인스턴스로 배포

http://3.35.150.132:8080/unishop/unishop_main

![](UniShop.gif)


## 개발 환경 

* 언어: JAVA, JSP
* 개발툴: Eclipse, JDK 1.8
* 빌드툴: Maven
* DB: Oracle 12.1.0.2 / ec2 ubuntu - Oracle xe 11
* 서버: Tomcat 9.0 / e2 ubuntu - Tomcat 8.0
* 프레임워크: Spring Framework 4.3.16
* 형상관리: Git
* 프론트: HTML, JS, JQUERY, AJAX


## 담당 기능

* 주문(checkout) 서비스 구현
* 주소입력, 배송방식, 카드정보입력, 주문확인 페이지
* RestController, Ajax 이용한 비동기 통신 페이지 구현 - Product 추가시 common_top 가격 반영 & 주문 Process 
* 제품(Product) 페이지 카트&찜 추가 기능
* DB 관리
* AWS - EC2 프로젝트 옮기기 및 배포

