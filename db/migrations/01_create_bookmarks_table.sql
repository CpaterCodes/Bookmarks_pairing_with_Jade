CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, title VARCHAR(30), url  VARCHAR(60));
INSERT INTO bookmarks(title, url)
VALUES('Destroy All Software', 'http://destroyallsoftware.com'),('Google', 'http://google.com'),('Youtube', 'http://youtube.com'),('Makers', 'http://makersacademy.com');
