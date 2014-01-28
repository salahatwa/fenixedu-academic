ALTER TABLE RECEIPT ADD COLUMN STATE VARCHAR(255) NULL;

UPDATE RECEIPT SET STATE = 'ACTIVE';

ALTER TABLE RECEIPT CHANGE COLUMN STATE STATE VARCHAR(255) NOT NULL;

ALTER TABLE RECEIPT ADD COLUMN WHEN_UPDATED DATETIME NULL;

UPDATE RECEIPT SET WHEN_UPDATED = WHEN_CREATED;

ALTER TABLE RECEIPT MODIFY COLUMN WHEN_UPDATED DATETIME NOT NULL;