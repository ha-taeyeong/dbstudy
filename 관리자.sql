--새로운 사용자의 추가
--CREATE USER 사용자명 IDENTIFIED BY 비밀번호;
CREATE USER JAMES IDENTIFIED BY 1111;

--권한 부여하기
--GRANT 권한, 권한 TO 사용자명;
--CONNECT 권한 : 접속 권한
--RESOURE 권한 : 리소스 사용 권한
--DBA 권한 : 관리자 권한
GRANT DBA TO JAMES;

--권한 제거하기
--REVOKE 권한 FROM 사용자명;
REVOKE DBA FROM JAMES;

-- 사용자 제거하기
-- DROP USER 사용자명;
-- DROP USER 사용자명 CASCADE; 사용자가 데이터를 가지고 있는 경우
DROP USER JAMES CASCADE;


