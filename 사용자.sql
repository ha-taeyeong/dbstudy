--���ο� ���̺�(ǥ) �����
--CREATE TABLE ���̺�� (Į���� Į��Ÿ�� ��������, ...);

--�л� ���̺�
--Į��: �й�(�ΰ�Ű), �̸�, ����, ����ó, �ּ�, ����(�ڿ�Ű)

--��������
--�⺻Ű: PRIMARY KEY, �ĺ���(�ΰ�Ű�� �ַ� ���, �ߺ� X, NULL X), �ֹε�Ϲ�ȣ, �й�, ����, ��ǰ��ȣ ��
--NULL �� ���� : NULL / NOT NULL
--�ߺ� �� ���� : UNIQUE(�ߺ� X) UNIQUE�� �������� X(�ߺ� O)

CREATE TABLE STUDENT
(
    STUDENT_NO VARCHAR2(5) PRIMARY KEY,
    NAME VARCHAR2(9) NOT NULL,
    AGE NUMBER NOT NULL,
    CONTACT VARCHAR2(20) NULL,
    ADDRESS VARCHAR2(100) NULL,
    BIRTHDAY DATE -- NULL ó���� ���ϸ� �⺻������ NULL �����Դϴ�.
);

-- CRUD
-- C : CREATE, INSERT <EASY>
-- R : READ,   SELECT <HARD> *�������*
-- U : UPDATE, UPDATE <EASY>
-- D : DELETE, DELETE <EASY>

-- INSERT��
-- INSERT INTO ���̺�� (Į��1, Į��2, ...) VALUES (��1, ��2, ...);
-- INSERT INTO ���̺�� VALUES (��1, ��2, ...); ��� Į���� ���� �ִ� ���
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES ('10101', '���ӽ�', 8, NULL, NULL, '2014-05-05');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES ('10102', '�ٸ���', 8, '010-1111-1111', '����', '2014-07-01');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES ('10103', '���̽�', 8, '010-2222-2222', NULL, '2014-02-02');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES ('10104', '����', 8, NULL, '��õ', '2014-05-15');
INSERT INTO STUDENT (STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY) VALUES ('10105', '��Ÿ��', 8, NULL, '���', '2014-06-23');

--SELECT��
--SELECT Į��1, Į��2, ... FROM ���̺��;
--SELECT Į��1, Į��2, ... FROM ���̺�� WHERE ���ǽ�;
SELECT STUDENT_NO, NAME, AGE, CONTACT, ADDRESS, BIRTHDAY FROM STUDENT;
SELECT STUDENT_NO, NAME FROM STUDENT;
SELECT STUDENT_NO, NAME, CONTACT FROM STUDENT WHERE CONTACT IS NULL; -- CONTACT�� NULL�� �����͸� ��ȸ
SELECT STUDENT_NO, NAME, CONTACT FROM STUDENT WHERE CONTACT IS NOT NULL; -- CONTACT�� NOT NULL�� �����͸� ��ȸ
SELECT STUDENT_NO, NAME, ADDRESS FROM STUDENT WHERE ADDRESS = '���';
SELECT STUDENT_NO, NAME, ADDRESS FROM STUDENT WHERE ADDRESS IS NOT NULL;
SELECT NAME, STUDENT_NO, ADDRESS FROM STUDENT WHERE ADDRESS IS NULL;

-- UPDATE��
-- UPDATE ���̺�� SET �����ҳ���; ��ü ���� ������Ʈ
-- UPDATE ���̺�� SET �����ҳ��� WHERE ���ǽ�; �κ� ���� ������Ʈ
UPDATE STUDENT SET AGE = AGE + 1;
UPDATE STUDENT SET CONTACT = '010-3333-3333',ADDRESS = '����' WHERE NAME = '���ӽ�'; -- �� ����. ���ӽ��� ���� ���� �����ϹǷ�.
UPDATE STUDENT SET CONTACT = '010-3333-3333',ADDRESS = '����' WHERE STUDENT_NO = '10101';


-- DELETE��
-- DELETE FROM ���̺��; ��ü ������ ���� <������ �� X>
-- DELETE FROM ���̺�� WHERE ���ǽ�; <������ �ʼ��� ���� ��.ex)ȸ��Ż��, �Խù�����>
DELETE FROM STUDENT WHERE STUDENT_NO = '10102';

--COMMIT�� ROLLBACK
--Ʈ�����(TRANSACTION): � �۾��� �ǹ��Ѵ�. ���� ���� �۾����� ������ �� �� �ִ�.
-- ��: ���� ��ü(�� ���忡�� ��� + ��� ���忡 �Ա�)
-- Ʈ������� �ݵ�� ���ڼ��� Ư���� ������. (ALL or NOTHING)
-- COMMIT : Ʈ������� ������ ��� �۾��� DB�� �ݿ��Ѵ�.
-- ROLLBACK : Ʈ������� ������ ��� ��� �۾��� ����Ѵ�.

--Ʈ������� ���: INSERT, UPDATE, DELETE











