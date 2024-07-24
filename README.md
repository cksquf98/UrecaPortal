# UrecaPortal
미니프로젝트

### 유레카 전용 홈페이지 만들기
    
    페이지)
    
    - 회원가입 : 아이디, 이름, 나이, 현재 자리 노출
    
    - 로그인
    
    - 메인 화면 - 우리반 현재 자리가 테이블 형식으로 나오게
    
    - 랜덤 자리 배정 출력 페이지
    
    - 회원 상세 페이지
    
    기능)
    
    - 자리 추가 한 행씩
    
    - 자리 바꾸기
    
    자리 삭제 한 행씩
    
    회원정보 수정

---

### 필요한 테이블

members 

컬럼(member_idx, 아이디, 이름, 비밀번호, 현재 좌석, 전화번호)

```java
create table members(
	member_idx int primary key auto_increment,
	id varchar(20) not null unique,
	name varchar(20) not null,
	password varchar(20) not null,
	seat int default null,
	phone varchar(20) not null	
);

alter table members add column location varchar(30) not null;
```

seats

컬럼(seat_idx, 좌석사용자FK, 빈좌석 여부)

```java
create table seats(
	seats_idx int primary key,
	seat_owner int,
	seat_empty boolean,
	foreign key (seat_owner) references members(member_idx)
);
```

- 유저 seat 정보가 들어가면 seats의 seat_owner에 값 들어가게 trigger 만들어야징

7/24

- 로그인, 회원가입 끝
- 홈화면 구현중
- 홈화면 자리를 교실 좌석배정표처럼 꾸며보게써
