CREATE TABLE Facility (
  facNo   CHAR(11)    NOT NULL,
  facName VARCHAR(30) NOT NULL,
  CONSTRAINT FacilityPK PRIMARY KEY (facNo)
);	



INSERT INTO Facility (facNo, facName) VALUES ('F100', 'Football stadium');
INSERT INTO Facility (facNo, facName) VALUES ('F101', 'Basketball arena');
INSERT INTO Facility (facNo, facName) VALUES ('F102', 'Baseball field');
INSERT INTO Facility (facNo, facName) VALUES ('F103', 'Recreation room');
