--���ο� ������� �߰�
--CREATE USER ����ڸ� IDENTIFIED BY ��й�ȣ;
CREATE USER JAMES IDENTIFIED BY 1111;

--���� �ο��ϱ�
--GRANT ����, ���� TO ����ڸ�;
--CONNECT ���� : ���� ����
--RESOURE ���� : ���ҽ� ��� ����
--DBA ���� : ������ ����
GRANT DBA TO JAMES;

--���� �����ϱ�
--REVOKE ���� FROM ����ڸ�;
REVOKE DBA FROM JAMES;

-- ����� �����ϱ�
-- DROP USER ����ڸ�;
-- DROP USER ����ڸ� CASCADE; ����ڰ� �����͸� ������ �ִ� ���
DROP USER JAMES CASCADE;


