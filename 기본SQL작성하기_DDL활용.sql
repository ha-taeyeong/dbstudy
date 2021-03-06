CREATE TABLE bank
(
    bank_code VARCHAR2(20) PRIMARY KEY,
    bank_name VARCHAR2(30)
);
CREATE TABLE customer
(
    NO NUMBER,
    NAME VARCHAR2(30) NOT NULL,
    phone VARCHAR2(30) UNIQUE,
    age NUMBER CHECK(age BETWEEN 0 AND 100),
    bank_code VARCHAR2(20) REFERENCES bank(bank_code),
    PRIMARY KEY(NO)
);
----------------------------------------------------------------------------
CREATE TABLE bank
(
    bank_code VARCHAR2(20),
    bank_name VARCHAR2(30),
    PRIMARY KEY(bank_code)
);
CREATE TABLE customer
(
    NO NUMBER,
    NAME VARCHAR2(30) NOT NULL,
    phone VARCHAR2(30),
    age NUMBER,
    bank_code VARCHAR2(20),
    PRIMARY KEY(NO),
    UNIQUE(phone),
    CHECK(age BETWEEN 0 AND 100),
    FOREIGN KEY(bank_code) REFERENCES bank(bank_code)
);
------------------------------------------------------------------------------
DROP TABLE customer;
DROP TABLE bank;
---------------------------------------------------------------------
CREATE TABLE bank
(
    bank_code VARCHAR2(20),
    bank_name VARCHAR2(30)
);
CREATE TABLE customer
(
    NO NUMBER,
    NAME VARCHAR2(30) NOT NULL,
    phone VARCHAR2(30),
    age NUMBER,
    bank_code VARCHAR2(20)
);

--테이블 구조 확인
DESC bank;
DESC customer;

--테이블 변경
--칼럼의 추가
--1. bank 테이블에 bank_phone 칼럼을 추가한다.
ALTER TABLE bank ADD bank_phone VARCHAR2(15);

--칼럼의 수정
--ALTER TABLE 테이블 MODIFY 칼럼명 타입;
--1. bank 테이블의 bank_name 칼럼을 varchar2(15)로 수정한다.
ALTER TABLE bank modify bank_name varchar2(15);

--2. customer 테이블의 age 칼럼을 number(3)로 수정한다.
alter table customer modify age number(3);

--3. customer 테이블의 phone 칼럼을 NOT NULL로 수정한다.
alter table customer modify phone varchar2(30) not null;

--4. customer 테이블의 phone 칼럼을 NULL로 수정한다.
alter table customer modify phone varchar(30) null;

--칼럼의 삭제
--ALTER TABLE 테이블 DROP COLUMN 칼럼명;
--1. bank 테이블의 bank_phone 칼럼을 삭제한다.
alter table bank drop column bank_phone;

-- 칼럼의 이름 변경
-- ALTER TABLE 테이블 RENAME COLUMN 기존칼럼명 TO 신규칼럼명;
--1. customer 테이블의 phone 칼럼명을 contact으로 수정한다.
alter table customer rename column phone to contact;


--ALTER TABLE 테이블 (ADD, DROP, MODIFY 등)

--제약조건의 추가
ALTER TABLE bank ADD CONSTRAINT bank_pk PRIMARY KEY(bank_code);
ALTER TABLE customer ADD CONSTRAINT customer_pk PRIMARY KEY(no);
ALTER TABLE customer ADD CONSTRAINT customer_phone_uq UNIQUE(phone);
ALTER TABLE customer ADD CONSTRAINT customer_age_ck CHECK(age BETWEEN 0 AND 100);
ALTER TABLE customer ADD CONSTRAINT customer_bank_fk FOREIGN KEY(bank_code) REFERENCES bank(bank_code);





