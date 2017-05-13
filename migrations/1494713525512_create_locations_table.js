var sql = `
  CREATE TABLE IF NOT EXISTS locations (
    id SERIAL,
    device varchar(40) NOT NULL,
    timestamp timestamp NOT NULL default current_timestamp,
    longitude integer DEFAULT NULL,
    latitude integer DEFAULT NULL,

    UNIQUE(id, device)
  );
`

exports.up = (pgm) => {
  pgm.sql(sql)
};
