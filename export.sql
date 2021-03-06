--------------------------------------------------------
--  File created - Monday-April-09-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table HOTELS
--------------------------------------------------------

  CREATE TABLE "IS420_1621_DULKABI1"."HOTELS" 
   (	"HOTEL_CODE" NUMBER(*,0), 
	"HOTEL_ADDR" VARCHAR2(30 BYTE), 
	"HOTEL_CITY" VARCHAR2(30 BYTE), 
	"HOTEL_STATE" VARCHAR2(20 BYTE), 
	"HOTEL_ZIP_CODE" VARCHAR2(5 BYTE), 
	"HOTEL_PHONE" VARCHAR2(12 BYTE), 
	"HOTEL_STATUS" VARCHAR2(30 BYTE) DEFAULT 'Open'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table H_CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "IS420_1621_DULKABI1"."H_CUSTOMERS" 
   (	"CUSTOMER_CODE" NUMBER(*,0), 
	"CUSTOMER_FNAME" VARCHAR2(30 BYTE), 
	"CUSTOMER_LNAME" VARCHAR2(30 BYTE), 
	"CUSTOMER_ADDR" VARCHAR2(100 BYTE), 
	"CUSTOMER_CITY" VARCHAR2(30 BYTE), 
	"CUSTOMER_STATE" VARCHAR2(20 BYTE), 
	"CUSTOMER_ZIP_CODE" VARCHAR2(5 BYTE), 
	"CUSTOMER_PHONE" VARCHAR2(12 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVATIONS
--------------------------------------------------------

  CREATE TABLE "IS420_1621_DULKABI1"."RESERVATIONS" 
   (	"RESERVATION_CODE" NUMBER(*,0), 
	"GUEST_NAME" VARCHAR2(60 BYTE), 
	"CHECK_IN_DATE" DATE, 
	"CHECK_OUT_DATE" DATE, 
	"RESERVATION_DATE" DATE, 
	"NO_OF_GUESTS" NUMBER(*,0), 
	"CUSTOMER_CODE" NUMBER(*,0), 
	"HOTEL_CODE" NUMBER(*,0), 
	"ROOM_CODE" NUMBER(*,0), 
	"RESERVATION_STAT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROOMS
--------------------------------------------------------

  CREATE TABLE "IS420_1621_DULKABI1"."ROOMS" 
   (	"ROOM_CODE" NUMBER(*,0), 
	"ROOM_TYPE_CODE" NUMBER(*,0), 
	"HOTEL_CODE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROOM_SERVICES
--------------------------------------------------------

  CREATE TABLE "IS420_1621_DULKABI1"."ROOM_SERVICES" 
   (	"SERVICE_CODE" NUMBER(*,0), 
	"SERVICE_DESC" VARCHAR2(50 BYTE), 
	"SERVICE_RATE" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROOM_TYPES
--------------------------------------------------------

  CREATE TABLE "IS420_1621_DULKABI1"."ROOM_TYPES" 
   (	"ROOM_TYPE_CODE" NUMBER(*,0), 
	"ROOM_DESC" VARCHAR2(50 BYTE), 
	"NO_OF_BEDS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SERVICE_PERFORMED
--------------------------------------------------------

  CREATE TABLE "IS420_1621_DULKABI1"."SERVICE_PERFORMED" 
   (	"SERVICE_P_CODE" NUMBER(*,0), 
	"SERVICE_CODE" NUMBER(*,0), 
	"RESERVATION_CODE" NUMBER(*,0), 
	"SERVICE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BILL
--------------------------------------------------------

  CREATE TABLE "IS420_1621_DULKABI1"."BILL" 
   (	"BILLING_CODE" NUMBER(*,0), 
	"ROOM_CHARGE" NUMBER, 
	"SERVICE_CHARGE" NUMBER, 
	"DISCOUNT" NUMBER, 
	"RESERVATION_CODE" NUMBER(*,0), 
	"SERVICE_P_CODE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into IS420_1621_DULKABI1.HOTELS
SET DEFINE OFF;
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1008,'100 pinca street','Jersey city','NJ','07030','203-181-8812','open');
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1009,'992 kanchan street','Jersey city','NJ','07087','203-251-8812','open');
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1010,'123 thames street','New York','NY','10002','105-321-8122','open');
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1001,'20 martha road','Nottingham','MD','21236','240-340-1811','Open');
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1002,'8140 Joppa Road','Nottingham','MD','21236','240-810-1121','Open');
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1003,'8121 wilkens Ave','Baltimore','MD','21228','310-340-0899','Open');
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1004,'20 marbuck way','Elkridge','MD','21075','443-181-0821','Open');
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1005,'201 gandhi road','Baltimore','MD','21228','340-340-1812','Open');
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1006,'8121 paca street','Reston','VA','20170','571-340-2811','Open');
Insert into IS420_1621_DULKABI1.HOTELS (HOTEL_CODE,HOTEL_ADDR,HOTEL_CITY,HOTEL_STATE,HOTEL_ZIP_CODE,HOTEL_PHONE,HOTEL_STATUS) values (1007,'100 sinca street','reston','VA','20170','703-181-8812','Open');
REM INSERTING into IS420_1621_DULKABI1.H_CUSTOMERS
SET DEFINE OFF;
Insert into IS420_1621_DULKABI1.H_CUSTOMERS (CUSTOMER_CODE,CUSTOMER_FNAME,CUSTOMER_LNAME,CUSTOMER_ADDR,CUSTOMER_CITY,CUSTOMER_STATE,CUSTOMER_ZIP_CODE,CUSTOMER_PHONE) values (2018000,'pratik','parajuli','20 cokey way','Cokeysville','MD','21030','231-092-0212');
REM INSERTING into IS420_1621_DULKABI1.RESERVATIONS
SET DEFINE OFF;
Insert into IS420_1621_DULKABI1.RESERVATIONS (RESERVATION_CODE,GUEST_NAME,CHECK_IN_DATE,CHECK_OUT_DATE,RESERVATION_DATE,NO_OF_GUESTS,CUSTOMER_CODE,HOTEL_CODE,ROOM_CODE,RESERVATION_STAT) values (100001,'prakriti Gurung',to_date('01-APR-18','DD-MON-RR'),to_date('02-APR-18','DD-MON-RR'),to_date('31-MAR-18','DD-MON-RR'),2,2018000,1001,101,'Booked');
Insert into IS420_1621_DULKABI1.RESERVATIONS (RESERVATION_CODE,GUEST_NAME,CHECK_IN_DATE,CHECK_OUT_DATE,RESERVATION_DATE,NO_OF_GUESTS,CUSTOMER_CODE,HOTEL_CODE,ROOM_CODE,RESERVATION_STAT) values (100002,'prakriti Gurung',to_date('01-APR-18','DD-MON-RR'),to_date('02-APR-18','DD-MON-RR'),to_date('31-MAR-18','DD-MON-RR'),2,2018000,1001,102,'Booked');
REM INSERTING into IS420_1621_DULKABI1.ROOMS
SET DEFINE OFF;
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (101,1,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (102,1,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (103,1,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (104,1,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (105,2,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (106,3,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (107,4,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (108,5,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (109,6,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (110,7,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (111,2,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1001);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (101,1,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (102,1,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (103,1,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (104,1,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (105,2,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (106,3,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (107,4,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (108,5,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (109,6,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (110,7,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (111,2,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1002);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (101,1,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (102,1,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (103,1,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (104,1,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (105,2,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (106,3,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (107,4,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (108,5,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (109,6,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (110,7,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (111,2,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1003);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (101,1,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (101,1,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (102,1,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (103,1,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (104,1,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (105,2,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (106,3,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (107,4,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (108,5,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (109,6,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (110,7,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (111,2,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1007);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (101,1,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (102,1,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (103,1,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (104,1,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (105,2,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (106,3,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (107,4,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (108,5,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (109,6,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (110,7,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (111,2,1006);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (102,1,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (103,1,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (104,1,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (105,2,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (106,3,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (107,4,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (108,5,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (109,6,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (110,7,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (111,2,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1005);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (101,1,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (102,1,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (103,1,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (104,1,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (105,2,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (106,3,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (107,4,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (108,5,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (109,6,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (110,7,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (111,2,1004);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (101,1,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (102,1,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (103,1,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (104,1,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (105,2,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (106,3,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (107,4,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (108,5,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (109,6,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (110,7,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (111,2,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1010);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1009);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (101,1,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (102,1,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (103,1,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (104,1,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (105,2,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (106,3,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (107,4,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (108,5,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (109,6,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (110,7,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (111,2,1008);
Insert into IS420_1621_DULKABI1.ROOMS (ROOM_CODE,ROOM_TYPE_CODE,HOTEL_CODE) values (112,3,1008);
REM INSERTING into IS420_1621_DULKABI1.ROOM_SERVICES
SET DEFINE OFF;
Insert into IS420_1621_DULKABI1.ROOM_SERVICES (SERVICE_CODE,SERVICE_DESC,SERVICE_RATE) values (100,'restaurant services per meal',20);
Insert into IS420_1621_DULKABI1.ROOM_SERVICES (SERVICE_CODE,SERVICE_DESC,SERVICE_RATE) values (200,'Movie Service per view',5);
Insert into IS420_1621_DULKABI1.ROOM_SERVICES (SERVICE_CODE,SERVICE_DESC,SERVICE_RATE) values (300,'Laundry services per time',10);
REM INSERTING into IS420_1621_DULKABI1.ROOM_TYPES
SET DEFINE OFF;
Insert into IS420_1621_DULKABI1.ROOM_TYPES (ROOM_TYPE_CODE,ROOM_DESC,NO_OF_BEDS) values (1,'single King',1);
Insert into IS420_1621_DULKABI1.ROOM_TYPES (ROOM_TYPE_CODE,ROOM_DESC,NO_OF_BEDS) values (2,'double King',2);
Insert into IS420_1621_DULKABI1.ROOM_TYPES (ROOM_TYPE_CODE,ROOM_DESC,NO_OF_BEDS) values (3,'Single Queen',1);
Insert into IS420_1621_DULKABI1.ROOM_TYPES (ROOM_TYPE_CODE,ROOM_DESC,NO_OF_BEDS) values (4,'double Queen',2);
Insert into IS420_1621_DULKABI1.ROOM_TYPES (ROOM_TYPE_CODE,ROOM_DESC,NO_OF_BEDS) values (5,'Single Suite',1);
Insert into IS420_1621_DULKABI1.ROOM_TYPES (ROOM_TYPE_CODE,ROOM_DESC,NO_OF_BEDS) values (6,'double suite',2);
Insert into IS420_1621_DULKABI1.ROOM_TYPES (ROOM_TYPE_CODE,ROOM_DESC,NO_OF_BEDS) values (7,'Conference Room',0);
REM INSERTING into IS420_1621_DULKABI1.SERVICE_PERFORMED
SET DEFINE OFF;
Insert into IS420_1621_DULKABI1.SERVICE_PERFORMED (SERVICE_P_CODE,SERVICE_CODE,RESERVATION_CODE,SERVICE_DATE) values (50001,100,100001,to_date('31-MAR-18','DD-MON-RR'));
Insert into IS420_1621_DULKABI1.SERVICE_PERFORMED (SERVICE_P_CODE,SERVICE_CODE,RESERVATION_CODE,SERVICE_DATE) values (50003,300,100001,to_date('31-MAR-18','DD-MON-RR'));
Insert into IS420_1621_DULKABI1.SERVICE_PERFORMED (SERVICE_P_CODE,SERVICE_CODE,RESERVATION_CODE,SERVICE_DATE) values (50002,200,100001,to_date('31-MAR-18','DD-MON-RR'));
REM INSERTING into IS420_1621_DULKABI1.BILL
SET DEFINE OFF;
