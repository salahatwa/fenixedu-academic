update EXECUTION_PERIOD set BEGIN_DATE = '2003/08/01', END_DATE = '2004/02/28' where KEY_EXECUTION_YEAR = 2 and SEMESTER = 1;
update EXECUTION_PERIOD set END_DATE = '2004/07/31' where KEY_EXECUTION_YEAR = 2 and SEMESTER = 2;
update EXECUTION_PERIOD set BEGIN_DATE = '2004/08/01' where KEY_EXECUTION_YEAR = 43 and SEMESTER = 1;

update PERSON_FUNCTION set BEGIN_DATE = '2003/08/01' where BEGIN_DATE = '2003/09/15';
update PERSON_FUNCTION set BEGIN_DATE = '2004/08/01' where BEGIN_DATE = '2004/09/13';
update PERSON_FUNCTION set END_DATE = '2004/02/28' where END_DATE = '2003/12/20';
update PERSON_FUNCTION set END_DATE = '2004/07/31' where END_DATE = '2004/06/12';

update PERSON_FUNCTION set END_DATE = '2004/02/28' where END_DATE = '2004/02/14';
update PERSON_FUNCTION set END_DATE = '2004/07/31' where END_DATE = '2004/09/14';
update PERSON_FUNCTION set END_DATE = '2004/02/28' where END_DATE = '2004/04/19';
update PERSON_FUNCTION set END_DATE = '2005/07/31' where END_DATE = '2005/09/14';
update PERSON_FUNCTION set BEGIN_DATE = '2003/08/01' where BEGIN_DATE = '2003/09/14';

update PERSON_FUNCTION set BEGIN_DATE = '2004/08/01' where KEY_PERSON = 291 and BEGIN_DATE = '2003/08/01' and END_DATE = '2005/02/27';