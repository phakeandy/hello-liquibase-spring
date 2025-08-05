--liquibase formatted sql

--changeset andy:1 context:prod labels:user 
--comment: example comment
CREATE TABLE students (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    id_number INTEGER NOT NULL,
    age INTEGER NOT NULL,
    name TEXT NOT NULL,
    PRIMARY KEY (id)
);
-- rollback DROP TABLE students;

--changeset andy:2 context:dev labels:user
ALTER TABLE students ADD COLUMN email TEXT;
ALTER TABLE students ADD COLUMN school TEXT;