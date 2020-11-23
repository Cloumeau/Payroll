DROP TABLE employee CASCADE CONSTRAINTS;

CREATE TABLE employee (
  fname    varchar2(15) not null, 
  minit    varchar2(3),
  lastn    varchar2(15) not null,
  ssn      number(10) not null, 
  salarytype  char(12) not null,
  wposition  varchar2(20),
  gender     char(2),
  benefits  varchar2(50),
  weeklyhours  number(4) not null,
  Daysoff  number(4) not null,
  salary number(10),
  hourlywage   number(10),
  employeeid   number(10),
  bankid       number(10),
  primary key (ssn)
);
DROP TABLE company1 CASCADE CONSTRAINTS;
CREATE TABLE company1 (
  cname varchar2(25) not null,
  cnumber      number(20),
  clocation    varchar2(15) not null,
  csize  number(10),
  primary key (cname),
  foreign key (cnumber) references employee(ssn)
);
DROP TABLE bank CASCADE CONSTRAINTS;
CREATE TABLE bank (
  bankname varchar2(25) not null,
  bankid      number(20) not null,
  banksize    varchar2(15),
  banklocation  varchar2(15),
  primary key (bankname),
  foreign key (bankid) references employee(bankid)
);