INSERT INTO Genre(name) 
VALUES('Рок');
INSERT INTO Genre(name) 
VALUES('Фолк');
INSERT INTO Genre(name) 
VALUES('Классика');
INSERT INTO Genre(name) 
VALUES('Поп');
INSERT INTO Genre(name) 
VALUES('Кабарэ');

INSERT INTO Musician(name) 
VALUES('Король и Шут');
INSERT INTO Musician(name) 
VALUES('Чайф');
INSERT INTO Musician(name) 
VALUES('Joseph Maurice Ravel');
INSERT INTO Musician(name) 
VALUES('Серебряная Свадьба');
INSERT INTO Musician(name) 
VALUES('Свинцовый Туман');
INSERT INTO Musician(name) 
VALUES('Rainbow');
INSERT INTO Musician(name) 
VALUES('Ария');
INSERT INTO Musician(name) 
VALUES('Тест_исполнитель');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Рок') from Musician where name='Король и Шут');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Фолк') from Musician where name='Король и Шут');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Рок') from Musician where name='Чайф');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Классика') from Musician where name='Joseph Maurice Ravel');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Кабарэ') from Musician where name='Серебряная Свадьба');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Фолк') from Musician where name='Серебряная Свадьба');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Поп') from Musician where name='Свинцовый Туман');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Рок') from Musician where name='Свинцовый Туман');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Рок') from Musician where name='Rainbow');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Рок') from Musician where name='Ария');

INSERT INTO 
	MusicianGenre(musician_id,genre_id) 
	(select musician_id,(select genre_id from Genre where name='Рок') from Musician where name='Тест_исполнитель');

INSERT INTO Album(name,release_year)
VALUES('Камнем по голове', 1996);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Король и Шут') FROM Album WHERE name='Камнем по голове');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Смельчак и ветер', 183,album_id from Album where name='Камнем по голове');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Дурак и молния', 114,album_id from Album where name='Камнем по голове');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Два вора и монета', 136,album_id from Album where name='Камнем по голове');

INSERT INTO Album(name,release_year) 
VALUES('Король и Шут', 1997);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Король и Шут') FROM Album WHERE name='Король и Шут');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Два друга и разбойники', 135,album_id from Album where name='Король и Шут');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Лесник', 192,album_id from Album where name='Король и Шут');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Валет и дама', 212,album_id from Album where name='Король и Шут');


INSERT INTO Album(name,release_year) 
VALUES('Акустический альбом', 1998);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Король и Шут') FROM Album WHERE name='Акустический альбом');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Кукла колдуна', 202,album_id from Album where name='Акустический альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Бедняжка', 248,album_id from Album where name='Акустический альбом');


INSERT INTO Album(name,release_year) 
VALUES('Давай вернёмся', 1992);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Чайф') FROM Album WHERE name='Давай вернёмся');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Никто не услышит (Ой-йо)', 265,album_id from Album where name='Давай вернёмся');


INSERT INTO Album(name,release_year) 
VALUES('Дети гор', 1993);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Чайф') FROM Album WHERE name='Дети гор');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Не спеши', 228,album_id from Album where name='Дети гор');


INSERT INTO Album(name,release_year) 
VALUES('Пусть всё будет так, как ты захочешь', 1995);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Чайф') FROM Album WHERE name='Пусть всё будет так, как ты захочешь');

INSERT INTO 
	Track(name,duration, album_id) 
	(select '17 лет', 270,album_id from Album where name='Пусть всё будет так, как ты захочешь');


INSERT INTO Album(name,release_year) 
VALUES('Соната № 2 для скрипки и фортепиано', 1927);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Joseph Maurice Ravel') FROM Album WHERE name='Соната № 2 для скрипки и фортепиано');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Соната № 2 для скрипки и фортепиано', 1176,album_id from Album where name='Соната № 2 для скрипки и фортепиано');


INSERT INTO Album(name,release_year) 
VALUES('Болеро', 1928);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Joseph Maurice Ravel') FROM Album WHERE name='Болеро');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Болеро', 1187,album_id from Album where name='Болеро');


INSERT INTO Album(name,release_year) 
VALUES('Концерт в чулане', 2008);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Серебряная Свадьба') FROM Album WHERE name='Концерт в чулане');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Пальто из ваты', 179,album_id from Album where name='Концерт в чулане');


INSERT INTO Album(name,release_year) 
VALUES('Adieu, la tête', 2015);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Серебряная Свадьба') FROM Album WHERE name='Adieu, la tête');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Adieu, la tête', 233,album_id from Album where name='Adieu, la tête');


INSERT INTO Album(name,release_year) 
VALUES('Музыка — всё!', 2015);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Серебряная Свадьба') FROM Album WHERE name='Музыка — всё!');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'К морю', 155,album_id from Album where name='Музыка — всё!');


INSERT INTO Album(name,release_year) 
VALUES('Зима', 1997);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Свинцовый Туман') FROM Album WHERE name='Зима');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Я знаю...', 260,album_id from Album where name='Зима');


INSERT INTO Album(name,release_year) 
VALUES('Ritchie Blackmore’s Rainbow', 1975);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Rainbow') FROM Album WHERE name='Ritchie Blackmore’s Rainbow');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'The Temple of the King', 285,album_id from Album where name='Ritchie Blackmore’s Rainbow');


INSERT INTO Album(name,release_year) 
VALUES('Rising', 1976);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Rainbow') FROM Album WHERE name='Rising');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Stargazer', 506,album_id from Album where name='Rising');


INSERT INTO Album(name,release_year) 
VALUES('Straight Between the Eyes', 1982);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Rainbow') FROM Album WHERE name='Straight Between the Eyes');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Tearin Out My Heart', 246,album_id from Album where name='Straight Between the Eyes');

INSERT INTO Album(name,release_year)
VALUES('Крещение огнём', 2020);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Ария') FROM Album WHERE name='Крещение огнём');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'Там высоко', 337,album_id from Album where name='Крещение огнём');


INSERT INTO Album(name,release_year)
VALUES('Тест_альбом', 2020);

INSERT INTO 
	AlbumMusician(album_id ,musician_id) 
	(SELECT album_id,(SELECT musician_id FROM Musician WHERE name='Тест_исполнитель') FROM Album WHERE name='Тест_альбом');

INSERT INTO 
	Track(name,duration, album_id) 
	(select 'my own', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'own my', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'my', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'oh my god', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'myself', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'by myself', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'bemy self', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'myself by', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'by myself by', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'beemy', 337,album_id from Album where name='Тест_альбом');
INSERT INTO 
	Track(name,duration, album_id) 
	(select 'premyne', 337,album_id from Album where name='Тест_альбом');


INSERT INTO Collection(name,release_year) 
VALUES('Рок хиты', 2022);

INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Рок хиты') FROM Track WHERE name='Stargazer');
INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Рок хиты') FROM Track WHERE name='Лесник');
INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Рок хиты') FROM Track WHERE name='Не спеши');
INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Рок хиты') FROM Track WHERE name='Там высоко');


INSERT INTO Collection(name,release_year) 
VALUES('Танцевальные хиты', 2023);

INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Танцевальные хиты') FROM Track WHERE name='17 лет');
INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Танцевальные хиты') FROM Track WHERE name='Пальто из ваты');
INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Танцевальные хиты') FROM Track WHERE name='Я знаю...');


INSERT INTO Collection(name,release_year) 
VALUES('Лирические композиции', 2022);

INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Лирические композиции') FROM Track WHERE name='Не спеши');
INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Лирические композиции') FROM Track WHERE name='Бедняжка');

INSERT INTO Collection(name,release_year) 
VALUES('Разное', 2019);

INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Разное') FROM Track WHERE name='Болеро');
INSERT INTO 
	TrackCollection(track_id ,collection_id) 
	(SELECT track_id,(SELECT collection_id FROM Collection WHERE name='Разное') FROM Track WHERE name='The Temple of the King');

