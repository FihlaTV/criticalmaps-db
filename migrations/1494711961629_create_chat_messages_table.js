var sql = `
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
`

exports.up = (pgm) => {
  pgm.sql(sql)
};
