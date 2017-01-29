--------------------------------------------------------
--  DDL for Table COUNTRY
--------------------------------------------------------

  CREATE TABLE "COUNTRY" 
   (	"COUNTRY_ID" NUMBER(20,0), 
      "COUNTRY_CODE" VARCHAR2(255 BYTE), 
      "COUNTRY_NAME" VARCHAR2(255 BYTE)
   ) ;
Insert into COUNTRY (COUNTRY_ID,COUNTRY_CODE,COUNTRY_NAME) values (1,'IND','INDIA');
Insert into COUNTRY (COUNTRY_ID,COUNTRY_CODE,COUNTRY_NAME) values (2,'USA','AMERICA');
Insert into COUNTRY (COUNTRY_ID,COUNTRY_CODE,COUNTRY_NAME) values (3,'PAK','PAKISTAN');

--------------------------------------------------------
--  DDL for Index COUNTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COUNTRY_PK" ON "COUNTRY" ("COUNTRY_ID");
  
--------------------------------------------------------
--  Constraints for Table COUNTRY
--------------------------------------------------------

  ALTER TABLE COUNTRY ADD CONSTRAINT "COUNTRY_PK" PRIMARY KEY (COUNTRY_ID);
  ALTER TABLE COUNTRY MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  