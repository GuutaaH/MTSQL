create TABLE supplier(
supplier_idnumeric INT  PRIMARY KEY,
supplier_name VARCHAR2(50) UNIQUE,
contact_name VARCHAR2(50),
city VARCHAR2(10),
region VARCHAR(2) CHECK(region IN('N','NW','NE','S','SW','W','E'))

);
INSERT INTO supplier (supplier_idnumeric, supplier_name, contact_name, city, region)VALUES (1,'John', 'JD1', 'Toronto', 'S');
  INSERT INTO supplier (supplier_idnumeric, supplier_name, contact_name, city, region)VALUES (2, 'Jane', 'JD2', 'Montreal', 'E');
  INSERT INTO supplier (supplier_idnumeric, supplier_name, contact_name, city, region)VALUES(3, 'Kate', 'JD3', 'Windsor', 'SE');
  INSERT INTO supplier (supplier_idnumeric, supplier_name, contact_name, city, region)VALUES(4, 'Jake', 'JD4', 'Ottawa', 'NE');
  INSERT INTO supplier (supplier_idnumeric, supplier_name, contact_name, city, region)VALUES(5, 'Josh', 'JD5', 'Sudbury', 'W');
DESCRIBE  TABLE ( supplier);
  ALTER TABLE supplier 
  ADD phone_number INT;
  ALTER TABLE supplier
  RENAME COLUMN city TO unused_city;
  ALTER TABLE supplier
  DROP COLUMN unused_city;
  describe supplier;
  ALTER TABLE supplier
  RENAME TO supplier_table;
  describe supplier_table;
  DELETE FROM supplier_table;
  SELECT * FROM supplier_table;
  DROP TABLE supplier_contact PURGE;
  
