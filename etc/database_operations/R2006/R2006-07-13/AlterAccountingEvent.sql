alter table ACCOUNTING_EVENT add column EVENT_STATE varchar(250) NULL;

update ACCOUNTING_EVENT set EVENT_STATE = 'CLOSED' WHERE CLOSED = '1';
update ACCOUNTING_EVENT set EVENT_STATE = 'OPEN' WHERE CLOSED = '0';

alter table ACCOUNTING_EVENT change column EVENT_STATE EVENT_STATE varchar(250) NOT NULL;


alter table ACCOUNTING_EVENT drop column CLOSED;