create table `TEACHER_AUTHORIZATION` (`OID` bigint unsigned, `OID_PROFESSIONAL_CATEGORY` bigint unsigned, `OID_EXECUTION_SEMESTER` bigint unsigned, `UNACTIVE_TIME` timestamp NULL default NULL, `CAN_PARK` tinyint(1), `OJB_CONCRETE_CLASS` varchar(255) NOT NULL DEFAULT '', `CAN_HAVE_CARD` tinyint(1), `OID_REVOKER` bigint unsigned, `LESSON_HOURS` int(11), `OID_TEACHER` bigint unsigned, `OID_AUTHORIZER` bigint unsigned, `ACTIVE` tinyint(1), `OID_ROOT_DOMAIN_OBJECT` bigint unsigned, `ID_INTERNAL` int(11) NOT NULL auto_increment, primary key (ID_INTERNAL), index (OID), index (OID_REVOKER), index (OID_PROFESSIONAL_CATEGORY), index (OID_TEACHER), index (OID_AUTHORIZER), index (OID_EXECUTION_SEMESTER), index (OID_ROOT_DOMAIN_OBJECT)) ENGINE=InnoDB, character set latin1;