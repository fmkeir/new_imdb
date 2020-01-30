DROP TABLE IF EXISTS castings;
DROP TABLE IF EXISTS stars;
DROP TABLE IF EXISTS movies;

CREATE TABLE stars (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  budget INT
);

CREATE TABLE castings (
  id SERIAL PRIMARY KEY,
  star_id INT REFERENCES stars(id) ON DELETE CASCADE,
  movie_id INT REFERENCES movies(id) ON DELETE CASCADE,
  fee INT
);
