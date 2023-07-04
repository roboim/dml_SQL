CREATE TABLE IF NOT EXISTS Genre (
  genre_id SERIAL PRIMARY KEY,
  name VARCHAR(40) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS Musician (
  musician_id SERIAL PRIMARY KEY,
  name VARCHAR(40) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS Album (
  album_id SERIAL PRIMARY KEY,
  name VARCHAR(80) UNIQUE NOT NULL,
  release_year INTEGER NOT NULL CHECK (release_year > 1900)
);
CREATE TABLE IF NOT EXISTS Track (
  track_id SERIAL PRIMARY KEY,
  name VARCHAR(80) UNIQUE NOT NULL,
  duration INTEGER NOT NULL CHECK (duration > 0),
  album_id INTEGER REFERENCES Album(album_id)
);
CREATE TABLE IF NOT EXISTS Collection (
  collection_id SERIAL PRIMARY KEY,
  name VARCHAR(80) UNIQUE NOT NULL,
  release_year INTEGER NOT NULL CHECK (release_year > 1900)
);
CREATE TABLE IF NOT EXISTS MusicianGenre (
  musician_id INTEGER REFERENCES Musician(musician_id),
  genre_id INTEGER REFERENCES Genre(genre_id),
  CONSTRAINT pkmg PRIMARY KEY (musician_id, genre_id)
);
CREATE TABLE IF NOT EXISTS AlbumMusician (
  album_id INTEGER REFERENCES Album(album_id),
  musician_id INTEGER REFERENCES Musician(musician_id),
  CONSTRAINT pkam PRIMARY KEY (album_id, musician_id)
);
CREATE TABLE IF NOT EXISTS TrackCollection (
  track_id INTEGER REFERENCES Track(track_id),
  collection_id INTEGER REFERENCES Collection(collection_id),
  CONSTRAINT pktc PRIMARY KEY (track_id, collection_id)
);

