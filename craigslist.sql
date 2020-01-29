DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE states
(
  iso TEXT PRIMARY KEY,
  name TEXT NOT NULL,
);

CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
  email TEXT NOT NULL,
  city TEXT NOT NULL,
  state_id INTEGER REFERENCES states
);

CREATE TABLE categories
(
  id SERIAL PRIMARY KEY,
  category TEXT
)

CREATE TABLE posts
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  user_id INTEGER REFERENCES users,
  cat_id INTEGER REFERENCES categories,
  price FLOAT,
  description TEXT,
)

INSERT INTO states
  (ISO, name) 
VALUES
  (etc.)