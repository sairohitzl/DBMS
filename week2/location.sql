CREATE TABLE Location (
  locNo   CHAR(8)     NOT NULL,
  facNo   CHAR(8)     NOT NULL,
  locName VARCHAR(30) NOT NULL,
  CONSTRAINT LocationPK PRIMARY KEY (locNo),
  CONSTRAINT FacilityFK FOREIGN KEY (facNo) REFERENCES Facility (facNo)
);

INSERT INTO Location (locNo, facNo, locName) VALUES ('L100', 'F100', 'Locker room');
INSERT INTO Location (locNo, facNo, locName) VALUES ('L101', 'F100', 'Plaza');
INSERT INTO Location (locNo, facNo, locName) VALUES ('L102', 'F100', 'Vehicle gate');
INSERT INTO Location (locNo, facNo, locName) VALUES ('L103', 'F101', 'Locker room');
INSERT INTO Location (locNo, facNo, locName) VALUES ('L104', 'F100', 'Ticket Booth');
INSERT INTO Location (locNo, facNo, locName) VALUES ('L105', 'F101', 'Gate');
INSERT INTO Location (locNo, facNo, locName) VALUES ('L106', 'F100', 'Pedestrian gate');
