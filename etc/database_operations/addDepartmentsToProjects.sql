create table `PROJECTS_DEPARMENTS` (`OID_DEPARTMENT` bigint unsigned, `OID_PROJECT` bigint unsigned, primary key (OID_DEPARTMENT, OID_PROJECT), index (OID_DEPARTMENT), index (OID_PROJECT)) ENGINE=InnoDB, character set latin1;
