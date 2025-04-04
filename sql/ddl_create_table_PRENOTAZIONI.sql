CREATE TABLE "PRENOTAZIONI" (
    "ID_PRENOTAZIONE" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 99999999999 INCREMENT BY 1 START WITH 1 NOT NULL,
    "TIPO_PRENOTAZIONE" NUMBER(1,0) NOT NULL,
    "CODICE_PRENOTAZIONE" CHAR(8) NOT NULL,
    "ID_UTENTE" NUMBER NOT NULL,
    "CODICE_VOLO_ANDATA" CHAR(10) NOT NULL,
    "CODICE_VOLO_RITORNO" CHAR(10), 
    "NUMERO_ADULTI" NUMBER(1,0) NOT NULL,
    "NUMERO_BAMBINI" NUMBER(1,0) NOT NULL,
    "NUMERO_NEONATI" NUMBER(1,0) NOT NULL,
    "COSTO" NUMBER NOT NULL,
    CONSTRAINT "PK_ID_PRENOTAZIONE" PRIMARY KEY ("ID_PRENOTAZIONE")
); COMMIT;
