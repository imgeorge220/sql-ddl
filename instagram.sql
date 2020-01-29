DROP DATABASE IF EXISTS instagram;

CREATE DATABASE instagram;

\c instagram

CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
  prof_name VARCHAR (12) UNIQUE NOT NULL,
  email VARCHAR (20) NOT NULL,
  password VARCHAR (5) NOT NULL
);

CREATE TABLE photos
(
 id SERIAL PRIMARY KEY,
 user_id REFERENCES users,
 url TEXT NOT NULL
);

CREATE TABLE comments
(
  id SERIAL PRIMARY KEY,
  user_id REFERENCES users,
  photo_id REFERENCES photos,
  comment VARCHAR (8) NOT NULL
);

CREATE TABLE likes
(
  id SERIAL PRIMARY KEY,
  photo_id REFERENCES photos,
  user_id REFERENCES users
);

CREATE TABLE saved
(
  id SERIAL PRIMARY KEY,
  photo_id REFERENCES photos,
  user_id REFERENCES users
);

CREATE TABLE followers
(
  id SERIAL PRIMARY KEY,
  user_id REFERENCES users,
  user_id_follower REFERENCES users
);