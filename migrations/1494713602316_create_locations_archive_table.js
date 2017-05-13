var sql = `
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
`

exports.up = (pgm) => {
  pgm.sql(sql)
};
