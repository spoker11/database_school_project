--------------------------------------------------------
--  File created - Nedìle-prosince-19-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ATRAKCE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DBCHLADJA1"."ATRAKCE_SEQ"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence KONTOID
--------------------------------------------------------

   CREATE SEQUENCE  "DBCHLADJA1"."KONTOID"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ZAKAZNIKID
--------------------------------------------------------

   CREATE SEQUENCE  "DBCHLADJA1"."ZAKAZNIKID"  MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table Adresa
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."Adresa" 
   (	"Cp" VARCHAR2(8 BYTE), 
	"Obec" VARCHAR2(32 BYTE), 
	"Ulice" VARCHAR2(32 BYTE), 
	"AdresaID" NUMBER(8,0), 
	"PSC" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Atrakce
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."Atrakce" 
   (	"Cena" NUMBER(8,0), 
	"Maximalnipocetzakazniku" NUMBER(3,0), 
	"Oteviracidoba" VARCHAR2(16 BYTE), 
	"Oznaèeni" VARCHAR2(32 BYTE), 
	"Popis" VARCHAR2(64 BYTE), 
	"AtrakceID" NUMBER, 
	"KategorieatrakceID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Cipovakarta
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."Cipovakarta" 
   (	"Blokace" CHAR(1 BYTE), 
	"Platnostkarty" DATE, 
	"CipovakartaID" NUMBER, 
	"KontoID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Kategorieatrakce
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."Kategorieatrakce" 
   (	"Nazev" VARCHAR2(16 BYTE), 
	"Popis" VARCHAR2(16 BYTE), 
	"Vhodnyveknavstevniku" NUMBER(3,0), 
	"KategorieatrakceID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Konto
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."Konto" 
   (	"Datumzalozeni" DATE, 
	"Platnostkonta" DATE, 
	"Vlozenahotovost" NUMBER(6,0), 
	"KontoID" NUMBER, 
	"ZakaznikID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Ostatnisluzby
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."Ostatnisluzby" 
   (	"Cena" NUMBER(6,0), 
	"Oteviracidoba" VARCHAR2(16 BYTE), 
	"Oznaceni" VARCHAR2(32 BYTE), 
	"Popis" VARCHAR2(64 BYTE), 
	"OstatnisluzbyID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table platba atrakce
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."platba atrakce" 
   (	"AtrakceID" NUMBER, 
	"CipovakartaID" NUMBER, 
	"DATUM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table platba_ostani
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."platba_ostani" 
   (	"OstatnisluzbyID" NUMBER, 
	"CipovakartaID" NUMBER, 
	"DATUM" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table pracuje
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."pracuje" 
   (	"AtrakceID" NUMBER, 
	"ZamestnanecID" NUMBER, 
	"DAT_OD" DATE, 
	"DAT_DO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Pristupovaprava
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."Pristupovaprava" 
   (	"DatumDo" DATE, 
	"DatumOd" DATE, 
	"Seznamatrakci" NUMBER(3,0), 
	"PristupovapravaID" NUMBER, 
	"ZamestnanecID" NUMBER, 
	"AtrakceID" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Zakaznik
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."Zakaznik" 
   (	"Jmeno" VARCHAR2(16 BYTE), 
	"Mail" VARCHAR2(32 BYTE), 
	"Prijmeni" VARCHAR2(32 BYTE), 
	"Telefon" VARCHAR2(16 BYTE), 
	"ZakaznikID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Zamestnanec
--------------------------------------------------------

  CREATE TABLE "DBCHLADJA1"."Zamestnanec" 
   (	"Email" VARCHAR2(32 BYTE), 
	"Jmeno" VARCHAR2(16 BYTE), 
	"Prijmeni" VARCHAR2(32 BYTE), 
	"Primynadzrizeny" NUMBER, 
	"Rodnecislo" CHAR(10 BYTE), 
	"Telefon" VARCHAR2(16 BYTE), 
	"ZamestnanecID" NUMBER, 
	"CipovakartaID" NUMBER, 
	"AdresaID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View AKTUALNI_PRISTUPY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "DBCHLADJA1"."AKTUALNI_PRISTUPY" ("Prijmeni", "Popis", "DAT_OD", "DAT_DO") AS 
  SELECT z."Prijmeni",a."Popis",p.dat_od,p.dat_do
    
FROM 
  "Atrakce" a,
  "pracuje" p,
  "Zamestnanec" z
  
WHERE
   a."AtrakceID" = p."AtrakceID" and
  p."ZamestnanecID" = z."ZamestnanecID" WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View ATRAKCE_PLATBY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "DBCHLADJA1"."ATRAKCE_PLATBY" ("Popis", "Kategorie", "KategorieID", "Datum", "Cena") AS 
  SELECT a."Popis", ka."Nazev", ka."KategorieatrakceID", pa."DATUM", a."Cena" 
    
FROM 
  "Atrakce" a,
  "Kategorieatrakce" ka,
  "platba atrakce" pa
  
WHERE
   a."KategorieatrakceID" = ka."KategorieatrakceID" and
   a."AtrakceID" = pa."AtrakceID" 
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View CELKOVE_TRZBY
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "DBCHLADJA1"."CELKOVE_TRZBY" ("Kategorie", "Trzby") AS 
  SELECT ka."Nazev", SUM( ap."Cena") 
    
FROM 
  
  "Kategorieatrakce" ka
  
LEFT OUTER JOIN

  "ATRAKCE_PLATBY" ap

ON
   ka."KategorieatrakceID" = ap."KategorieID" 
   
   
GROUP BY ka."Nazev"

WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View VLASTNI_POHLED
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "DBCHLADJA1"."VLASTNI_POHLED" ("Popis", "Kategorie", "Datum", "Cena", "Prijmeni") AS 
  SELECT a."Popis", ka."Nazev", pa."DATUM", a."Cena", za."Prijmeni" 
    
FROM 
  "Atrakce" a,
  "Kategorieatrakce" ka,
  "platba atrakce" pa,
  "Cipovakarta" ck,
  "Konto" ko,
  "Zakaznik" za
  
WHERE
   a."KategorieatrakceID" = ka."KategorieatrakceID" and
   a."AtrakceID" = pa."AtrakceID" and
   pa."CipovakartaID" = ck."CipovakartaID" and
   ck."KontoID" = ko."KontoID" and
   ko."ZakaznikID" = za."ZakaznikID"
   
WITH READ ONLY
;
REM INSERTING into DBCHLADJA1."Adresa"
SET DEFINE OFF;
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('12','Broumov','Nádražní','6','21254');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('289','Pardubice','Porevoluèní','10','78065');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('963','Plzeò','Pivní','21','45602');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('29','Znojmo','Okurková','24','44405');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('2','Olomouc','Tvarùžková','22','75608');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('7','Èernošice','Modøanksého','23','53209');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('32','Šumperk','Øíèní','25','61607');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('32','Hrádek','Velká','7','98706');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('88','Øíèany','Palackého','8','36508');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('21','Prostìjov','Alexandra','9','33603');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('20','Praha','V peklovcích','9001','10030');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('3','Plzeò','Na rùžku','9002','63001');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('18','Kralupy','U Hospody','9003','80706');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('16','Nelahozeves','Na mostì','9004','87901');
Insert into DBCHLADJA1."Adresa" ("Cp","Obec","Ulice","AdresaID",PSC) values ('98','Brdy','Pøed domem','9005','23570');
REM INSERTING into DBCHLADJA1."Atrakce"
SET DEFINE OFF;
Insert into DBCHLADJA1."Atrakce" ("Cena","Maximalnipocetzakazniku","Oteviracidoba","Oznaèeni","Popis","AtrakceID","KategorieatrakceID") values ('50','30','8:00-12:00','A1','Houpaèky','1','1');
Insert into DBCHLADJA1."Atrakce" ("Cena","Maximalnipocetzakazniku","Oteviracidoba","Oznaèeni","Popis","AtrakceID","KategorieatrakceID") values ('80','50','10:00-16:00','A2','Centrifuga','2','2');
Insert into DBCHLADJA1."Atrakce" ("Cena","Maximalnipocetzakazniku","Oteviracidoba","Oznaèeni","Popis","AtrakceID","KategorieatrakceID") values ('100','25','9:00-12:00','A3','Autíèka','3','2');
Insert into DBCHLADJA1."Atrakce" ("Cena","Maximalnipocetzakazniku","Oteviracidoba","Oznaèeni","Popis","AtrakceID","KategorieatrakceID") values ('90','4','17:00-21:00','A4','Vzdchovka','4','3');
Insert into DBCHLADJA1."Atrakce" ("Cena","Maximalnipocetzakazniku","Oteviracidoba","Oznaèeni","Popis","AtrakceID","KategorieatrakceID") values ('60','2','15:00-17:00','A5','Pøetahovaná','5','4');
Insert into DBCHLADJA1."Atrakce" ("Cena","Maximalnipocetzakazniku","Oteviracidoba","Oznaèeni","Popis","AtrakceID","KategorieatrakceID") values ('30','2','18:00-21:00','A6','Páka','6','4');
REM INSERTING into DBCHLADJA1."Cipovakarta"
SET DEFINE OFF;
Insert into DBCHLADJA1."Cipovakarta" ("Blokace","Platnostkarty","CipovakartaID","KontoID") values ('0',to_date('12.01.24','DD.MM.RR'),'1','6');
Insert into DBCHLADJA1."Cipovakarta" ("Blokace","Platnostkarty","CipovakartaID","KontoID") values ('1',to_date('10.10.21','DD.MM.RR'),'2','6');
Insert into DBCHLADJA1."Cipovakarta" ("Blokace","Platnostkarty","CipovakartaID","KontoID") values ('0',to_date('15.08.23','DD.MM.RR'),'3','21');
Insert into DBCHLADJA1."Cipovakarta" ("Blokace","Platnostkarty","CipovakartaID","KontoID") values ('0',to_date('11.09.25','DD.MM.RR'),'4','24');
Insert into DBCHLADJA1."Cipovakarta" ("Blokace","Platnostkarty","CipovakartaID","KontoID") values ('0',to_date('09.08.25','DD.MM.RR'),'5','23');
REM INSERTING into DBCHLADJA1."Kategorieatrakce"
SET DEFINE OFF;
Insert into DBCHLADJA1."Kategorieatrakce" ("Nazev","Popis","Vhodnyveknavstevniku","KategorieatrakceID") values ('Pro seniory','Pro seniory','60','5');
Insert into DBCHLADJA1."Kategorieatrakce" ("Nazev","Popis","Vhodnyveknavstevniku","KategorieatrakceID") values ('Pro dìti','Pro dìti','10','1');
Insert into DBCHLADJA1."Kategorieatrakce" ("Nazev","Popis","Vhodnyveknavstevniku","KategorieatrakceID") values ('Pro dorost','Dìti do 16','16','2');
Insert into DBCHLADJA1."Kategorieatrakce" ("Nazev","Popis","Vhodnyveknavstevniku","KategorieatrakceID") values ('Pro dospìlé','Od 18 let','18','3');
Insert into DBCHLADJA1."Kategorieatrakce" ("Nazev","Popis","Vhodnyveknavstevniku","KategorieatrakceID") values ('Pro páry','Pro páry','0','4');
REM INSERTING into DBCHLADJA1."Konto"
SET DEFINE OFF;
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('05.12.21','DD.MM.RR'),to_date('05.12.22','DD.MM.RR'),'1000','6','6');
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('05.12.21','DD.MM.RR'),to_date('05.12.22','DD.MM.RR'),'830','10','10');
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('11.12.21','DD.MM.RR'),to_date('11.12.22','DD.MM.RR'),'250','21','21');
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('11.12.21','DD.MM.RR'),to_date('11.12.22','DD.MM.RR'),'480','24','24');
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('11.12.21','DD.MM.RR'),to_date('11.12.22','DD.MM.RR'),'90','22','22');
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('11.12.21','DD.MM.RR'),to_date('11.12.22','DD.MM.RR'),'165','23','23');
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('11.12.21','DD.MM.RR'),to_date('11.12.22','DD.MM.RR'),'180','25','25');
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('05.12.21','DD.MM.RR'),to_date('05.12.22','DD.MM.RR'),'1500','7','7');
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('05.12.21','DD.MM.RR'),to_date('05.12.22','DD.MM.RR'),'666','8','8');
Insert into DBCHLADJA1."Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") values (to_date('05.12.21','DD.MM.RR'),to_date('05.12.22','DD.MM.RR'),'250','9','9');
REM INSERTING into DBCHLADJA1."Ostatnisluzby"
SET DEFINE OFF;
Insert into DBCHLADJA1."Ostatnisluzby" ("Cena","Oteviracidoba","Oznaceni","Popis","OstatnisluzbyID") values ('100','12:00-18:00','Popcorn','sladký/slaný','1');
Insert into DBCHLADJA1."Ostatnisluzby" ("Cena","Oteviracidoba","Oznaceni","Popis","OstatnisluzbyID") values ('30','15:00-20:00','Cukrová vata','Pro dìti i dospìlé','2');
Insert into DBCHLADJA1."Ostatnisluzby" ("Cena","Oteviracidoba","Oznaceni","Popis","OstatnisluzbyID") values ('20','17:00-19:30','Klobásy','Plnìné, pálivé','3');
Insert into DBCHLADJA1."Ostatnisluzby" ("Cena","Oteviracidoba","Oznaceni","Popis","OstatnisluzbyID") values ('35','19:00-21:00','Svaøák','Z èerveného vína','4');
Insert into DBCHLADJA1."Ostatnisluzby" ("Cena","Oteviracidoba","Oznaceni","Popis","OstatnisluzbyID") values ('45','16:00-20:00','Pivo','Polièka, Plzeò, Radegast','5');
REM INSERTING into DBCHLADJA1."platba atrakce"
SET DEFINE OFF;
Insert into DBCHLADJA1."platba atrakce" ("AtrakceID","CipovakartaID",DATUM) values ('1','3',to_date('08.07.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba atrakce" ("AtrakceID","CipovakartaID",DATUM) values ('3','3',to_date('08.07.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba atrakce" ("AtrakceID","CipovakartaID",DATUM) values ('5','3',to_date('08.07.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba atrakce" ("AtrakceID","CipovakartaID",DATUM) values ('2','2',to_date('20.03.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba atrakce" ("AtrakceID","CipovakartaID",DATUM) values ('4','2',to_date('20.03.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba atrakce" ("AtrakceID","CipovakartaID",DATUM) values ('3','1',to_date('04.05.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba atrakce" ("AtrakceID","CipovakartaID",DATUM) values ('6','1',to_date('04.05.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba atrakce" ("AtrakceID","CipovakartaID",DATUM) values ('4','4',to_date('20.10.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba atrakce" ("AtrakceID","CipovakartaID",DATUM) values ('2','5',to_date('08.04.21','DD.MM.RR'));
REM INSERTING into DBCHLADJA1."platba_ostani"
SET DEFINE OFF;
Insert into DBCHLADJA1."platba_ostani" ("OstatnisluzbyID","CipovakartaID",DATUM) values ('1','2',to_date('13.07.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba_ostani" ("OstatnisluzbyID","CipovakartaID",DATUM) values ('2','2',to_date('13.07.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba_ostani" ("OstatnisluzbyID","CipovakartaID",DATUM) values ('4','1',to_date('09.06.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba_ostani" ("OstatnisluzbyID","CipovakartaID",DATUM) values ('4','3',to_date('26.08.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba_ostani" ("OstatnisluzbyID","CipovakartaID",DATUM) values ('3','5',to_date('10.02.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba_ostani" ("OstatnisluzbyID","CipovakartaID",DATUM) values ('5','5',to_date('10.02.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba_ostani" ("OstatnisluzbyID","CipovakartaID",DATUM) values ('1','4',to_date('16.11.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba_ostani" ("OstatnisluzbyID","CipovakartaID",DATUM) values ('5','2',to_date('01.12.21','DD.MM.RR'));
Insert into DBCHLADJA1."platba_ostani" ("OstatnisluzbyID","CipovakartaID",DATUM) values ('2','1',to_date('14.07.21','DD.MM.RR'));
REM INSERTING into DBCHLADJA1."pracuje"
SET DEFINE OFF;
Insert into DBCHLADJA1."pracuje" ("AtrakceID","ZamestnanecID",DAT_OD,DAT_DO) values ('1','1',to_date('15.07.21','DD.MM.RR'),null);
Insert into DBCHLADJA1."pracuje" ("AtrakceID","ZamestnanecID",DAT_OD,DAT_DO) values ('2','3',to_date('15.05.21','DD.MM.RR'),to_date('15.06.21','DD.MM.RR'));
Insert into DBCHLADJA1."pracuje" ("AtrakceID","ZamestnanecID",DAT_OD,DAT_DO) values ('2','3',to_date('12.12.21','DD.MM.RR'),null);
Insert into DBCHLADJA1."pracuje" ("AtrakceID","ZamestnanecID",DAT_OD,DAT_DO) values ('3','4',to_date('03.03.21','DD.MM.RR'),null);
Insert into DBCHLADJA1."pracuje" ("AtrakceID","ZamestnanecID",DAT_OD,DAT_DO) values ('4','5',to_date('04.08.21','DD.MM.RR'),to_date('21.12.21','DD.MM.RR'));
Insert into DBCHLADJA1."pracuje" ("AtrakceID","ZamestnanecID",DAT_OD,DAT_DO) values ('3','5',to_date('06.01.21','DD.MM.RR'),to_date('12.02.21','DD.MM.RR'));
Insert into DBCHLADJA1."pracuje" ("AtrakceID","ZamestnanecID",DAT_OD,DAT_DO) values ('5','1',to_date('16.07.21','DD.MM.RR'),null);
Insert into DBCHLADJA1."pracuje" ("AtrakceID","ZamestnanecID",DAT_OD,DAT_DO) values ('6','4',to_date('06.04.21','DD.MM.RR'),to_date('15.06.21','DD.MM.RR'));
Insert into DBCHLADJA1."pracuje" ("AtrakceID","ZamestnanecID",DAT_OD,DAT_DO) values ('6','5',to_date('20.05.21','DD.MM.RR'),null);
REM INSERTING into DBCHLADJA1."Pristupovaprava"
SET DEFINE OFF;
REM INSERTING into DBCHLADJA1."Zakaznik"
SET DEFINE OFF;
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Jan','novak@seznam.cz','Novák','601201101','6');
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Tomáš','tosp.pre@centrum.cz','Špatný','604258147','10');
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Stanislav','standa.j@gmail.cz','Jedlièka','666888921','21');
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Lukáš','celbic5@gmail.com','Celba','732231654','24');
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Dana','dame@centrum.cz','Medøická','444555666','22');
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Václav','horcak@seznam.cz','Hoøešínský','365142897','23');
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Nikola','nija2@seznam.cz','Jaromírová','714145298','25');
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Jaroslav','hrjr@centrum.cz','Hrdlièka','765897725','7');
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Marie','marumaru@google.com','Tìžká','606256026','8');
Insert into DBCHLADJA1."Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") values ('Veronika','Lory@seznam.cz','Lorenzová','799555369','9');
REM INSERTING into DBCHLADJA1."Zamestnanec"
SET DEFINE OFF;
Insert into DBCHLADJA1."Zamestnanec" ("Email","Jmeno","Prijmeni","Primynadzrizeny","Rodnecislo","Telefon","ZamestnanecID","CipovakartaID","AdresaID") values ('adam@seznam.cz','Jan','Adamec','2','5510106958','606123456','1','1','9001');
Insert into DBCHLADJA1."Zamestnanec" ("Email","Jmeno","Prijmeni","Primynadzrizeny","Rodnecislo","Telefon","ZamestnanecID","CipovakartaID","AdresaID") values ('pepena@centrum.cz
','Pepek','Námoøník',null,'6850125753','654589754','2','2','9002');
Insert into DBCHLADJA1."Zamestnanec" ("Email","Jmeno","Prijmeni","Primynadzrizeny","Rodnecislo","Telefon","ZamestnanecID","CipovakartaID","AdresaID") values ('tervo@gmail.com','Tereza','Vojtìchová','2','2589631470','789654321','3','3','9003');
Insert into DBCHLADJA1."Zamestnanec" ("Email","Jmeno","Prijmeni","Primynadzrizeny","Rodnecislo","Telefon","ZamestnanecID","CipovakartaID","AdresaID") values ('ztrama@seznam.cz','Marek','Ztracený','2','3879645213','729648785','4','4','9004');
Insert into DBCHLADJA1."Zamestnanec" ("Email","Jmeno","Prijmeni","Primynadzrizeny","Rodnecislo","Telefon","ZamestnanecID","CipovakartaID","AdresaID") values ('nalez@centrum.cz','Veronika','Nalezená','2','3217852140','678254147','5','5','9005');
--------------------------------------------------------
--  DDL for Index PK_Adresa
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBCHLADJA1"."PK_Adresa" ON "DBCHLADJA1"."Adresa" ("AdresaID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_JMENO_ZAM
--------------------------------------------------------

  CREATE INDEX "DBCHLADJA1"."IDX_JMENO_ZAM" ON "DBCHLADJA1"."Zamestnanec" ("Jmeno") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Atrakce
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBCHLADJA1"."PK_Atrakce" ON "DBCHLADJA1"."Atrakce" ("AtrakceID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_OSTA_SLUZ_OTEV_DOBA
--------------------------------------------------------

  CREATE INDEX "DBCHLADJA1"."IDX_OSTA_SLUZ_OTEV_DOBA" ON "DBCHLADJA1"."Ostatnisluzby" ("Oteviracidoba") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Zamestnanec
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBCHLADJA1"."PK_Zamestnanec" ON "DBCHLADJA1"."Zamestnanec" ("ZamestnanecID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Ostatnisluzby
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBCHLADJA1"."PK_Ostatnisluzby" ON "DBCHLADJA1"."Ostatnisluzby" ("OstatnisluzbyID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_ARAKCE_CENA
--------------------------------------------------------

  CREATE INDEX "DBCHLADJA1"."IDX_ARAKCE_CENA" ON "DBCHLADJA1"."Atrakce" ("Cena") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Cipovakarta
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBCHLADJA1"."PK_Cipovakarta" ON "DBCHLADJA1"."Cipovakarta" ("CipovakartaID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_JMENO_ZAKA
--------------------------------------------------------

  CREATE INDEX "DBCHLADJA1"."IDX_JMENO_ZAKA" ON "DBCHLADJA1"."Zakaznik" ("Jmeno") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_ATRAKCE_OZNACENI
--------------------------------------------------------

  CREATE INDEX "DBCHLADJA1"."IDX_ATRAKCE_OZNACENI" ON "DBCHLADJA1"."Atrakce" ("Oznaèeni") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Konto
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBCHLADJA1"."PK_Konto" ON "DBCHLADJA1"."Konto" ("KontoID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_KONTO_PLATNOST
--------------------------------------------------------

  CREATE INDEX "DBCHLADJA1"."IDX_KONTO_PLATNOST" ON "DBCHLADJA1"."Konto" ("Platnostkonta") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Pristupovaprava
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBCHLADJA1"."PK_Pristupovaprava" ON "DBCHLADJA1"."Pristupovaprava" ("PristupovapravaID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_HOTOVOST_VLOZENA
--------------------------------------------------------

  CREATE INDEX "DBCHLADJA1"."IDX_HOTOVOST_VLOZENA" ON "DBCHLADJA1"."Konto" ("Vlozenahotovost") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Kategorieatrakce
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBCHLADJA1"."PK_Kategorieatrakce" ON "DBCHLADJA1"."Kategorieatrakce" ("KategorieatrakceID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_Zakaznik
--------------------------------------------------------

  CREATE UNIQUE INDEX "DBCHLADJA1"."PK_Zakaznik" ON "DBCHLADJA1"."Zakaznik" ("ZakaznikID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure REGISTRACE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DBCHLADJA1"."REGISTRACE" (
    z_jmeno           IN VARCHAR2,    
    z_prijmeni        IN VARCHAR2,
    z_mail            IN VARCHAR2,
    z_telefon         IN VARCHAR2,
    a_cp              IN VARCHAR2,
    a_obec            IN VARCHAR2,
    a_psc             IN VARCHAR2,
    a_ulice           IN VARCHAR2,
    k_vlozenahotovost IN NUMBER
) 
as  
KID NUMBER;
ZID NUMBER;

BEGIN
 
    SELECT KONTOID.NEXTVAL INTO kid FROM dual; 
    SELECT ZAKAZNIKID.NEXTVAL INTO zid FROM dual;

 
   INSERT INTO "Zakaznik" ("Jmeno","Mail","Prijmeni","Telefon","ZakaznikID") VALUES (z_jmeno, z_mail, z_prijmeni, z_telefon, zid);

   INSERT INTO "Adresa" ("Cp","Obec","Ulice","AdresaID",psc) VALUES ( a_cp, a_obec, a_ulice, ZID, a_psc);
    
   INSERT INTO "Konto" ("Datumzalozeni","Platnostkonta","Vlozenahotovost","KontoID","ZakaznikID") VALUES ( sysdate,add_months(to_date(sysdate), 12), k_vlozenahotovost, KID, ZID );

END registrace;

/
--------------------------------------------------------
--  Constraints for Table Kategorieatrakce
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Kategorieatrakce" MODIFY ("KategorieatrakceID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Kategorieatrakce" MODIFY ("Nazev" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Kategorieatrakce" ADD CONSTRAINT "PK_Kategorieatrakce" PRIMARY KEY ("KategorieatrakceID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Zamestnanec
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Zamestnanec" MODIFY ("AdresaID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zamestnanec" MODIFY ("CipovakartaID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zamestnanec" MODIFY ("ZamestnanecID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zamestnanec" MODIFY ("Telefon" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zamestnanec" MODIFY ("Rodnecislo" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zamestnanec" MODIFY ("Prijmeni" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zamestnanec" MODIFY ("Jmeno" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zamestnanec" ADD CONSTRAINT "PK_Zamestnanec" PRIMARY KEY ("ZamestnanecID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table platba atrakce
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."platba atrakce" MODIFY ("DATUM" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."platba atrakce" MODIFY ("CipovakartaID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."platba atrakce" MODIFY ("AtrakceID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table pracuje
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."pracuje" MODIFY ("ZamestnanecID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."pracuje" MODIFY ("AtrakceID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Konto
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Konto" MODIFY ("ZakaznikID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Konto" MODIFY ("KontoID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Konto" MODIFY ("Vlozenahotovost" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Konto" MODIFY ("Platnostkonta" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Konto" MODIFY ("Datumzalozeni" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Konto" ADD CONSTRAINT "PK_Konto" PRIMARY KEY ("KontoID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table platba_ostani
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."platba_ostani" MODIFY ("DATUM" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."platba_ostani" MODIFY ("CipovakartaID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."platba_ostani" MODIFY ("OstatnisluzbyID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Pristupovaprava
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Pristupovaprava" MODIFY ("AtrakceID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Pristupovaprava" MODIFY ("ZamestnanecID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Pristupovaprava" MODIFY ("PristupovapravaID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Pristupovaprava" MODIFY ("Seznamatrakci" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Pristupovaprava" MODIFY ("DatumOd" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Pristupovaprava" MODIFY ("DatumDo" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Pristupovaprava" ADD CONSTRAINT "PK_Pristupovaprava" PRIMARY KEY ("PristupovapravaID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Adresa
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Adresa" MODIFY ("AdresaID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Adresa" ADD CONSTRAINT "PK_Adresa" PRIMARY KEY ("AdresaID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Cipovakarta
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Cipovakarta" MODIFY ("KontoID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Cipovakarta" MODIFY ("CipovakartaID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Cipovakarta" MODIFY ("Blokace" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Cipovakarta" ADD CONSTRAINT "PK_Cipovakarta" PRIMARY KEY ("CipovakartaID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Ostatnisluzby
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Ostatnisluzby" MODIFY ("OstatnisluzbyID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Ostatnisluzby" MODIFY ("Oznaceni" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Ostatnisluzby" MODIFY ("Oteviracidoba" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Ostatnisluzby" MODIFY ("Cena" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Ostatnisluzby" ADD CONSTRAINT "PK_Ostatnisluzby" PRIMARY KEY ("OstatnisluzbyID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Zakaznik
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Zakaznik" MODIFY ("ZakaznikID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zakaznik" MODIFY ("Telefon" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zakaznik" MODIFY ("Prijmeni" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zakaznik" MODIFY ("Mail" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zakaznik" MODIFY ("Jmeno" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Zakaznik" ADD CONSTRAINT "PK_Zakaznik" PRIMARY KEY ("ZakaznikID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Atrakce
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Atrakce" MODIFY ("KategorieatrakceID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Atrakce" MODIFY ("AtrakceID" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Atrakce" MODIFY ("Maximalnipocetzakazniku" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Atrakce" MODIFY ("Cena" NOT NULL ENABLE);
  ALTER TABLE "DBCHLADJA1"."Atrakce" ADD CONSTRAINT "PK_Atrakce" PRIMARY KEY ("AtrakceID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Atrakce
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Atrakce" ADD CONSTRAINT "FK_Atrakce_Kategorieatrakce" FOREIGN KEY ("KategorieatrakceID")
	  REFERENCES "DBCHLADJA1"."Kategorieatrakce" ("KategorieatrakceID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Cipovakarta
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Cipovakarta" ADD CONSTRAINT "FK_CipovaKarta_informace" FOREIGN KEY ("KontoID")
	  REFERENCES "DBCHLADJA1"."Konto" ("KontoID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Konto
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Konto" ADD CONSTRAINT "FK_Konto_uložení penìz" FOREIGN KEY ("ZakaznikID")
	  REFERENCES "DBCHLADJA1"."Zakaznik" ("ZakaznikID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table platba atrakce
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."platba atrakce" ADD CONSTRAINT "FK_platí_Atrakce" FOREIGN KEY ("AtrakceID")
	  REFERENCES "DBCHLADJA1"."Atrakce" ("AtrakceID") ENABLE;
  ALTER TABLE "DBCHLADJA1"."platba atrakce" ADD CONSTRAINT "FK_platí_CipovaKarta" FOREIGN KEY ("CipovakartaID")
	  REFERENCES "DBCHLADJA1"."Cipovakarta" ("CipovakartaID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table platba_ostani
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."platba_ostani" ADD CONSTRAINT "FK_platba_CipovaKarta" FOREIGN KEY ("CipovakartaID")
	  REFERENCES "DBCHLADJA1"."Cipovakarta" ("CipovakartaID") ENABLE;
  ALTER TABLE "DBCHLADJA1"."platba_ostani" ADD CONSTRAINT "FK_platí_OstatniSluzby" FOREIGN KEY ("OstatnisluzbyID")
	  REFERENCES "DBCHLADJA1"."Ostatnisluzby" ("OstatnisluzbyID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table pracuje
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."pracuje" ADD CONSTRAINT "FK_pracuje_Atrakce" FOREIGN KEY ("AtrakceID")
	  REFERENCES "DBCHLADJA1"."Atrakce" ("AtrakceID") ENABLE;
  ALTER TABLE "DBCHLADJA1"."pracuje" ADD CONSTRAINT "FK_pracuje_Zamestnanec" FOREIGN KEY ("ZamestnanecID")
	  REFERENCES "DBCHLADJA1"."Zamestnanec" ("ZamestnanecID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Pristupovaprava
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Pristupovaprava" ADD CONSTRAINT "FK_PristupovaPrava_Atrakce" FOREIGN KEY ("AtrakceID")
	  REFERENCES "DBCHLADJA1"."Atrakce" ("AtrakceID") ENABLE;
  ALTER TABLE "DBCHLADJA1"."Pristupovaprava" ADD CONSTRAINT "FK_PristupovaPrava_Zamestnanec" FOREIGN KEY ("ZamestnanecID")
	  REFERENCES "DBCHLADJA1"."Zamestnanec" ("ZamestnanecID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table Zamestnanec
--------------------------------------------------------

  ALTER TABLE "DBCHLADJA1"."Zamestnanec" ADD CONSTRAINT "FK_ADRESAID" FOREIGN KEY ("AdresaID")
	  REFERENCES "DBCHLADJA1"."Adresa" ("AdresaID") ENABLE;
  ALTER TABLE "DBCHLADJA1"."Zamestnanec" ADD CONSTRAINT "FK_Zamestnanec_vlastní" FOREIGN KEY ("CipovakartaID")
	  REFERENCES "DBCHLADJA1"."Cipovakarta" ("CipovakartaID") ENABLE;
