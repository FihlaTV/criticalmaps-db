CREATE TYPE review_state AS ENUM ('unaudited', 'approved', 'rejected');
CREATE TABLE IF NOT EXISTS images (
  id SERIAL,
  timestamp timestamp NOT NULL default current_timestamp,
  longitude integer DEFAULT NULL,
  latitude integer DEFAULT NULL,
  image_id text NOT NULL,
  review_state review_state NOT NULL DEFAULT 'unaudited'
);

INSERT INTO images (id, timestamp, longitude, latitude, image_id, review_state) VALUES
(43, '2015-08-21 18:02:10', '11545890', '48130834', '55d767a25817d', 'unaudited'),
(44, '2015-08-21 18:09:04', '11546298', '48130287', '55d7694067362', 'unaudited');
