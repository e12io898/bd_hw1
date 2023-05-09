-- Исполнители
insert into musicians (name)
values
('Ария'), ('Король и Шут'), ('Аффинаж'), ('Дайте танк!'),
('4 позиции Бруно'), ('Митя Фомин'), ('Филипп Киркоров'),
('Billie Eilish');

-- Жанры
insert into genres (genre_title)
values
('Рок'), ('Андеграунд'), ('Поп'), ('Инди');

-- Исполнитель - Жанр
insert into genres_musicians (genre_id, musician_id)
values
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
(3, 6), (3, 4), (1, 4), (1, 2), (4, 8), (3, 7);

-- Альбомы
insert into albums (album_title, album_release_year)
values
('Живой огонь', 2004), ('Бунт на корабле', 2004),
('Мечта', 2022), ('Люди', 2020), ('Шерсть', 2022),
('Танцы на работе', 2019), ('Филипп', 1990),
('Happier Than Ever', 2021);

-- Музыканты - Альбомы
insert into musicians_albums (musician_id, album_id)
values
(1, 1), (2, 2), (3, 2), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8);

-- Треки
insert into tracks (track_title, duration, album_id)
values
('Патриот', 240, 1), ('Обман', 300, 1), ('Исповедь вампира', 210, 2),
('Звонок', 119, 2), ('Мечта', 199, 3), ('Люди', 162, 4),
('Накануне Шерсти', 144, 5), ('Лихоманка', 413, 5),
('Танцы на работе', 151, 6), ('Кармен', 199, 7),
('Плюс и минус', 197, 7), ('my future', 208, 8);

-- Сборники
insert into collection (collection_title, collection_release_year) 
values
('Поп музыка иногда', 2023), ('Рок навсегда', 2018),
('Что-то сложное', 2020), ('Всякое', 2019),
('Зарубежное', 2018), ('Уличное', 2016);

-- Трек - Сборник
insert into tracks_collection (track_id, collection_id)
values
(1, 2), (2, 2), (3, 2), (4, 2), (5, 1), (6, 1),
(10, 1), (12, 1), (9, 1), (7, 3), (8, 3), (1, 4),
(4, 4), (10, 4), (5, 4), (12, 5), (12, 6), (6, 6)

-- исправления некоторые
 alter table tracks 
alter column duration type float;

  alter table musicians
rename column name to mus_name;










