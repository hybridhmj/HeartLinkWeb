--------------------------------------------------------
--  ������ ������ - ������-5��-13-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MATCHINGRECORD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MATCHINGRECORD" 
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
	"RECORDID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MATCHINGRECORD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."MATCHINGRECORD_PK" ON "SCOTT"."MATCHINGRECORD" ("RECORDID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MATCHINGRECORD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MATCHINGRECORD" ADD CONSTRAINT "MATCHINGRECORD_PK" PRIMARY KEY ("RECORDID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SCOTT"."MATCHINGRECORD" MODIFY ("RECORDID" NOT NULL ENABLE);




INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('���', '���', '¥�� ', '�౸', '�ݶ�', '������', '���ϻ�', '�������', '�Ͼ��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '�ִ�', '������', '���̷ε��', '��ȭ��', '������', '��', '�ܻ�', '��������', '�԰���', '����', '��������', '�׷���', 'webapp');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('���', '���', '¥�� ', '�౸', '�ݶ�', '������', 'ũ����', '�񴩳���', '�Ͼ��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '�ִ�', '������', 'ȸ����', 'Ŀ�Ǽ�', '������', '��', '�ܻ�', '���̹���', '�԰���', '����', '��������', '�ƴϴ�', 'jo');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('���', '���', '¥�� ', '�౸', '�ݶ�', '������', '���ϻ�', '�������', '�Ͼ��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '�ִ�', '������', '���̷ε��', '��ȭ��', '������', '��', '�ܻ�', '��������', '�԰���', '����', '��������', '�׷���', 'sunny');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('���', '���� ', '¥�� ', '�౸', '�ݶ�', '�����', 'ũ����', '�������', '�Ͼ��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '����', '������', '���̷ε��', 'Ŀ�Ǽ�', '�ȴ�', '����', 'ȭ���ѻ�', '��������', '�԰���', '�ؿ�', '��������', '�ƴϴ�', 'aaaa');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('�Ķ��̵� ', '���', '¥�� ', '�߱�', '���̴� ', '������', 'ũ����', '�������', '�Ͼ��Ǻ�', '���ø�', '���� ����', '�׳� ����ģ��', '����', '������', '���̷ε��', 'Ŀ�Ǽ�', '������', '��', 'ȭ���ѻ�', '��������', '�԰���', '�ؿ�', '��������', '�׷���', 'kmh880528');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('�Ķ��̵� ', '���� ', '¥�� ', '�౸', '�ݶ�', '�����', 'ũ����', '�������', '�Ͼ��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '�ִ�', '������', '���̷ε��', '��ȭ��', '������', '��', '�ܻ�', '��������', '�԰���', '�ؿ�', '��������', '�ƴϴ�', 'ltk016');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('�Ķ��̵� ', '���� ', '«��', '�߱�', '���̴� ', '�����', 'ũ����', '�񴩳���', '�Ͼ��Ǻ�', '���ø�', '���� ����', '�׳� ����ģ��', '����', '�ټ�����', 'ȸ����', 'Ŀ�Ǽ�', '�ȴ�', '����', 'ȭ���ѻ�', '���̹���', '�׳ɰ���', '�ؿ�', '�������', '�ƴϴ�', 'b890223');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('���', '���', '¥�� ', '�౸', '�ݶ�', '������', '���ϻ�', '�񴩳���', '�Ͼ��Ǻ�', '���ø�', '���� ����', '�ݴ´�', '����', '������', '���̷ε��', 'Ŀ�Ǽ�', '������', '����', '�ܻ�', '��������', '�԰���', '�ؿ�', '��������', '�ƴϴ�', 'masayuki86');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('���', '���', '«��', '�౸', '�ݶ�', '������', 'ũ����', '�񴩳���', '�Ͼ��Ǻ�', '���ø�', '���� ����', '�׳� ����ģ��', '�ִ�', '�ټ�����', 'ȸ����', 'Ŀ�Ǽ�', '������', '��', '�ܻ�', '��������', '�԰���', '�ؿ�', '��������', '�׷���', 'kyh123');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('�Ķ��̵� ', '���� ', '«��', '�߱�', '�ݶ�', '�����', 'ũ����', '�񴩳���', '�Ͼ��Ǻ�', '���ø�', '���� ����', '�ݴ´�', '����', '������', 'ȸ����', 'Ŀ�Ǽ�', '������', '����', '�ܻ�', '��������', '�԰���', '�ؿ�', '��������', '�ƴϴ�', 'hwan');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('���', '���', '¥�� ', '�౸', '�ݶ�', '������', 'ũ����', '�񴩳���', '�Ͼ��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '�ִ�', '�ټ�����', 'ȸ����', 'Ŀ�Ǽ�', '������', '��', '�ܻ�', '��������', '�԰���', '����', '�������', '�ƴϴ�', 'sun');
INSERT INTO "SCOTT"."MATCHINGRECORD" (ANSWER1, ANSWER2, ANSWER3, ANSWER4, ANSWER5, ANSWER6, ANSWER7, ANSWER8, ANSWER9, ANSWER10, ANSWER11, ANSWER12, ANSWER13, ANSWER14, ANSWER15, ANSWER16, ANSWER17, ANSWER18, ANSWER19, ANSWER20, ANSWER21, ANSWER22, ANSWER23, ANSWER24, RECORDID) VALUES ('�Ķ��̵� ', '���', '¥�� ', '�౸', '���̴� ', '�����', 'ũ����', '�������', '�Ͼ��Ǻ�', '����ø�', '���� ����', '�ݴ´�', '����', '�ټ�����', 'ȸ����', '��ȭ��', '������', '��', '�ܻ�', '���̹���', '�԰���', '�ؿ�', '��������', '�ƴϴ�', 'shkjl2006');
