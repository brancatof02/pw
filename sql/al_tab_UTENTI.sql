ALTER TABLE "UTENTI" ADD CONSTRAINT "UQ_UTENTI_EMAIL" UNIQUE ("EMAIL");
ALTER TABLE "UTENTI" ADD CONSTRAINT "FK_SESSO" FOREIGN KEY ("SESSO") REFERENCES "SESSO" ("ID");
ALTER TABLE "UTENTI" ADD CONSTRAINT "FK_TIPOLOGIA_TELEFONO" FOREIGN KEY ("TIPOLOGIA_TELEFONO") REFERENCES "TIPOLOGIA_TELEFONO" ("ID");
ALTER TABLE "UTENTI" ADD CONSTRAINT "FK_PREFISSO" FOREIGN KEY ("PREFISSO") REFERENCES "PREFISSO" ("ID");
ALTER TABLE "UTENTI" ADD CONSTRAINT "FK_TIPOLOGIA_INDIRIZZO" FOREIGN KEY ("TIPOLOGIA_INDIRIZZO") REFERENCES "TIPOLOGIA_INDIRIZZO" ("ID");
ALTER TABLE "UTENTI" ADD CONSTRAINT "FK_UTENTI_EMAIL" FOREIGN KEY ("EMAIL") REFERENCES "FEDELTA" ("EMAIL");
ALTER TABLE "UTENTI" ADD CONSTRAINT "CHECK_SESSO" CHECK ("SESSO" BETWEEN 1 AND 3);
ALTER TABLE "UTENTI" ADD CONSTRAINT "CHECK_TIPOLOGIA_TELEFONO" CHECK ("TIPOLOGIA_TELEFONO" BETWEEN 1 AND 4);
ALTER TABLE "UTENTI" ADD CONSTRAINT "CHECK_PREFISSO" CHECK ("PREFISSO" BETWEEN 1 AND 207);
ALTER TABLE "UTENTI" ADD CONSTRAINT "CHECK_TIPOLOGIA_INDIRIZZO" CHECK ("TIPOLOGIA_INDIRIZZO" IN (1, 2)); COMMIT;
