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

/* На доработку
SELECT name FROM Track t  
WHERE lower(t.name) LIKE '%my%' OR lower(t.name) LIKE '%мой%';
*/

SELECT name FROM Track -- Корректный вариант
WHERE string_to_array(lower(name), ' ') && ARRAY['my', 'мой']; --Преобразуем название трека в нижний регистр, разбиваем строку на пробелы, получая массив (список) слов, и делаем пересечение с нужным массивом слов (используем `string_to_array`, `lower`).

--Количество исполнителей в каждом жанре.

SELECT g.name, COUNT(musiciangenre.musician_id) FROM Genre g
LEFT JOIN Musiciangenre ON g.genre_id  = Musiciangenre.genre_id 
GROUP BY g.name;


--Количество треков, вошедших в альбомы 2019–2020 годов.
/* По альбомам
SELECT Album.name, COUNT(Track.name) Track FROM Album
LEFT JOIN Track ON Album.album_id=Track.album_id 
WHERE Album.release_year >= 2019 AND Album.release_year <= 2020
GROUP BY Album.name;
*/

SELECT COUNT(Track.track_id) FROM Track -- Корректный вариант
JOIN Album ON Album.album_id=Track.album_id /* Делаем объединение от таблицы треков к альбомам */
WHERE Album.release_year BETWEEN 2019 AND 2020; /* Где год альбома находится в требуемом промежутке */


--Средняя продолжительность треков по каждому альбому.

SELECT Album.name, AVG(track.duration) Track FROM album
LEFT JOIN Track ON Album.album_id=Track.album_id
GROUP BY Album.name;


--Все исполнители, которые не выпустили альбомы в 2020 году.
/* На доработку
SELECT Musician.name FROM Musician
LEFT JOIN Albummusician ON Albummusician.musician_id =Musician.musician_id 
LEFT JOIN Album ON Album.album_id = Albummusician.album_id 
WHERE Album.release_year != 2020
GROUP BY musician.name;
*/

SELECT Musician.name -- Корректный вариант
FROM Musician  /* Из таблицы исполнителей */
WHERE Musician.name NOT IN ( /* Где имя исполнителя не входит в вложенную выборку */
    SELECT Musician.name /* Получаем имена исполнителей */
    FROM Musician /* Из таблицы исполнителей */
    JOIN Albummusician ON Albummusician.musician_id =Musician.musician_id /* Объединяем с промежуточной таблицей */
    JOIN Album ON Album.album_id = Albummusician.album_id /* Объединяем с таблицей альбомов */
    WHERE Album.release_year = 2020 /* Где год альбома равен 2020 */
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

SELECT Collection.name FROM Collection
LEFT JOIN Trackcollection ON Trackcollection.collection_id=Collection.collection_id  
LEFT JOIN Track ON Track.track_id  = Trackcollection.track_id 
LEFT JOIN Album ON Album.album_id=Track.album_id 
LEFT JOIN Albummusician ON Albummusician.album_id =Album.album_id 
LEFT JOIN Musician ON Musician.musician_id  =Albummusician.musician_id 
WHERE Musician.name='Rainbow'
GROUP BY Collection.name;
