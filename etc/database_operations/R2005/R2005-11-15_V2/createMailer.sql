INSERT INTO `PERSON` (`TYPE_ID_DOCUMENT`,`SEX`,`USERNAME`,`PASSWD`,`MARITAL_STATUS`) values ('IDENTITY_CARD','MALE','mailer',md5('mailer'),'MARRIED');
INSERT INTO PERSON_ROLE(KEY_PERSON,KEY_ROLE) values (11,(select PERSON.ID_INTERNAL from (select * from PERSON where PERSON.USERNAME='mailer') as PERSON));