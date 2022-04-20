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
	FOREIGN KEY (label_id) REFERENCES labels (id)

CREATE TABLE labels (
	id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	title varchar(20),
	color varchar(20)
	book_id int,
);

CREATE TABLE music_author(
	id			SERIAL PRIMARY KEY,
)
