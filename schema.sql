DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS files CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    password_hash TEXT NOT NULL
);

CREATE TABLE files (
    id SERIAL PRIMARY KEY,
    url TEXT,
    info TEXT,
    date TIMESTAMP DEFAULT current_timestamp,
    language_code VARCHAR(50) NOT NULL,
    language_name VARCHAR(100),
    user_id SERIAL REFERENCES users(id) ON DELETE CASCADE
);