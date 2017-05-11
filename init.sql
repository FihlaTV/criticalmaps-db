CREATE TABLE IF NOT EXISTS chat_messages (
  message text NOT NULL,
  ip inet NOT NULL,
  timestamp timestamp NOT NULL default current_timestamp,
  identifier varchar(40) NOT NULL,
  longitude integer DEFAULT NULL,
  latitude integer DEFAULT NULL
);
INSERT INTO chat_messages (message, ip, timestamp, identifier, longitude, latitude) VALUES
('cine+mai+e+sproape%3F', '92.115.254.84', '2015-08-20 20:18:29', '77feea55a4eb59743a50cca92ea1838d146202f2', NULL, NULL),
('Hallo+%3F', '188.102.55.231', '2015-08-20 21:46:40', '317fcf71aaca4a899231ad838eae3eff95134d9f', '52514572', '13423950');


CREATE TABLE IF NOT EXISTS locations (
  id SERIAL,
  device varchar(40) NOT NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  longitude integer DEFAULT NULL,
  latitude integer DEFAULT NULL
);
ALTER TABLE locations ADD CONSTRAINT device_must_be_unique UNIQUE (device);
INSERT INTO locations (id, device, timestamp, longitude, latitude) VALUES
(5505424, 'eecbdd5e777eba579711b781e6f7ca35d29ef126', '2016-06-29 19:09:42', '13226078', '52541124'),
(5505425, '5ed598cddac16f2928e35ce8df20f269a10a3d0e', '2016-06-29 19:09:45', '8266885', '49999981');

CREATE TABLE IF NOT EXISTS locations_archive (
  id SERIAL,
  device varchar(40) NOT NULL,
  timestamp timestamp NOT NULL default current_timestamp,
  longitude integer DEFAULT NULL,
  latitude integer DEFAULT NULL
);

INSERT INTO locations_archive (id, device, timestamp, longitude, latitude) VALUES
(5505424, 'eecbdd5e777eba579711b781e6f7ca35d29ef126', '2016-06-29 19:09:42', '13226078', '52541124'),
(5505425, '5ed598cddac16f2928e35ce8df20f269a10a3d0e', '2016-06-29 19:09:45', '8266885', '49999981');
