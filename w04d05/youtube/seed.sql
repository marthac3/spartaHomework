DROP TABLE IF EXISTS video;

CREATE TABLE video (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  des TEXT,
  url VARCHAR(255),
  img VARCHAR(255)

);

INSERT INTO video (title , des , url , img) VALUES ('Avalanche' , 'Nick Cave (Leonard Cohen cover)' , 'https://www.youtube.com/embed/S_iveMTyxH4' , 'img1.png');
INSERT INTO video (title , des , url , img) VALUES ('A Horse With No Name' , 'Michelle Branch' , 'https://www.youtube.com/embed/M7r9W6fsX98' , 'img2.png');
INSERT INTO video (title , des , url , img) VALUES ('The Man Who Sold The World' , 'Midge Ure' , 'https://www.youtube.com/embed/MWCoDpwvWo0' , 'img3.png');
