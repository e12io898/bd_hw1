-- Жанры
create table Genres(
	genre_id SERIAL primary key,
	genre_title varchar(30) not null
);

-- Исполнители
create table Musicians(
	musician_id SERIAL primary key,
	mus_name varchar(50) not null
);

-- Жанр - Исполнитель
create table Genres_Musicians(
	gen_mus_id SERIAL primary key,
	genre_id int references Genres(genre_id),
	musician_id int references Musicians(musician_id)
);

-- Альбомы
create table Albums(
	album_id SERIAL primary key,
	album_title varchar(30) not null,
	album_release_year int not null
);

-- Исполнитель - Альбом
create table Musicians_Albums(
	mus_alb SERIAL primary key,
	musician_id int references Musicians(musician_id),
	album_id int references Albums(album_id)
);

-- Треки
create table Tracks(
	track_id SERIAL primary key,
	track_title varchar(50) not null,
	duration int not null,
	album_id int references Albums(album_id)
);

-- Сборники
create table Collection(
	collection_id SERIAL primary key,
	collection_title varchar(50) not null,
	collection_release_year int not null
);

-- Трек - Сборник
create table Tracks_Collection(
	track_col_id SERIAL primary key,
	track_id int references Tracks(track_id),
	collection_id int references Collection(collection_id)
);