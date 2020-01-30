DROP TABLE IF EXISTS castings;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS stars;

CREATE TABLE stars (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  Budget INT
);

-- CREATE TABLE casting (
--   id SERIAL PRIMARY KEY,
--   star_id INT REFERNCES stars(id) NOT NULL,
--   movie_id INT REFERNCES movies(id) NOT NULL,
--   fee INT
-- );
