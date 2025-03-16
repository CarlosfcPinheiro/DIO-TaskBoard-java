--liquibase formatted sql
--changeset carlos:20251603517
--comment: boards table create

CREATE TABLE BOARDS_COLUMNS(
   id BIGSERIAL PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   "order" INT NOT NULL,
   kind VARCHAR(7)
);

-- rollback DROP TABLE BOARDS