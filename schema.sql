CREATE DATABASE contact
WITH
OWNER = postgres
ENCODING = 'UTF8'
LC_COLLATE = 'en_AU.UTF-8'
LC_CTYPE = 'en_AU.UTF-8'
LOCALE_PROVIDER = 'libc'
TABLESPACE = pg_default
CONNECTION LIMIT = -1
IS_TEMPLATE = False
TEMPLATE = template0;



CREATE TABLE IF NOT EXISTS public.history
(
    id SERIAL PRIMARY KEY,
    "time" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    ip VARCHAR(45) NOT NULL,
    replyto VARCHAR(255),
    subject VARCHAR(255),
    message TEXT NOT NULL,
    location VARCHAR(255),
    file BYTEA,
    original_filename VARCHAR(255)
);
ALTER TABLE history ALTER COLUMN file TYPE VARCHAR(255);     --store files on drive, not in db



