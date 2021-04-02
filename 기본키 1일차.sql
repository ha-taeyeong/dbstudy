
명령의 2 행에서 시작하는 중 오류 발생 -
CREATE TABLE 고객
(
    고객아이디 VARCHAR2(30) PRIMARY KEY,
    고객이름 NVARCHAR2(30),
    나이 NUMBER(3),
    등급 CHAR(1),
    직업 VARCHAR2(5),
    적립금 NUMBER(7)
)
오류 보고 -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Table 주문이(가) 생성되었습니다.

