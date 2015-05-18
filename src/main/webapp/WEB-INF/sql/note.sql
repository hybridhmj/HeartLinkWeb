--------------------------------------------------------
--  파일이 생성됨 - 월요일-5월-18-2015   
--------------------------------------------------------
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
