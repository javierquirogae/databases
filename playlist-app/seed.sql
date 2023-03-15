

CREATE TABLE playlists (
    id SERIAL PRIMARY KEY, 
    name TEXT NOT NULL, 
    description TEXT
    );


CREATE TABLE songs (
    id SERIAL PRIMARY KEY, 
    title TEXT NOT NULL, 
    artist TEXT NOT NULL
    );

CREATE TABLE playlists_songs (
    id SERIAL PRIMARY KEY, 
    playlist_id INTEGER NOT NULL REFERENCES playlists (id), 
    song_id INTEGER  NOT NULL REFERENCES songs (id)
    );
