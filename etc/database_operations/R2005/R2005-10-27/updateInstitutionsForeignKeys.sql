update NON_AFFILIATED_TEACHER set KEY_INSTITUTION=947 where KEY_INSTITUTION=1;
update NON_AFFILIATED_TEACHER set KEY_INSTITUTION=1039 where KEY_INSTITUTION=21;
update INSTITUTION set ID_INTERNAL=947 where ID_INTERNAL=1;
update INSTITUTION set ID_INTERNAL=1039 where ID_INTERNAL=21;
delete from WORK_LOCATION where WORK_LOCATION.NAME="IST";
delete from WORK_LOCATION where WORK_LOCATION.NAME="Faculdade de Letras da Universidade de Lisboa";