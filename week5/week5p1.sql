

CREATE TABLE Customer (
  customerId   CHAR(8) PRIMARY KEY,
  name         VARCHAR(45),
  billAddress  VARCHAR(45),
  collectionId CHAR(8)
);



CREATE TABLE WorkOrder (
  orderId     CHAR(8) PRIMARY KEY,
  createDate  DATE,
  complDate   DATE,
  workAddress VARCHAR(45),
  customerId  CHAR(8) NOT NULL,
  colTaskId   CHAR(8) NOT NULL,
  FOREIGN KEY (customerId) REFERENCES Customer (customerId)


);


CREATE TABLE Task (
  taskId   CHAR(8) PRIMARY KEY,
  name     VARCHAR(45),
  rate     INT,
  estHours INT
);



CREATE TABLE WorkTasksCollection (

  wtId           CHAR(8) PRIMARY KEY,
  orderId        CHAR(8) NOT NULL,
  taskId         CHAR(8) NOT NULL,
  status         SET('not started', 'in progress', 'completed'),
  actualHours    INT,
  completionDate DATE,

  FOREIGN KEY (orderId) REFERENCES WorkOrder (orderId),
  FOREIGN KEY (taskId) REFERENCES Task (taskId)

);


CREATE TABLE Material (
  mtId CHAR(8) PRIMARY KEY,
  name VARCHAR(45),
  cost INT
);



CREATE TABLE MaterialsCollection (
  collId      CHAR(8) PRIMARY KEY,
  mtId        CHAR(8) NOT NULL,
  orderId     CHAR(8) NOT NULL,
  estQuantity INT,
  actQuantity INT,
  FOREIGN KEY (orderId) REFERENCES WorkOrder (orderId),
  FOREIGN KEY (mtId) REFERENCES Material (mtId)
);
