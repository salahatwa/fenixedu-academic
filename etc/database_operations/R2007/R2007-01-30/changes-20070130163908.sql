--  SQL file representing changes to the functionalities model
--  Generated at Tue Jan 30 16:39:26 WET 2007
--  DO NOT EDIT THIS FILE, run the generating script instead

--  Preamble
SET AUTOCOMMIT = 0;

START TRANSACTION;

-- 
--  Updating existing functionalities
-- 

--  ID: 16195 UUID: '197325b3-e343-4945-9dba-dacb86df3112'
UPDATE `ACCESSIBLE_ITEM` AS own SET own.`ORDER_IN_MODULE` = 1 WHERE own.`UUID` = '197325b3-e343-4945-9dba-dacb86df3112';

-- 
--  Inserting new functionalities
-- 

--  ID: 24042 UUID: '65c62b99-26df-4ede-b2f5-139b31f2ca5d'
INSERT INTO `ACCESSIBLE_ITEM` (`UUID`, `OJB_CONCRETE_CLASS`, `KEY_ROOT_DOMAIN_OBJECT`, `KEY_PARENT`, `KEY_MODULE`, `KEY_AVAILABILITY_POLICY`, `NAME`, `TITLE`, `DESCRIPTION`, `PATH`, `PREFIX`, `RELATIVE`, `ENABLED`, `PARAMETERS`, `ORDER_IN_MODULE`, `VISIBLE`, `MAXIMIZED`, `PRINCIPAL`, `KEY_SUPERIOR_SECTION`, `SECTION_ORDER`, `KEY_SITE`, `LAST_MODIFIED_DATE_YEAR_MONTH_DAY`, `KEY_SECTION`, `ITEM_ORDER`, `INFORMATION`, `KEY_FUNCTIONALITY`) SELECT '65c62b99-26df-4ede-b2f5-139b31f2ca5d', 'net.sourceforge.fenixedu.domain.functionalities.Module', 1, `ID_INTERNAL`, `ID_INTERNAL`, NULL, 'pt12:Site Pessoal', NULL, NULL, '', '/', 1, 1, NULL, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL FROM `ACCESSIBLE_ITEM` WHERE `UUID` = '0c52935e-37bc-413a-9d13-b40e9b13f242';

--  ID: 24043 UUID: '777c4663-1201-4281-b0cd-78ce5dbef5e9'
INSERT INTO `ACCESSIBLE_ITEM` (`UUID`, `OJB_CONCRETE_CLASS`, `KEY_ROOT_DOMAIN_OBJECT`, `KEY_PARENT`, `KEY_MODULE`, `KEY_AVAILABILITY_POLICY`, `NAME`, `TITLE`, `DESCRIPTION`, `PATH`, `PREFIX`, `RELATIVE`, `ENABLED`, `PARAMETERS`, `ORDER_IN_MODULE`, `VISIBLE`, `MAXIMIZED`, `PRINCIPAL`, `KEY_SUPERIOR_SECTION`, `SECTION_ORDER`, `KEY_SITE`, `LAST_MODIFIED_DATE_YEAR_MONTH_DAY`, `KEY_SECTION`, `ITEM_ORDER`, `INFORMATION`, `KEY_FUNCTIONALITY`) SELECT '777c4663-1201-4281-b0cd-78ce5dbef5e9', 'net.sourceforge.fenixedu.domain.functionalities.ConcreteFunctionality', 1, NULL, `ID_INTERNAL`, NULL, 'pt12:Apresentaçãoen12:Presentation', 'pt12:Apresentaçãoen12:Presentation', NULL, '/viewHomepage.do?method=show', NULL, 1, 1, 'homepageID', 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL FROM `ACCESSIBLE_ITEM` WHERE `UUID` = '65c62b99-26df-4ede-b2f5-139b31f2ca5d';

--  ID: 24044 UUID: '129fcf2c-4edb-4273-a58e-6d504ea3964c'
INSERT INTO `ACCESSIBLE_ITEM` (`UUID`, `OJB_CONCRETE_CLASS`, `KEY_ROOT_DOMAIN_OBJECT`, `KEY_PARENT`, `KEY_MODULE`, `KEY_AVAILABILITY_POLICY`, `NAME`, `TITLE`, `DESCRIPTION`, `PATH`, `PREFIX`, `RELATIVE`, `ENABLED`, `PARAMETERS`, `ORDER_IN_MODULE`, `VISIBLE`, `MAXIMIZED`, `PRINCIPAL`, `KEY_SUPERIOR_SECTION`, `SECTION_ORDER`, `KEY_SITE`, `LAST_MODIFIED_DATE_YEAR_MONTH_DAY`, `KEY_SECTION`, `ITEM_ORDER`, `INFORMATION`, `KEY_FUNCTIONALITY`) SELECT '129fcf2c-4edb-4273-a58e-6d504ea3964c', 'net.sourceforge.fenixedu.domain.functionalities.ConcreteFunctionality', 1, NULL, `ID_INTERNAL`, NULL, 'en18:Research Interestspt22:Interesses Científicos', 'en18:Research Interestspt10:Interesses', NULL, '/showInterests.do?method=showInterests', NULL, 1, 1, 'homepageID', 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL FROM `ACCESSIBLE_ITEM` WHERE `UUID` = '65c62b99-26df-4ede-b2f5-139b31f2ca5d';
INSERT INTO `AVAILABILITY_POLICY` (`OJB_CONCRETE_CLASS`, `KEY_ROOT_DOMAIN_OBJECT`, `KEY_ACCESSIBLE_ITEM`, `EXPRESSION`, `TARGET_GROUP`) SELECT 'net.sourceforge.fenixedu.domain.functionalities.ExpressionGroupAvailability', 1, `ID_INTERNAL`, 'ifTrue($I(homepageID, \'homepage.Homepage\').showInterests)', 'ifTrue($I(homepageID, \'homepage.Homepage\').showInterests)' FROM `ACCESSIBLE_ITEM` WHERE `UUID` = '129fcf2c-4edb-4273-a58e-6d504ea3964c';
UPDATE `ACCESSIBLE_ITEM` AS f, `AVAILABILITY_POLICY` AS ap SET f.`KEY_AVAILABILITY_POLICY` = ap.`ID_INTERNAL` WHERE f.`UUID` = '129fcf2c-4edb-4273-a58e-6d504ea3964c' AND ap.`KEY_ACCESSIBLE_ITEM` = f.`ID_INTERNAL`;

--  ID: 24045 UUID: '31fd792e-73c4-4a78-88ee-36d73347caf4'
INSERT INTO `ACCESSIBLE_ITEM` (`UUID`, `OJB_CONCRETE_CLASS`, `KEY_ROOT_DOMAIN_OBJECT`, `KEY_PARENT`, `KEY_MODULE`, `KEY_AVAILABILITY_POLICY`, `NAME`, `TITLE`, `DESCRIPTION`, `PATH`, `PREFIX`, `RELATIVE`, `ENABLED`, `PARAMETERS`, `ORDER_IN_MODULE`, `VISIBLE`, `MAXIMIZED`, `PRINCIPAL`, `KEY_SUPERIOR_SECTION`, `SECTION_ORDER`, `KEY_SITE`, `LAST_MODIFIED_DATE_YEAR_MONTH_DAY`, `KEY_SECTION`, `ITEM_ORDER`, `INFORMATION`, `KEY_FUNCTIONALITY`) SELECT '31fd792e-73c4-4a78-88ee-36d73347caf4', 'net.sourceforge.fenixedu.domain.functionalities.ConcreteFunctionality', 1, NULL, `ID_INTERNAL`, NULL, 'en12:Publicationspt11:Publicações', 'en12:Publicationspt11:Publicações', NULL, '/showPublications.do?method=showPublications', NULL, 1, 1, 'homepageID', 2, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL FROM `ACCESSIBLE_ITEM` WHERE `UUID` = '65c62b99-26df-4ede-b2f5-139b31f2ca5d';
INSERT INTO `AVAILABILITY_POLICY` (`OJB_CONCRETE_CLASS`, `KEY_ROOT_DOMAIN_OBJECT`, `KEY_ACCESSIBLE_ITEM`, `EXPRESSION`, `TARGET_GROUP`) SELECT 'net.sourceforge.fenixedu.domain.functionalities.ExpressionGroupAvailability', 1, `ID_INTERNAL`, 'ifTrue($I(homepageID, \'homepage.Homepage\').showPublications)', 'ifTrue($I(homepageID, \'homepage.Homepage\').showPublications)' FROM `ACCESSIBLE_ITEM` WHERE `UUID` = '31fd792e-73c4-4a78-88ee-36d73347caf4';
UPDATE `ACCESSIBLE_ITEM` AS f, `AVAILABILITY_POLICY` AS ap SET f.`KEY_AVAILABILITY_POLICY` = ap.`ID_INTERNAL` WHERE f.`UUID` = '31fd792e-73c4-4a78-88ee-36d73347caf4' AND ap.`KEY_ACCESSIBLE_ITEM` = f.`ID_INTERNAL`;

--  ID: 24046 UUID: '9d51e9a0-801f-48f1-b0f0-09a44c423010'
INSERT INTO `ACCESSIBLE_ITEM` (`UUID`, `OJB_CONCRETE_CLASS`, `KEY_ROOT_DOMAIN_OBJECT`, `KEY_PARENT`, `KEY_MODULE`, `KEY_AVAILABILITY_POLICY`, `NAME`, `TITLE`, `DESCRIPTION`, `PATH`, `PREFIX`, `RELATIVE`, `ENABLED`, `PARAMETERS`, `ORDER_IN_MODULE`, `VISIBLE`, `MAXIMIZED`, `PRINCIPAL`, `KEY_SUPERIOR_SECTION`, `SECTION_ORDER`, `KEY_SITE`, `LAST_MODIFIED_DATE_YEAR_MONTH_DAY`, `KEY_SECTION`, `ITEM_ORDER`, `INFORMATION`, `KEY_FUNCTIONALITY`) SELECT '9d51e9a0-801f-48f1-b0f0-09a44c423010', 'net.sourceforge.fenixedu.domain.functionalities.ConcreteFunctionality', 1, NULL, `ID_INTERNAL`, NULL, 'en7:Patentspt8:Patentes', 'en7:Patentspt8:Patentes', NULL, '/showPatents.do?method=showPatents', NULL, 1, 1, 'homepageID', 3, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL FROM `ACCESSIBLE_ITEM` WHERE `UUID` = '65c62b99-26df-4ede-b2f5-139b31f2ca5d';
INSERT INTO `AVAILABILITY_POLICY` (`OJB_CONCRETE_CLASS`, `KEY_ROOT_DOMAIN_OBJECT`, `KEY_ACCESSIBLE_ITEM`, `EXPRESSION`, `TARGET_GROUP`) SELECT 'net.sourceforge.fenixedu.domain.functionalities.ExpressionGroupAvailability', 1, `ID_INTERNAL`, 'ifTrue($I(homepageID, \'homepage.Homepage\').showPatents)', 'ifTrue($I(homepageID, \'homepage.Homepage\').showPatents)' FROM `ACCESSIBLE_ITEM` WHERE `UUID` = '9d51e9a0-801f-48f1-b0f0-09a44c423010';
UPDATE `ACCESSIBLE_ITEM` AS f, `AVAILABILITY_POLICY` AS ap SET f.`KEY_AVAILABILITY_POLICY` = ap.`ID_INTERNAL` WHERE f.`UUID` = '9d51e9a0-801f-48f1-b0f0-09a44c423010' AND ap.`KEY_ACCESSIBLE_ITEM` = f.`ID_INTERNAL`;

COMMIT;