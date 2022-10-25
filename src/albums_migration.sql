USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, -- auto-incrementing unsigned integer primary key
    artist VARCHAR(100), -- string for storing the recording artists name
    name  VARCHAR(100), -- string for storing a record name
    release_date INT, -- integer representing year record was released
    sales FLOAT, -- floating point value for number of records sold (in millions)
    genre VARCHAR(100), -- string for storing the record's genre(s)
    PRIMARY KEY (id)
);