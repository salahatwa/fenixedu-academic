SET AUTOCOMMIT = 0;

START TRANSACTION;

INSERT INTO EXECUTION_PATH (OID,EXECUTION_PATH,CONTENT_ID,KEY_FUNCTIONALITY,OID_FUNCTIONALITY,KEY_ROOT_DOMAIN_OBJECT,OID_ROOT_DOMAIN_OBJECT) VALUES (3521873185080,'/SIBSPayments.do?method=prepareUploadSIBSPaymentFiles','94bd2fdf-c841-47bd-80da-caf0d343b64c',5,8590028919,1,1035087118337)  ;

UPDATE CONTENT SET OID=8590028919,EXECUTION_PATH='/SIBSPayments.do?method=prepareUploadSIBSPaymentFiles',VISIBLE=1,KEY_EXECUTION_PATH_VALUE=6,OID_EXECUTION_PATH_VALUE=3521873185080,CONTENT_ID='1247fbf5-a2df-44d6-a591-b240611544fa',CREATION_DATE='2008-01-14 20:38:27',NAME='pt18:Upload de Ficheiro',TITLE=null,BODY=null,DESCRIPTION=null,NORMALIZED_NAME='pt18:upload-de-ficheiro',OJB_CONCRETE_CLASS='net.sourceforge.fenixedu.domain.functionalities.Functionality',KEY_PORTAL=null,OID_PORTAL=null,KEY_AVAILABILITY_POLICY=null,OID_AVAILABILITY_POLICY=null,KEY_ROOT_DOMAIN_OBJECT=1,OID_ROOT_DOMAIN_OBJECT=1035087118337,KEY_CREATOR=null,OID_CREATOR=null WHERE CONTENT_ID = '1247fbf5-a2df-44d6-a591-b240611544fa'  ;

DELETE FROM EXECUTION_PATH WHERE CONTENT_ID = 'b08b5a4f-edb6-44ab-a671-e5cf7df5d997' ;

CREATE TEMPORARY TABLE UUID_TEMP_TABLE(COUNTER integer, UUID varchar(255), FROM_UUID varchar(255));

INSERT INTO UUID_TEMP_TABLE(COUNTER,UUID,FROM_UUID) VALUES(5,'1247fbf5-a2df-44d6-a591-b240611544fa','94bd2fdf-c841-47bd-80da-caf0d343b64c') ;
INSERT INTO UUID_TEMP_TABLE(COUNTER,UUID,FROM_UUID) VALUES(6,'94bd2fdf-c841-47bd-80da-caf0d343b64c','1247fbf5-a2df-44d6-a591-b240611544fa') ;
ALTER TABLE UUID_TEMP_TABLE ADD INDEX (COUNTER), ADD INDEX (UUID), ADD INDEX (FROM_UUID); 


UPDATE NODE T, UUID_TEMP_TABLE UIT, CONTENT CT set T.KEY_PARENT=CT.ID_INTERNAL WHERE T.KEY_PARENT=UIT.COUNTER AND T.CONTENT_ID = UIT.FROM_UUID AND CT.CONTENT_ID=UIT.UUID;
UPDATE NODE T, UUID_TEMP_TABLE UIT, CONTENT CT set T.KEY_CHILD=CT.ID_INTERNAL WHERE T.KEY_CHILD=UIT.COUNTER AND T.CONTENT_ID = UIT.FROM_UUID AND CT.CONTENT_ID=UIT.UUID;
UPDATE CONTENT T, UUID_TEMP_TABLE UIT, CONTENT CT set T.KEY_FUNCTIONALITY=CT.ID_INTERNAL WHERE T.KEY_FUNCTIONALITY=UIT.COUNTER AND T.CONTENT_ID = UIT.FROM_UUID AND CT.CONTENT_ID=UIT.UUID;
UPDATE CONTENT T, UUID_TEMP_TABLE UIT, EXECUTION_PATH CT set T.KEY_EXECUTION_PATH_VALUE=CT.ID_INTERNAL WHERE T.KEY_EXECUTION_PATH_VALUE=UIT.COUNTER AND T.CONTENT_ID = UIT.FROM_UUID AND CT.CONTENT_ID=UIT.UUID;
UPDATE CONTENT T, UUID_TEMP_TABLE UIT, CONTENT CT set T.KEY_INITIAL_CONTENT=CT.ID_INTERNAL WHERE T.KEY_INITIAL_CONTENT=UIT.COUNTER AND T.CONTENT_ID = UIT.FROM_UUID AND CT.CONTENT_ID=UIT.UUID;
UPDATE CONTENT T, UUID_TEMP_TABLE UIT, CONTENT CT set T.KEY_PORTAL=CT.ID_INTERNAL WHERE T.KEY_PORTAL=UIT.COUNTER AND T.CONTENT_ID = UIT.FROM_UUID AND CT.CONTENT_ID=UIT.UUID;
UPDATE CONTENT T, UUID_TEMP_TABLE UIT, AVAILABILITY_POLICY CT set T.KEY_AVAILABILITY_POLICY=CT.ID_INTERNAL WHERE T.KEY_AVAILABILITY_POLICY=UIT.COUNTER AND T.CONTENT_ID = UIT.FROM_UUID AND CT.CONTENT_ID=UIT.UUID;
UPDATE AVAILABILITY_POLICY T, UUID_TEMP_TABLE UIT, CONTENT CT set T.KEY_CONTENT=CT.ID_INTERNAL WHERE T.KEY_CONTENT=UIT.COUNTER AND T.CONTENT_ID = UIT.FROM_UUID AND CT.CONTENT_ID=UIT.UUID;
UPDATE EXECUTION_PATH T, UUID_TEMP_TABLE UIT, CONTENT CT set T.KEY_FUNCTIONALITY=CT.ID_INTERNAL WHERE T.KEY_FUNCTIONALITY=UIT.COUNTER AND T.CONTENT_ID = UIT.FROM_UUID AND CT.CONTENT_ID=UIT.UUID;
DROP TABLE UUID_TEMP_TABLE;



COMMIT;