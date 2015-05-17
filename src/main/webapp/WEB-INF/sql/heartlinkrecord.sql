--------------------------------------------------------
--  ������ ������ - �Ͽ���-5��-17-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HEARTLINKRECORD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."HEARTLINKRECORD" 
   (	"ANSWER1" VARCHAR2(20 BYTE), 
	"ANSWER2" VARCHAR2(20 BYTE), 
	"ANSWER3" VARCHAR2(20 BYTE), 
	"ANSWER4" VARCHAR2(20 BYTE), 
	"ANSWER5" VARCHAR2(20 BYTE), 
	"ANSWER6" VARCHAR2(20 BYTE), 
	"ANSWER7" VARCHAR2(20 BYTE), 
	"ANSWER8" VARCHAR2(20 BYTE), 
	"ANSWER9" VARCHAR2(20 BYTE), 
	"ANSWER10" VARCHAR2(20 BYTE), 
	"ANSWER11" VARCHAR2(20 BYTE), 
	"ANSWER12" VARCHAR2(20 BYTE), 
	"ANSWER13" VARCHAR2(20 BYTE), 
	"ANSWER14" VARCHAR2(20 BYTE), 
	"ANSWER15" VARCHAR2(20 BYTE), 
	"ANSWER16" VARCHAR2(20 BYTE), 
	"ANSWER17" VARCHAR2(20 BYTE), 
	"ANSWER18" VARCHAR2(20 BYTE), 
	"ANSWER19" VARCHAR2(20 BYTE), 
	"ANSWER20" VARCHAR2(20 BYTE), 
	"ANSWER21" VARCHAR2(20 BYTE), 
	"ANSWER22" VARCHAR2(20 BYTE), 
	"ANSWER23" VARCHAR2(20 BYTE), 
	"ANSWER24" VARCHAR2(20 BYTE), 
	"RECORDID" VARCHAR2(20 BYTE), 
	"NUM" NUMBER(20,0), 
	"QUESTIONNUM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table HEARTLINKRECORD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."HEARTLINKRECORD" MODIFY ("RECORDID" NOT NULL ENABLE);
  
  
  
  
  
  
INSERT INTO "SCOTT"."HEARTLINKRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID, NUM, QUESTIONNUM) VALUES ('���', '���', '¥�� ', '�౸', '�ݶ�', '������', '���ϻ�', '�������', '�Ͼ��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '�ִ�', '������', '���̷ε��', '��ȭ��', '������', '��', '�ܻ�', '��������', '�԰���', '����', '��������', '�׷���', 'webapp', '20', 'a1_b1');
INSERT INTO "SCOTT"."HEARTLINKRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID, NUM, QUESTIONNUM) VALUES ('��ο�ȭ', '��', '���', '������', '��', '�纸�� ��', '�ܸ�', '����', '�����', '��Ű', '���� ����', '�ݴ´�', '����', '������', 'ȸ����', '��ȭ��', '�ȴ�', '��', 'ȭ���ѻ�', '��������', '�׳ɰ���', '����', '�������', '�׷���', 'webapp', '18', 'a2_b1');
INSERT INTO "SCOTT"."HEARTLINKRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID, NUM, QUESTIONNUM) VALUES ('���', '���', '¥�� ', '�߱�', '�ݶ�', '������', '���ϻ�', '�񴩳���', '�Ͼ��Ǻ�', '���ø�', '���� ����', '�ݴ´�', '����', '������', 'ȸ����', '��ȭ��', '�ȴ�', '����', '�ܻ�', '���̹���', '�׳ɰ���', '�ؿ�', '��������', '�ƴϴ�', 'webapp', '19', 'a1_b1');
INSERT INTO "SCOTT"."HEARTLINKRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID, NUM, QUESTIONNUM) VALUES ('�Ķ��̵� ', '���', '¥�� ', '�౸', '�ݶ�', '������', '���ϻ�', '�������', '�Ͼ��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '�ִ�', '������', '���̷ε��', '��ȭ��', '������', '����', '�ܻ�', '��������', '�԰���', '����', '��������', '�׷���', 'ltk016', '16', 'a1_b1');
INSERT INTO "SCOTT"."HEARTLINKRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID, NUM, QUESTIONNUM) VALUES ('�Ķ��̵� ', '���� ', '¥�� ', '�߱�', '���̴� ', '�����', '���ϻ�', '�������', '��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '����', '������', '���̷ε��', '��ȭ��', '�ȴ�', '����', 'ȭ���ѻ�', '���̹���', '�׳ɰ���', '����', '�������', '�ƴϴ�', 'kyh123', '12', 'a1_b1');
INSERT INTO "SCOTT"."HEARTLINKRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID, NUM, QUESTIONNUM) VALUES ('�Ķ��̵� ', '���� ', '«��', '�߱�', '���̴� ', '�����', 'ũ����', '�񴩳���', '��Ǻ�', '���ø�', '���� ����', '�׳� ����ģ��', '����', '�ټ�����', 'ȸ����', 'Ŀ�Ǽ�', '�ȴ�', '����', 'ȭ���ѻ�', '���̹���', '�׳ɰ���', '�ؿ�', '�������', '�ƴϴ�', 'sunny', '15', 'a1_b1');
INSERT INTO "SCOTT"."HEARTLINKRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID, NUM, QUESTIONNUM) VALUES ('���', '���� ', '«��', '�߱�', '���̴� ', '�����', '���ϻ�', '�������', '��Ǻ�', '���ø�', '���� ����', '�׳� ����ģ��', '����', '������', '���̷ε��', '��ȭ��', '�ȴ�', '����', 'ȭ���ѻ�', '���̹���', '�׳ɰ���', '�ؿ�', '��������', '�׷���', 'sun', '13', 'a1_b1');
INSERT INTO "SCOTT"."HEARTLINKRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID, NUM, QUESTIONNUM) VALUES ('���', '���', '¥�� ', '�౸', '�ݶ�', '������', 'ũ����', '�������', '��Ǻ�', '����ø�', '���� ����', '�׳� ����ģ��', '�ִ�', '�ټ�����', '���̷ε��', '��ȭ��', '�ȴ�', '��', 'ȭ���ѻ�', '���̹���', '�׳ɰ���', '����', '�������', '�׷���', 'hwan', '14', 'a1_b1');

  
  
  
  
  
