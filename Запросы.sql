-- 2.1
select track_title
  from tracks
 where duration = (select max(duration) from tracks);

-- 2.2
select track_title as duration
  from tracks
 where duration >= 210;

-- 2.3
select collection_title
  from collection
 where collection_release_year between 2018 and 2020;

-- 2.4
select mus_name
  from musicians
 where mus_name not like '% %';

-- 2.5
select track_title
  from tracks
 where lower(track_title) like 'my %'
    or lower(track_title) like '% my'
    or lower(track_title) like '% my %';

-- 3.1
  select genre_id, count(*)
    from genres_musicians
group by genre_id
order by count(musician_id) desc;

-- 3.2
select count(*) as track_count
  from tracks
  join albums on tracks.album_id = albums.album_id
 where album_release_year between 2019 and 2020;
 
-- 3.3
  select album_id, avg(duration)
    from tracks
group by album_id
order by album_id asc;

-- 3.4
select mus_name
  from musicians m
  join musicians_albums ma on m.musician_id = ma.musician_id
  join albums on ma.album_id = albums.album_id
 where album_release_year != 2020;

-- 3.5
select distinct collection_title
  from collection c
  join tracks_collection ts on c.collection_id = ts.collection_id
  join tracks on ts.track_id = tracks.track_id
  join musicians_albums ma on tracks.album_id = ma.album_id
  join musicians m on ma.musician_id = m.musician_id
 where mus_name = 'Король и Шут';





