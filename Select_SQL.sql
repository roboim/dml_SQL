--Название и продолжительность самого длительного трека.

SELECT name, duration  FROM Track
WHERE duration = (SELECT MAX(track.duration) FROM track);


--Название треков, продолжительность которых не менее 3,5 минут.

SELECT name FROM Track
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

SELECT name FROM Collection
WHERE release_year >=2018 and release_year <=2020;


--Исполнители, чьё имя состоит из одного слова.

SELECT name FROM Musician m
WHERE position(' ' IN m.name) = 0;


--Название треков, которые содержат слово «мой» или «my».

SELECT name FROM Track t  
WHERE lower(t.name) LIKE '%my%' OR lower(t.name) LIKE '%мой%';


--Количество исполнителей в каждом жанре.

SELECT g.name, COUNT(musiciangenre.musician_id) FROM Genre g
LEFT JOIN Musiciangenre ON g.genre_id  = Musiciangenre.genre_id 
GROUP BY g.name;


--Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT Album.name, COUNT(Track.name) Track FROM Album
LEFT JOIN Track ON Album.album_id=Track.album_id 
WHERE Album.release_year >= 2019 AND Album.release_year <= 2020
GROUP BY Album.name;


--Средняя продолжительность треков по каждому альбому.

SELECT Album.name, AVG(track.duration) Track FROM album
LEFT JOIN Track ON Album.album_id=Track.album_id
GROUP BY Album.name;


--Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT Musician.name FROM Musician
LEFT JOIN Albummusician ON Albummusician.musician_id =Musician.musician_id 
LEFT JOIN Album ON Album.album_id = Albummusician.album_id 
WHERE Album.release_year != 2020
GROUP BY musician.name;


--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

SELECT Collection.name FROM Collection
LEFT JOIN Trackcollection ON Trackcollection.collection_id=Collection.collection_id  
LEFT JOIN Track ON Track.track_id  = Trackcollection.track_id 
LEFT JOIN Album ON Album.album_id=Track.album_id 
LEFT JOIN Albummusician ON Albummusician.album_id =Album.album_id 
LEFT JOIN Musician ON Musician.musician_id  =Albummusician.musician_id 
WHERE Musician.name='Rainbow'
GROUP BY Collection.name;
