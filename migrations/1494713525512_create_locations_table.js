var sql = `
  CREATE TABLE IF NOT EXISTS locations (
    id SERIAL,
    device varchar(40) NOT NULL,
    updated timestamp NOT NULL default current_timestamp,
    longitude integer DEFAULT NULL,
    latitude integer DEFAULT NULL,

    UNIQUE(device) 
  );
`

exports.up = (pgm) => {
  pgm.sql(sql)
};
