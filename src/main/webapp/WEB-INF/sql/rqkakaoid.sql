--------------------------------------------------------
--  颇老捞 积己凳 - 老夸老-5岿-17-2015   
--------------------------------------------------------
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
