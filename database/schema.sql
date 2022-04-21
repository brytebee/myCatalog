CREATE DATABASE catalog_of_my_things;

CREATE TABLE item (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    publish_date date,
	label_id int,
	genre_id int,
	author_id int,
	archived boolean,
	FOREIGN KEY (genre_id) REFERENCES genres(id),
	FOREIGN KEY (author_id) REFERENCES author(id),
	FOREIGN KEY (label_id) REFERENCES labels(id)
);

create table book(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	publish_date date,
	publisher varchar(20),
	cover_state varchar(20),
	FOREIGN KEY (label_id) REFERENCES labels (id),
	ADD CONSTRAINT fk_item FOREIGN KEY (item) REFERENCES item(id),
);

CREATE TABLE labels (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	title varchar(20),
	color varchar(20)
	book_id int,
);

CREATE TABLE music_author(
	id SERIAL PRIMARY KEY,
	publish_date date,
	on_spotify boolean,
	FOREIGN KEY(genre_id) REFERENCES genre(id),
	ADD CONSTRAINT fk_item FOREIGN KEY (item) REFERENCES item(id),
);

CREATE TABLE genre(
	id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	music_album_id NT
);

CREATE TABLE game(
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	publish_date date,
  last_played_at date,
  multiplayer boolean,
	FOREIGN KEY (author_id) REFERENCES authors (id),
	ADD CONSTRAINT fk_item FOREIGN KEY (item) REFERENCES item(id),
);

CREATE TABLE authors(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  game_id int
);
