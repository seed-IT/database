CREATE TABLE UTILISATEUR(
ID_UTIL int not null auto_increment,
NAME varchar(20) not null,
LASTNAME varchar(20) not null,
DATE_NAISS date not null,
MAIL varchar(40) not null,
PASSWORD varchar(20) not null,
SUBSCRIPTION varchar(20) DEFAULT "free",
PRIMARY KEY (ID_UTIL)
);


CREATE TABLE GRAINE(
ID_GRAINE INT NOT NULL auto_increment,
NAME_GRAINE VARCHAR(20) NOT NULL,
DESCRIPTION VARCHAR(100),
PICTURE BLOB DEFAULT NULL,
TIPS VARCHAR(200),
PRIMARY KEY(ID_GRAINE)
);


CREATE TABLE TRANSACTION(
ID_TRANSACTION INT NOT NULL auto_increment,
ID_PRENEUR INT,
ID_DONNEUR INT,
ID_GRAINE INT,
DATE_TRANSACTION DATE,
QUANTITY INT NOT NULL,
PRIMARY KEY(ID_TRANSACTION),
FOREIGN KEY(ID_GRAINE) REFERENCES GRAINE (ID_GRAINE),
FOREIGN KEY(ID_PRENEUR) REFERENCES UTILISATEUR(ID_UTIL),
FOREIGN KEY(ID_DONNEUR) REFERENCES UTILISATEUR(ID_UTIL)
);


CREATE TABLE PROPRIETAIRE(
ID_PROPRIETAIRE int not null auto_increment,
ID_GRAINE int not null,
ID_UTIL int not null,
QTT int not null,
RANG int not null,
PRIMARY KEY (ID_PROPRIETAIRE),
FOREIGN KEY (ID_GRAINE) REFERENCES GRAINE(ID_GRAINE),
FOREIGN KEY (ID_UTIL) REFERENCES UTILISATEUR(ID_UTIL)
);