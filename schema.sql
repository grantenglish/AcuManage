CREATE DATABASE AcuManage;

USE AcuManage;

create table if not exists practitioner (
  id int(11) not null auto_increment,
  contactId int (11) not null,
  primary key (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

create table if not exists contact (
  id int(11) not null auto_increment,
  name varchar(100) not null,
  phone varchar(20),
  email varchar(100),
  notes varchar(2048),
  primary key (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

create table if not exists treatment (
  id int(11) not null auto_increment,
  practitionerId int(11) not null,
  patientId int(11) not null,
  roomId int(11),
  trtDateTime datetime default null,
  notes varchar(2048),
  primary key (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

create table if not exists patient (
  id int(11) not null auto_increment,
  contactId int(11) not null,
  practitionerId int(11) not null,
  notes varchar(2048),
  primary key (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

create table if not exists appointment (
  id int(11) not null auto_increment,
  practitionerId int(11),
  patientId int(11),
  appDatetime datetime default null,
  notes varchar(2048),
  primary key (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;


--create table if not exists  (
--  id int(11) not null auto_increment,
--  primary key (id)
--) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;
