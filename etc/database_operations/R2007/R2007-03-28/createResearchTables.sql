DROP TABLE IF EXISTS `SCIENTIFIC_JOURNAL`;
CREATE TABLE `SCIENTIFIC_JOURNAL` (
  `ID_INTERNAL` INTEGER  NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `ISSN` varchar(255),
  `URL` varchar(255),
  `LOCATION_TYPE` varchar(255) NOT NULL,
  `KEY_ROOT_DOMAIN_OBJECT` INTEGER(11) DEFAULT '1',
  PRIMARY KEY(`ID_INTERNAL`),
  KEY(`KEY_ROOT_DOMAIN_OBJECT`)
) type=InnoDB;

insert into SCIENTIFIC_JOURNAL(ID_INTERNAL,NAME,ISSN,URL,LOCATION_TYPE) select ID_INTERNAL,NAME,ISSN,URL,LOCATION_TYPE FROM RESEARCH_ACTIVITY WHERE OJB_CONCRETE_CLASS like '%ScientificJournal';

DROP TABLE IF EXISTS `RESEARCH_EVENT`;
CREATE TABLE `RESEARCH_EVENT` (
  `ID_INTERNAL` INTEGER NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `EVENT_TYPE` varchar(255),
  `URL` varchar(255),
  `LOCATION_TYPE` varchar(255),
  `KEY_ROOT_DOMAIN_OBJECT` INTEGER(11) DEFAULT '1',
   PRIMARY KEY(`ID_INTERNAL`),
   KEY(`KEY_ROOT_DOMAIN_OBJECT`)
) type=InnoDB;


insert into RESEARCH_EVENT(ID_INTERNAL,NAME,EVENT_TYPE,URL,LOCATION_TYPE) select ID_INTERNAL,NAME,EVENT_TYPE,URL,LOCATION_TYPE FROM RESEARCH_ACTIVITY WHERE OJB_CONCRETE_CLASS like '%Event';


DROP TABLE IF EXISTS `RESEARCH_COOPERATION`;
CREATE TABLE `RESEARCH_COOPERATION` (
  `ID_INTERNAL` INTEGER NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255), 
  `COOPERATION_TYPE` varchar(255),
  `KEY_UNIT` INTEGER(11),
  `START_DATE` varchar(255),
  `END_DATE` varchar(255),
  `KEY_ROOT_DOMAIN_OBJECT` INTEGER(11) DEFAULT '1',
   PRIMARY KEY(`ID_INTERNAL`),
   KEY(`KEY_UNIT`),
   KEY(`KEY_ROOT_DOMAIN_OBJECT`)
) type=InnoDB;


alter table RESEARCH_ACTIVITY_PARTICIPATION add column OJB_CONCRETE_CLASS varchar(255);
alter table RESEARCH_ACTIVITY_PARTICIPATION add column KEY_SCIENTIFIC_JOURNAL INTEGER(11);
alter table RESEARCH_ACTIVITY_PARTICIPATION add column KEY_JOURNAL_ISSUE INTEGER(11);
alter table RESEARCH_ACTIVITY_PARTICIPATION add column KEY_EVENT INTEGER(11);
alter table RESEARCH_ACTIVITY_PARTICIPATION add column KEY_EVENT_EDITION INTEGER(11);
alter table RESEARCH_ACTIVITY_PARTICIPATION add column KEY_COOPERATION INTEGER(11);

alter table RESEARCH_ACTIVITY_PARTICIPATION add KEY(`KEY_SCIENTIFIC_JOURNAL`);
alter table RESEARCH_ACTIVITY_PARTICIPATION add KEY(`KEY_JOURNAL_ISSUE`);
alter table RESEARCH_ACTIVITY_PARTICIPATION add KEY(`KEY_EVENT`);
alter table RESEARCH_ACTIVITY_PARTICIPATION add KEY(`KEY_EVENT_EDITION`);
alter table RESEARCH_ACTIVITY_PARTICIPATION add KEY(`KEY_COOPERATION`);

alter table RESEARCH_ACTIVITY_PARTICIPATION drop column KEY_RESEARCH_ACTIVITY;