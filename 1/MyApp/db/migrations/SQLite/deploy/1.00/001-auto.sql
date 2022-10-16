--
-- Created by SQL::Translator::Producer::SQLite
-- Created on Sun Oct  9 19:46:45 2022
--

;
BEGIN TRANSACTION;
--
-- Table: "contact"
--
CREATE TABLE "contact" (
  "id" INTEGER PRIMARY KEY NOT NULL,
  "name" text NOT NULL,
  "number" text NOT NULL,
  "email" text NOT NULL
);
COMMIT;
