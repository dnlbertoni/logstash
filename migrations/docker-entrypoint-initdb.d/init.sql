-- init.sql

CREATE TABLE
    IF NOT EXISTS users (
        id SERIAL PRIMARY KEY,
        username VARCHAR(255),
        passw VARCHAR(255),
        email VARCHAR(255),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        estado BOOLEAN DEFAULT TRUE
    );

\copy users (username, passw, email) from '/docker-entrypoint-initdb.d/data/users.csv' delimiter ';' csv header;