CREATE TABLE Customer (
  custNo   CHAR(8)     NOT NULL,
  custName VARCHAR(30) NOT NULL,
  address  VARCHAR(50) NOT NULL,
  internal CHAR(1)     NOT NULL,
  city     VARCHAR(30) NOT NULL,
  zip      VARCHAR(10) NOT NULL,
  state    VARCHAR(2)  NOT NULL,
  contact  VARCHAR(50) NOT NULL,
  phone    VARCHAR(30) NOT NULL,
  CONSTRAINT CustomerPk PRIMARY KEY (custNo)
);



INSERT INTO Customer (custNo, custName, address, internal, city, zip, state, contact, phone) VALUES
  ('C100', 'Football', 'Box 352200', TRUE, 'Boulder', '80309', 'CO', 'Mary Manager', '6857100');

INSERT INTO Customer (custNo, custName, address, internal, city, zip, state, contact, phone) VALUES
  ('C101', 'Men's Basketball', 'Box 352400', TRUE, 'Boulder', '80309', 'CO', 'Sally Supervisor', '5431700');

INSERT INTO Customer (custNo, custName, address, internal, city, zip, state, contact, phone) VALUES
  ('C103', 'Baseball', 'Box 352020', TRUE, 'Boulder', '80309', 'CO', 'Bill Baseball', '5431234');

INSERT INTO Customer (custNo, custName, address, internal, city, zip, state, contact, phone) VALUES
  ('C104', 'Women's Softball', 'Box 351200', TRUE, 'Boulder', '80309', 'CO', 'Sue Softball', '5434321');

INSERT INTO Customer (custNo, custName, address, internal, city, zip, state, contact, phone) VALUES
  ('C105', 'High School Football', '123 AnyStreet', FALSE, 'Louisville', '80027', 'CO', 'Coach Bob', '4441234');
