--liquibase formatted sql
--changeset carlos:20251603517
--comment: boards table create

CREATE TABLE BOARDS(
   id BIGSERIAL PRIMARY KEY,
   name VARCHAR(255) NOT NULL
);

-- rollback DROP TABLE BOARDS