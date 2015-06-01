--------------------------------------------------------
--  DDL for Table RQKAKAOID
--------------------------------------------------------

  CREATE TABLE "SCOTT"."RQKAKAOID" 
   (	"USERID" VARCHAR2(20 BYTE), 
	"REQUESTID" VARCHAR2(20 BYTE), 
	"NUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table RQKAKAOID
--------------------------------------------------------

  ALTER TABLE "SCOTT"."RQKAKAOID" MODIFY ("USERID" NOT NULL ENABLE);







--------------------------------------------------------
--  DDL for Table MATCHINGRECORD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MATCHINGRECORD" 
   (	"ANSWER1" VARCHAR2(100 BYTE), 
	"ANSWER2" VARCHAR2(100 BYTE), 
	"ANSWER3" VARCHAR2(100 BYTE), 
	"ANSWER4" VARCHAR2(100 BYTE), 
	"ANSWER5" VARCHAR2(100 BYTE), 
	"ANSWER6" VARCHAR2(100 BYTE), 
	"ANSWER7" VARCHAR2(100 BYTE), 
	"ANSWER8" VARCHAR2(100 BYTE), 
	"ANSWER9" VARCHAR2(100 BYTE), 
	"ANSWER10" VARCHAR2(100 BYTE), 
	"ANSWER11" VARCHAR2(100 BYTE), 
	"ANSWER12" VARCHAR2(100 BYTE), 
	"ANSWER13" VARCHAR2(100 BYTE), 
	"ANSWER14" VARCHAR2(100 BYTE), 
	"ANSWER15" VARCHAR2(100 BYTE), 
	"ANSWER16" VARCHAR2(100 BYTE), 
	"ANSWER17" VARCHAR2(100 BYTE), 
	"ANSWER18" VARCHAR2(100 BYTE), 
	"ANSWER19" VARCHAR2(100 BYTE), 
	"ANSWER20" VARCHAR2(100 BYTE), 
	"ANSWER21" VARCHAR2(100 BYTE), 
	"ANSWER22" VARCHAR2(100 BYTE), 
	"ANSWER23" VARCHAR2(100 BYTE), 
	"ANSWER24" VARCHAR2(100 BYTE), 
	"RECORDID" VARCHAR2(100 BYTE), 
	"QUESTIONNUM" VARCHAR2(100 BYTE)
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














--------------------------------------------------------
--  DDL for Table HEARTLINKRECORD
--------------------------------------------------------

  CREATE TABLE "SCOTT"."HEARTLINKRECORD" 
   (	"ANSWER1" VARCHAR2(100 BYTE), 
	"ANSWER2" VARCHAR2(100 BYTE), 
	"ANSWER3" VARCHAR2(100 BYTE), 
	"ANSWER4" VARCHAR2(100 BYTE), 
	"ANSWER5" VARCHAR2(100 BYTE), 
	"ANSWER6" VARCHAR2(100 BYTE), 
	"ANSWER7" VARCHAR2(100 BYTE), 
	"ANSWER8" VARCHAR2(100 BYTE), 
	"ANSWER9" VARCHAR2(100 BYTE), 
	"ANSWER10" VARCHAR2(100 BYTE), 
	"ANSWER11" VARCHAR2(100 BYTE), 
	"ANSWER12" VARCHAR2(100 BYTE), 
	"ANSWER13" VARCHAR2(100 BYTE), 
	"ANSWER14" VARCHAR2(100 BYTE), 
	"ANSWER15" VARCHAR2(100 BYTE), 
	"ANSWER16" VARCHAR2(100 BYTE), 
	"ANSWER17" VARCHAR2(100 BYTE), 
	"ANSWER18" VARCHAR2(100 BYTE), 
	"ANSWER19" VARCHAR2(100 BYTE), 
	"ANSWER20" VARCHAR2(100 BYTE), 
	"ANSWER21" VARCHAR2(100 BYTE), 
	"ANSWER22" VARCHAR2(100 BYTE), 
	"ANSWER23" VARCHAR2(100 BYTE), 
	"ANSWER24" VARCHAR2(100 BYTE), 
	"RECORDID" VARCHAR2(100 BYTE), 
	"NUM" NUMBER(*,0), 
	"QUESTIONNUM" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table HEARTLINKRECORD
--------------------------------------------------------

  ALTER TABLE "SCOTT"."HEARTLINKRECORD" MODIFY ("RECORDID" NOT NULL ENABLE);




















--------------------------------------------------------
--  DDL for Table NOTE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NOTE" 
   (	"USERID" VARCHAR2(20 BYTE), 
	"MESSAGE" VARCHAR2(100 BYTE), 
	"NUM" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;





















--------------------------------------------------------
--  DDL for Table PROFILE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PROFILE" 
   (	"MESSAGE" VARCHAR2(300 BYTE), 
	"USERID" VARCHAR2(20 BYTE), 
	"PICBYTES" BLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("PICBYTES") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;






















--------------------------------------------------------
--  DDL for Table ARTICLE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."ARTICLE" 
   (	"ID" NUMBER, 
	"WRITERNAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" CLOB, 
	"WRITEDATE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Index ARTICLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."ARTICLE_PK" ON "SCOTT"."ARTICLE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ARTICLE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."ARTICLE" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ARTICLE" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ARTICLE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ARTICLE" MODIFY ("WRITERNAME" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."ARTICLE" ADD CONSTRAINT "ARTICLE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;





























--------------------------------------------------------
--  DDL for Table ��� ���̺�!!!!!!!!!!!!!!!!!!!!!
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MEMBER" 
   (	"RGID" VARCHAR2(20 BYTE), 
	"RGPASSWORD" VARCHAR2(100 BYTE), 
	"RGBIRTH" NUMBER, 
	"RGSEX" VARCHAR2(20 BYTE), 
	"RGAREA" VARCHAR2(20 BYTE), 
	"KAKAOID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REGISTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."REGISTER_PK" ON "SCOTT"."MEMBER" ("RGID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("RGID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("RGPASSWORD" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("RGBIRTH" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("KAKAOID" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("RGSEX" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" MODIFY ("RGAREA" NOT NULL ENABLE);
  ALTER TABLE "SCOTT"."MEMBER" ADD CONSTRAINT "REGISTER_PK" PRIMARY KEY ("RGID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
























--------------------------------------------------------
--  DDL for Table QUESTION
--------------------------------------------------------

  CREATE TABLE "SCOTT"."QUESTION" 
   (	"SEL_1" VARCHAR2(100 BYTE), 
	"SEL_2" VARCHAR2(100 BYTE), 
	"SEL_3" VARCHAR2(100 BYTE), 
	"NUM" NUMBER, 
	"BIND" VARCHAR2(20 BYTE), 
	"VALUE" VARCHAR2(20 BYTE), 
	"FORNAME1" VARCHAR2(20 BYTE), 
	"FORNAME2" VARCHAR2(20 BYTE), 
	"TYPE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
  
  
  
  
  
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 1', '���', '�Ķ��̵� ', '1', 's1', 'name1', 'name2', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 2', '���', '���� ', '2', 's2', 'name3', 'name4', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 3', '¥�� ', '«��', '3', 's3', 'name5', 'name6', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 4', '�౸', '�߱�', '4', 's4', 'name7', 'name8', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 5', '�ݶ�', '���̴� ', '5', 's5', 'name9', 'name10', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 6', '������', '�����', '6', 's6', 'name11', 'name12', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 7', '���ϻ�', 'ũ����', '7', 's7', 'name13', 'name14', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 8', '�������', '�񴩳���', '8', 's8', 'name15', 'name16', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 9', '�Ͼ��Ǻ�', '��Ǻ�', '9', 's9', 'name17', 'name18', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 10', '����ø�', '���ø�', '10', 's10', 'name19', 'name20', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� �ٶ󺸴� �ڽ��� ������?', '���� ����', '���� ����', '11', 's11', 'name21', 'name22', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���� �ȴ��߿� 100��¥�� ������ ���տ� ������ �ִ� ', '�ݴ´�', '�׳� ����ģ��', '12', 's12', 'name23', 'name24', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�ͽ��� �ִٰ� �����ϳ�?', '�ִ�', '����', '13', 's13', 'name25', 'name26', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('����� �ΰ�?', '������', '�ټ�����', '14', 's14', 'name27', 'name28', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���߿� �� �����ϴ� ���̱ⱸ��?', '���̷ε��', 'ȸ����', '15', 's15', 'name29', 'name30', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('ù ����Ʈ ��ҷ� ������ ����?', '��ȭ��', 'Ŀ�Ǽ�', '16', 's16', 'name31', 'name32', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ���ڱ� ���� ���� �ȴ�', '������', '�ȴ�', '17', 's17', 'name33', 'name34', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�̼��� ó�� ���� ���� ���� ��', '��', '����', '18', 's18', 'name35', 'name36', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�̼��� �Ծ����� �ϴ� �ӿ� ����?', '�ܻ�', 'ȭ���ѻ�', '19', 's19', 'name37', 'name38', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�ڽ��� ���� ������?', '��������', '���̹���', '20', 's20', 'name39', 'name40', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ��� �԰� ����� �ӻ��δ�', '�԰���', '�׳ɰ���', '21', 's21', 'name41', 'name42', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ���� ��Ҵ�?', '����', '�ؿ�', '22', 's22', 'name43', 'name44', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�θ���� ��ȥ�� �ݴ��Ѵٸ�?', '��������', '�������', '23', 's23', 'name45', 'name46', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���� ���ڰ� ������ �Ѵ�', '�׷���', '�ƴϴ�', '24', 's24', 'name47', 'name48', 'a1_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 1', '���', '�Ķ��̵� ', '1', 's1', 'name1', 'name2', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 2', '���', '���� ', '2', 's2', 'name3', 'name4', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 3', '¥�� ', '«��', '3', 's3', 'name5', 'name6', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 4', '�౸', '�߱�', '4', 's4', 'name7', 'name8', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 5', '�ݶ�', '���̴� ', '5', 's5', 'name9', 'name10', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 6', '������', '�����', '6', 's6', 'name11', 'name12', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 7', '���ϻ�', 'ũ����', '7', 's7', 'name13', 'name14', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 8', '�������', '�񴩳���', '8', 's8', 'name15', 'name16', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 9', '�Ͼ��Ǻ�', '��Ǻ�', '9', 's9', 'name17', 'name18', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 10', '����ø�', '���ø�', '10', 's10', 'name19', 'name20', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� ����ڰ� �Ѵ�', '��ϴ�', '�Ȼ�ϴ�', '11', 's11', 'name21', 'name22', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȣ�ϴ� �ڵ�����?', '������', '������', '12', 's12', 'name23', 'name24', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�氡�� �Ѿ�����', '�ٷ� �Ͼ��', '��� �����ִ´�', '13', 's13', 'name25', 'name26', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���̽��ǽ� ��ȭ�� �ɷ��Դ�', '�ٷ� ���´�', '�峭ġ�� ���´�', '14', 's14', 'name27', 'name28', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ����ٸ�', '�ٷ� �����Ѵ�', '�̷��', '15', 's15', 'name29', 'name30', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���ΰ� ������ �Ͽ�����', '�� �ڸ����� ���� ����', '�ð��� ���� ���������� ���� �Ѵ�', '16', 's16', 'name31', 'name32', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���ο��� ���� ������ ���� �ϴ°�?', '�׷���', '�ƴϴ�', '17', 's17', 'name33', 'name34', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ĭ����� ��ȥ��Ȱ�� ������ �� �ֳ�?', '�ִ�', '����', '18', 's18', 'name35', 'name36', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('ȥ�������ΰ�?', '�׷���', '�ƴϴ�', '19', 's19', 'name37', 'name38', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ �� ��� ����ΰ�?', '�а��Ѵ�', '�簡�θ�԰� ���', '20', 's20', 'name39', 'name40', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ �ڽŰ� �������� ���Ѵٸ�?', '�Ȱ��� �����Ѵ�', '���ϰ� �����Ѵ�', '21', 's21', 'name41', 'name42', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('ȥ���� �ؾ� �Ѵٰ� �����ϳ�?', '�׷���', '�ƴϴ�', '22', 's22', 'name43', 'name44', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ�� ���Ű� �����Ѱ�?', '����', '�Ұ���', '23', 's23', 'name45', 'name46', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ���� ���ΰ�?', '�׷���', '�ƴϴ�', '24', 's24', 'name47', 'name48', 'a1_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 1', '���', '�Ķ��̵� ', '1', 's1', 'name1', 'name2', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 2', '���', '���� ', '2', 's2', 'name3', 'name4', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 3', '¥�� ', '«��', '3', 's3', 'name5', 'name6', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 4', '�౸', '�߱�', '4', 's4', 'name7', 'name8', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 5', '�ݶ�', '���̴� ', '5', 's5', 'name9', 'name10', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 6', '������', '�����', '6', 's6', 'name11', 'name12', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 7', '���ϻ�', 'ũ����', '7', 's7', 'name13', 'name14', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 8', '�������', '�񴩳���', '8', 's8', 'name15', 'name16', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 9', '�Ͼ��Ǻ�', '��Ǻ�', '9', 's9', 'name17', 'name18', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 10', '����ø�', '���ø�', '10', 's10', 'name19', 'name20', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ �� ���� ���볯 �� ���ٸ�?', '�ڹ��Ѵ�', '������ ����', '11', 's11', 'name21', 'name22', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('����µ� ���� �´ٸ�?', '�԰��ܴ�', '�׳��ܴ�', '12', 's12', 'name23', 'name24', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���� �ȴٰ� ������ �ֿ���', '������ ã���ش�', '�ڽ��� ������', '13', 's13', 'name25', 'name26', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�̻����� ��������', '�����Ѵ� ', '�׳ɰ���', '14', 's14', 'name27', 'name28', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȭ�� �� ����� ���ٸ�?', 'ȥ�� ���� ����', '�������� �ʴ´�', '15', 's15', 'name29', 'name30', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('����Ʈ ����� ���ٸ�?', '������', '������ �ʴ´�', '16', 's16', 'name31', 'name32', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�̼�ģ���� �ٶ��� �ǿ�� �ɷȴ�', '�¹ٶ��� �ɴ�', '�������', '17', 's17', 'name33', 'name34', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ �� ���Ű� �����Ѱ�?', '����', '�Ұ���', '18', 's18', 'name35', 'name36', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���ΰ� ������ �ٸ��ٸ�?', '���簡���Ѵ�', '�޶� �ȴ�', '19', 's19', 'name37', 'name38', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���ϴ� �̼��� ������?', '����� ����', '�ݴ��� ����', '20', 's20', 'name39', 'name40', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�����Ѵٸ� ���̴� �������?', '����ִ�', '�������', '21', 's21', 'name41', 'name42', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ ȥ�νŰ� �Ұ��ΰ�?', '�Ѵ�', '���Ѵ�', '22', 's22', 'name43', 'name44', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ������ҿ��� ��Ų���� �õ��Ѵٸ�?', '�Ѵ�', '�ź��Ѵ�', '23', 's23', 'name45', 'name46', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('����Ѵٸ� ���ڸ����� ���� �Ⱓ�� �Ⱓ�� �߿����� �ʴ�', '�߿��ϴ�', '�߿����� �ʴ�', '24', 's24', 'name47', 'name48', 'a1_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 1', '��ο�ȭ', '������ȭ', '1', 's1', 'name1', 'name2', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 2', '��', '��', '2', 's2', 'name3', 'name4', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 3', '���', '�ѽ�', '3', 's3', 'name5', 'name6', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 4', '������', '������', '4', 's4', 'name7', 'name8', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 5', '��', '��', '5', 's5', 'name9', 'name10', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 6', '�纸�� ��', '������ ��', '6', 's6', 'name11', 'name12', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 7', '����', '�ܸ�', '7', 's7', 'name13', 'name14', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 8', '����', 'ĳ�־�', '8', 's8', 'name15', 'name16', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 9', 'û����', '�����', '9', 's9', 'name17', 'name18', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 10', '��Ű', '����', '10', 's10', 'name19', 'name20', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� �ٶ󺸴� �ڽ��� ������?', '���� ����', '���� ����', '11', 's11', 'name21', 'name22', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���� �ȴ��߿� 100��¥�� ������ ���տ� ������ �ִ� ', '�ݴ´�', '�׳� ����ģ��', '12', 's12', 'name23', 'name24', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�ͽ��� �ִٰ� �����ϳ�?', '�ִ�', '����', '13', 's13', 'name25', 'name26', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('����� �ΰ�?', '������', '�ټ�����', '14', 's14', 'name27', 'name28', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���߿� �� �����ϴ� ���̱ⱸ��?', '���̷ε��', 'ȸ����', '15', 's15', 'name29', 'name30', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('ù ����Ʈ ��ҷ� ������ ����?', '��ȭ��', 'Ŀ�Ǽ�', '16', 's16', 'name31', 'name32', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ���ڱ� ���� ���� �ȴ�', '������', '�ȴ�', '17', 's17', 'name33', 'name34', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�̼��� ó�� ���� ���� ���� ��', '��', '����', '18', 's18', 'name35', 'name36', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�ڽ��� ���� ������?', '��������', '���̹���', '20', 's20', 'name39', 'name40', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ��� �԰� ����� �ӻ��δ�', '�԰���', '�׳ɰ���', '21', 's21', 'name41', 'name42', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ���� ��Ҵ�?', '����', '�ؿ�', '22', 's22', 'name43', 'name44', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�θ���� ��ȥ�� �ݴ��Ѵٸ�?', '��������', '�������', '23', 's23', 'name45', 'name46', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���� ���ڰ� ������ �Ѵ�', '�׷���', '�ƴϴ�', '24', 's24', 'name47', 'name48', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 1', '��ο�ȭ', '������ȭ', '1', 's1', 'name1', 'name2', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�̼��� �Ծ����� �ϴ� �ӿ� ����?', '�ܻ�', 'ȭ���ѻ�', '19', 's19', 'name37', 'name38', 'a2_b1');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 2', '��', '��', '2', 's2', 'name3', 'name4', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 3', '���', '�ѽ�', '3', 's3', 'name5', 'name6', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 4', '������', '������', '4', 's4', 'name7', 'name8', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 5', '��', '��', '5', 's5', 'name9', 'name10', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 6', '�纸�� ��', '������ ��', '6', 's6', 'name11', 'name12', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 7', '����', '�ܸ�', '7', 's7', 'name13', 'name14', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 8', '����', 'ĳ�־�', '8', 's8', 'name15', 'name16', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 9', 'û����', '�����', '9', 's9', 'name17', 'name18', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 10', '��Ű', '����', '10', 's10', 'name19', 'name20', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� ����ڰ� �Ѵ�', '��ϴ�', '�Ȼ�ϴ�', '11', 's11', 'name21', 'name22', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȣ�ϴ� �ڵ�����?', '������', '������', '12', 's12', 'name23', 'name24', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�氡�� �Ѿ�����', '�ٷ� �Ͼ��', '��� �����ִ´�', '13', 's13', 'name25', 'name26', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���̽��ǽ� ��ȭ�� �ɷ��Դ�', '�ٷ� ���´�', '�峭ġ�� ���´�', '14', 's14', 'name27', 'name28', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ����ٸ�', '�ٷ� �����Ѵ�', '�̷��', '15', 's15', 'name29', 'name30', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���ΰ� ������ �Ͽ�����', '�� �ڸ����� ���� ����', '�ð��� ���� ���������� ���� �Ѵ�', '16', 's16', 'name31', 'name32', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���ο��� ���� ������ ���� �ϴ°�?', '�׷���', '�ƴϴ�', '17', 's17', 'name33', 'name34', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ĭ����� ��ȥ��Ȱ�� ������ �� �ֳ�?', '�ִ�', '����', '18', 's18', 'name35', 'name36', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('ȥ�������ΰ�?', '�׷���', '�ƴϴ�', '19', 's19', 'name37', 'name38', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ �� ��� ����ΰ�?', '�а��Ѵ�', '�簡�θ�԰� ���', '20', 's20', 'name39', 'name40', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ �ڽŰ� �������� ���Ѵٸ�?', '�Ȱ��� �����Ѵ�', '���ϰ� �����Ѵ�', '21', 's21', 'name41', 'name42', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('ȥ���� �ؾ� �Ѵٰ� �����ϳ�?', '�׷���', '�ƴϴ�', '22', 's22', 'name43', 'name44', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ�� ���Ű� �����Ѱ�?', '����', '�Ұ���', '23', 's23', 'name45', 'name46', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ���� ���ΰ�?', '�׷���', '�ƴϴ�', '24', 's24', 'name47', 'name48', 'a2_b2');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 1', '��ο�ȭ', '������ȭ', '1', 's1', 'name1', 'name2', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 2', '��', '��', '2', 's2', 'name3', 'name4', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 3', '���', '�ѽ�', '3', 's3', 'name5', 'name6', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 4', '������', '������', '4', 's4', 'name7', 'name8', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 5', '��', '��', '5', 's5', 'name9', 'name10', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 6', '�纸�� ��', '������ ��', '6', 's6', 'name11', 'name12', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 7', '����', '�ܸ�', '7', 's7', 'name13', 'name14', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 8', '����', 'ĳ�־�', '8', 's8', 'name15', 'name16', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 9', 'û����', '�����', '9', 's9', 'name17', 'name18', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�������� 10', '��Ű', '����', '10', 's10', 'name19', 'name20', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ �� ���� ���볯 �� ���ٸ�?', '�ڹ��Ѵ�', '������ ����', '11', 's11', 'name21', 'name22', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('����µ� ���� �´ٸ�?', '�԰��ܴ�', '�׳��ܴ�', '12', 's12', 'name23', 'name24', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���� �ȴٰ� ������ �ֿ���', '������ ã���ش�', '�ڽ��� ������', '13', 's13', 'name25', 'name26', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�̻����� ��������', '�����Ѵ� ', '�׳ɰ���', '14', 's14', 'name27', 'name28', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȭ�� �� ����� ���ٸ�?', 'ȥ�� ���� ����', '�������� �ʴ´�', '15', 's15', 'name29', 'name30', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('����Ʈ ����� ���ٸ�?', '������', '������ �ʴ´�', '16', 's16', 'name31', 'name32', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�̼�ģ���� �ٶ��� �ǿ�� �ɷȴ�', '�¹ٶ��� �ɴ�', '�������', '17', 's17', 'name33', 'name34', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ �� ���Ű� �����Ѱ�?', '����', '�Ұ���', '18', 's18', 'name35', 'name36', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���ΰ� ������ �ٸ��ٸ�?', '���簡���Ѵ�', '�޶� �ȴ�', '19', 's19', 'name37', 'name38', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('���ϴ� �̼��� ������?', '����� ����', '�ݴ��� ����', '20', 's20', 'name39', 'name40', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('�����Ѵٸ� ���̴� �������?', '����ִ�', '�������', '21', 's21', 'name41', 'name42', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('��ȥ ȥ�νŰ� �Ұ��ΰ�?', '�Ѵ�', '���Ѵ�', '22', 's22', 'name43', 'name44', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('������ ������ҿ��� ��Ų���� �õ��Ѵٸ�?', '�Ѵ�', '�ź��Ѵ�', '23', 's23', 'name45', 'name46', 'a2_b3');
INSERT INTO "SCOTT"."QUESTION" (SEL_1, SEL_2, SEL_3, NUM, BIND, FORNAME1, FORNAME2, TYPE) VALUES ('����Ѵٸ� ���ڸ����� ���� �Ⱓ�� �Ⱓ�� �߿����� �ʴ�', '�߿��ϴ�', '�߿����� �ʴ�', '24', 's24', 'name47', 'name48', 'a2_b3');

  
  
  
  
  
  

  
