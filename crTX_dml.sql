--Date:11-05-14  By: M.rizwan
--Change:
--Populated values in CBP_PROPERTY table for columns CBP_PROPERTY_SORT_ORDER, CBP_PROPERTY_GROUP_SORT_ORDER, CBP_GROUP_DISPLAY_TEXT
--Date:18-05-14  By: M.rizwan
--Manipolated table CBP_INFA_TO_DB_TYPE_MAP to delete from all Oracle to infa dba type and corrected/added new ones as well

INSERT INTO cbp_conn_type (cbp_conn_type_id, cbp_conn_desc) VALUES (1,'Primary Transformation');
INSERT INTO cbp_conn_type (cbp_conn_type_id, cbp_conn_desc) VALUES (2,'Secondary Transformation');

INSERT INTO cbp_trans_output_level VALUES (1,'PORT');
INSERT INTO cbp_trans_output_level VALUES (2,'RECORD SINGLE');
INSERT INTO cbp_trans_output_level VALUES (3,'RECORD MULTIPLE');	

INSERT INTO cbp_property_group (cbp_property_group_id, cbp_property_group_name) VALUES (1,'INFORMATICA CONTROL FILE SECTION');
INSERT INTO cbp_property_group (cbp_property_group_id, cbp_property_group_name) VALUES (2,'INFORMATICA SESSION SECTION');
INSERT INTO cbp_property_group (cbp_property_group_id, cbp_property_group_name) VALUES (3,'INFORMATICA WORKFLOW SECTION');
INSERT INTO cbp_property_group (cbp_property_group_id, cbp_property_group_name) VALUES (4,'INFORMATICA SHADOW OBJECT');
INSERT INTO cbp_property_group (cbp_property_group_id, cbp_property_group_name) VALUES (5,'INFORMATICA REPOSITORY');
INSERT INTO cbp_property_group (cbp_property_group_id, cbp_property_group_name) VALUES (6,'INFORMATICA INTEGRATION SERVICE');
INSERT INTO cbp_property_group (cbp_property_group_id, cbp_property_group_name) VALUES (7,'INFORMATICA DOMAIN');
INSERT INTO cbp_property_group (cbp_property_group_id, cbp_property_group_name) VALUES (8,'CONTROL ENTRY');
INSERT INTO cbp_property_group (cbp_property_group_id, cbp_property_group_name) VALUES (9,'INFORMATICA COMMANDS');


-- @@REMIND
-- Not sure why 1007 is repeated here
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1012,5,'REPOSITORY_SERVICE_NAME','CBP_REPOSITORY_SERVICE_NAME','STRING',null,'Repository Service Name','N',1,1,'Repository Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1013,5,'REPOSITORY EXPORT/IMPORT USERNAME','CBP_REP_EXP_IMP_USERNAME','STRING',null,'Repository Export/Import Username','N',9,1,'Repository Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1014,5,'REPOSITORY EXPORT/IMPORT PASSWORD','CBP_REP_EXP_IMP_PASSWORD','STRING',null,'Repository Export/Import Password','Y',10,1,'Repository Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1008,5,'UT_TARGETREPOSITORYNAME','CBP_UT_TARGETREPOSITORYNAME','STRING',null,'Unit Test Target Repository Name','N',19,1,'Repository Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1007,5,'UT_FOLDERNAME','CBP_UT_FOLDERNAME','STRING',null,'Unit Test Folder Name','N',22,1,'Repository Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1001,5,'UT_CHECKIN_AFTER_IMPORT','CBP_UT_CHECKIN_AFTER_IMPORT','STRING',null,'Unit Test Checkin After Import','N',24,1,'Repository Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1002,5,'UT_CHECKIN_COMMENTS','CBP_UT_CHECKIN_COMMENTS','STRING','Testing','Unit Test Checkin Comments','N',25,1,'Repository Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1035,5,'UT_TARGETREPOSITORYID','CBP_UT_TARGETREPOSITORYID','NUMBER',null,'Unit Test Target Repository ID','N',19,1,'Repository Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1032,9,'PMCMD LOCATION','CBP_PMCMD_LOCATION','STRING',null,'Full Path of pmcmd Command','N',11,1,'Informatica Commands');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1033,9,'PMREP LOCATION','CBP_PMREP_LOCATION','STRING',null,'Full Path of pmrep Command','N',12,1,'Informatica Commands');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1030,6,'INTEGRATION SERVICE USERNAME','CBP_INT_SVC_USER_NAME','STRING',null,'Informatica IS User Name','N',27,2,'Integration Service Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1029,6,'INTEGRATION SERVICE NAME','CBP_INT_SVC_NAME','STRING',null,'Informatica IS Name','N',26,2,'Integration Service Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1031,6,'INTEGRATION SERVICE PASSWORD','CBP_INT_SVC_PASSWORD','STRING',null,'Informatica IS Password','Y',28,2,'Integration Service Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1028,7,'DOMAIN PASSWORD','CBP_DOMAIN_PASSWORD','STRING',null,'Informatica Domain Password','Y',31,3,'Domain Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1027,7,'DOMAIN USERNAME','CBP_DOMAIN_USER_NAME','STRING',null,'Informatica Domain User Name','N',30,3,'Domain Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1026,7,'DOMAIN NAME','CBP_REP_DOMAIN_NAME','STRING',null,'Informatica Domain Name','N',29,3,'Domain Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1007,1,'TARGETFOLDERNAME','CBP_TARGETFOLDERNAME','STRING',null,'Target Folder Name','N',37,4,'Control File Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1004,1,'RETAIN_GENERATED_VALUE','CBP_RETAIN_GENERATED_VALUE','STRING',null,'Retain Generated Value','N',38,4,'Control File Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1003,1,'APPLY_LABEL_NAME','CBP_APPLY_LABEL_NAME','STRING',null,'Apply LAbel Name','N',41,4,'Control File Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1011,2,'STOP_ON_ERROR','CBP_STOP_ON_ERROR','NUMBER','1','Stop On Error','N',42,5,'Session Property Detail');
Insert into CBP_PROPERTY (CBP_PROPERTY_ID,CBP_PROPERTY_GROUP_ID,CBP_PROPERTY_NAME,CBP_PROPERTY_PLACEHOLDER,CBP_PROPERTY_DATA_TYPE,CBP_PROPERTY_DEFAULT_VALUE,CBP_PROPERTY_DISPLAY_TEXT,CBP_IS_ENCRYPTED,CBP_PROPERTY_SORT_ORDER,CBP_PROPERTY_GROUP_SORT_ORDER,CBP_GROUP_DISPLAY_TEXT) values (1034,8,'BATCH_TEST_LAST_RUN_TIME','BATCH_TEST_LAST_RUN_TIME','STRING','01/01/1990 01:01:01','Batch Test Last Run Time','N',43,6,'Batch Test Last Run Time');

Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','DATE/TIME','DATE','DATE/TIME',19,0,'Y',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','DECIMAL','NUMBER(p,s)','DECIMAL',null,null,'N',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','INTEGER','NUMBER(p,s)','DECIMAL',null,null,'N',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','SMALL INTEGER','NUMBER(p,s)','DECIMAL',null,null,'N',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','BIGINT','NUMBER(p,s)','DECIMAL',null,null,'N',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','DOUBLE','NUMBER(p,s)','DOUBLE',null,null,'N',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','NSTRING','VARCHAR2','NSTRING',null,null,'N',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','NTEXT','VARCHAR2','NTEXT',null,null,'N',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','REAL','NUMBER(p,s)','REAL',null,null,'N',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','STRING','VARCHAR2','STRING',null,null,'N',null);
Insert into CBP_INFA_TO_DB_TYPE_MAP (CBP_SRC_DB_TYPE_CD,CBP_TGT_DB_TYPE_CD,CBP_SRC_DTYPE,CBP_TGT_DTYPE,CBP_SQ_DTYPE,CBP_DTYPE_PRECISION,CBP_DTYPE_SCALE,CBP_PICK_DEFAULT,CBP_COMMENTS) values ('INFORMATICA','ORACLE','TEXT','VARCHAR2','TEXT',null,null,'N',null);

INSERT INTO cbp_agile_mode (cbp_agile_mode_id, cbp_agile_mode_desc, cbp_is_supported, cbp_has_def_ports, cbp_is_default) VALUES (1,'DEBUG', 'N', 'N', 'N');
INSERT INTO cbp_agile_mode (cbp_agile_mode_id, cbp_agile_mode_desc, cbp_is_supported, cbp_has_def_ports, cbp_is_default) VALUES (2,'UNIT TESTING', 'Y', 'Y', 'Y');
INSERT INTO cbp_agile_mode (cbp_agile_mode_id, cbp_agile_mode_desc, cbp_is_supported, cbp_has_def_ports, cbp_is_default) VALUES (3,'PIPE LINE','Y','N','N');

-- A POJO class to construct a hashmap or something similar for the Transformation and its cbp_trans_type_id needs to be created
-- The cbp_trans_type_id is useful to get the related data for that transformation easily
-- NOTE: We will use all strings in UPPER CASES
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (1,'Expression',1);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (2,'Lookup Procedure',1);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (3,'Filter',2);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (4,'Update Strategy',2);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (5,'Joiner',2);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (6,'Aggregator',1);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (7,'Stored Procedure',1);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (8,'Router',3);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (9,'Rank',2);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (10,'Mapplet',1);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (11,'Source Qualifier',1);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (12,'Union Transformation',2);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (13,'Normalizer',3);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (14,'Sorter',1);
INSERT INTO cbp_trans_type (cbp_trans_type_id, cbp_trans_type_desc, cbp_trans_output_level) VALUES (15,'Target Definition',1);

-- Primary Connections
INSERT INTO cbp_trans_conn_type (cbp_trans_conn_type_id, cbp_trans_conn_desc, cbp_trans_conn_display_text, cbp_conn_type_id) VALUES (1,'SOURCE CONNECTION', 'Source Connection', 1);
INSERT INTO cbp_trans_conn_type (cbp_trans_conn_type_id, cbp_trans_conn_desc, cbp_trans_conn_display_text, cbp_conn_type_id) VALUES (2,'TARGET CONNECTION','Target Connection', 1);
INSERT INTO cbp_trans_conn_type (cbp_trans_conn_type_id, cbp_trans_conn_desc, cbp_trans_conn_display_text, cbp_conn_type_id) VALUES (3,'LOOKUP CONNECTION', 'Lookup Connection', 1);
INSERT INTO cbp_trans_conn_type (cbp_trans_conn_type_id, cbp_trans_conn_desc, cbp_trans_conn_display_text, cbp_conn_type_id) VALUES (4,'JOINER MASTER SOURCE CONNECTION', 'Source Connection (Master)', 1);
INSERT INTO cbp_trans_conn_type (cbp_trans_conn_type_id, cbp_trans_conn_desc, cbp_trans_conn_display_text, cbp_conn_type_id) VALUES (5,'JOINER DETAIL SOURCE CONNECTION', 'Source Connection (Detail)', 1);
INSERT INTO cbp_trans_conn_type (cbp_trans_conn_type_id, cbp_trans_conn_desc, cbp_trans_conn_display_text, cbp_conn_type_id) VALUES (6,'STORED PROCEDURE CONNECTION', 'Stored Procedure Connection', 1);
INSERT INTO cbp_trans_conn_type (cbp_trans_conn_type_id, cbp_trans_conn_desc, cbp_trans_conn_display_text, cbp_conn_type_id) VALUES (7,'SOURCE QUALIFIER CONNECTION', 'Source Qualifier Connection', 1);

-- Secondary Connections
INSERT INTO cbp_trans_conn_type (cbp_trans_conn_type_id, cbp_trans_conn_desc, cbp_trans_conn_display_text, cbp_conn_type_id) VALUES (8,'LOOKUP PROCEDURE CONNECTION', 'Lookup Procedure Connection', 2);
INSERT INTO cbp_trans_conn_type (cbp_trans_conn_type_id, cbp_trans_conn_desc, cbp_trans_conn_display_text, cbp_conn_type_id) VALUES (9,'STORED PROCEDURE CONNECTION', 'Stored Procedure Connection', 2);

-- Expression
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,1,8);
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,1,9);

-- Filter
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,3,8);
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,3,9);

-- Update Strategy
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,4,8);
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,4,9);

-- Aggregator
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,6,8);
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,6,9);

-- Router
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,8,8);
INSERT INTO cbp_trans_misc_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,8,9);

-- Need to revise this data and the dependant tables as some operations are ambiguous given that they are applicable to both source and target and potentially others..
INSERT INTO cbp_agile_op (cbp_agile_op_id, cbp_agile_op_desc) VALUES (1, 'VIEW');
INSERT INTO cbp_agile_op (cbp_agile_op_id, cbp_agile_op_desc) VALUES (2, 'INSERT');
INSERT INTO cbp_agile_op (cbp_agile_op_id, cbp_agile_op_desc) VALUES (3, 'UPDATE');
INSERT INTO cbp_agile_op (cbp_agile_op_id, cbp_agile_op_desc) VALUES (4, 'DELETE');
INSERT INTO cbp_agile_op (cbp_agile_op_id, cbp_agile_op_desc) VALUES (5, 'SOURCE DATA FROM ANOTHER TABLE');
INSERT INTO cbp_agile_op (cbp_agile_op_id, cbp_agile_op_desc) VALUES (6, 'SOURCE DATA FROM A QUERY');
INSERT INTO cbp_agile_op (cbp_agile_op_id, cbp_agile_op_desc) VALUES (7, 'SOURCE DATA FROM A DELIMITED FILE');
INSERT INTO cbp_agile_op (cbp_agile_op_id, cbp_agile_op_desc) VALUES (8, 'SOURCE DATA FROM AN EXCEL FILE');

-- Expression 1, Lookup 2, Filter 3, Update Strategy 4, Joiner 5,  Aggregator 6, Stored Procedure 7, Router 8, Rank 9, Union 11, Source Qualifier 12, Mapplet 13, Normalizer 14
-- UNIT TESTING Mode 2, DEBUG Mode 1
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (1,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (2,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (3,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (4,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (5,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (6,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (7,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (8,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (9,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (10,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (11,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (12,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (13,2);
INSERT INTO cbp_trans_supp_agile_mode (cbp_trans_type_id, cbp_agile_mode_id) VALUES (14,2);

-- Supported Operations
-- Expression
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (1,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (1,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (1,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (1,4,2);

-- Lookup
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (2,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (2,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (2,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (2,4,2);

-- Filter
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (3,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (3,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (3,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (3,4,2);

-- Update Strategy
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (4,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (4,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (4,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (4,4,2);

-- Joiner
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (5,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (5,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (5,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (5,4,2);

-- Aggregator
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (6,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (6,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (6,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (6,4,2);

-- Stored Procedure
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (7,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (7,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (7,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (7,4,2);

-- Router
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (8,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (8,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (8,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (8,4,2);

-- Rank
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (9,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (9,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (9,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (9,4,2);

-- Mapplet
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (10,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (10,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (10,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (10,4,2);

-- Source Qualifier
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (11,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (11,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (11,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (11,4,2);

-- Union
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (12,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (12,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (12,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (12,4,2);

-- Normalizer
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (13,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (13,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (13,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (13,4,2);

-- Sorter
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (14,1,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (14,2,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (14,3,2);
INSERT INTO cbp_trans_supp_op (cbp_trans_type_id, cbp_agile_op_id,cbp_agile_mode_id) VALUES (14,4,2);

-- Supported Connections
-- Expression
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,1,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,1,2);

-- Lookup
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,2,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,2,2);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,2,3);

-- Filter
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,3,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,3,2);

-- Update Strategy
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,4,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,4,2);

-- Joiner
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,5,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,5,2);

-- Aggregator
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,6,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,6,2);

-- Stored Procedure
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,7,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,7,2);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,7,6);

-- Router
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,8,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,8,2);

-- Rank
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,9,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,9,2);

-- Mapplet
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,10,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,10,2);

-- Source Qualifier
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,11,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,11,2);

-- Union
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,12,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,12,2);

-- Normalizer
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,13,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,13,2);

-- Sorter
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,14,1);
INSERT INTO cbp_trans_supp_conn (cbp_agile_mode_id, cbp_trans_type_id, cbp_trans_conn_type_id) VALUES (2,14,2);

INSERT INTO cbp_target_type (cbp_target_type_id, cbp_target_type_desc) values (1,'Database');

INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (1,'INPUT');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (2,'OUTPUT');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (3,'INPUT/OUTPUT');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (4,'VARIABLE');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (5,'LOOKUP');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (6,'AGGREGATOR GROUP BY');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (7,'ROUTER GROUP');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (8,'EXPECTED OUTPUT');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (9,'ROUTER GROUP PORT');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (10,'INPUT/OUTPUT/MASTER');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (11,'LOOKUP/OUTPUT');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (12,'LOOKUP/RETURN/OUTPUT');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (13,'DYNLOOKUP/OUTPUT');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (99,'UNDRALEU');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (100,'UNDRALEUJOINERMASTER');
INSERT INTO cbp_port_type (cbp_port_type_id, cbp_port_type_desc) values (14,'INPUT/MASTER');

INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,1,1,'TEST_CASE_ID','TEST_CASE_ID','TEST_CASE_ID','DECIMAL',10,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,1,2,'TEST_DESCRIPTION','TEST_DESCRIPTION','TEST_DESCRIPTION','STRING',200,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,2,1,'TEST_CASE_ID','TEST_CASE_ID','TEST_CASE_ID','DECIMAL',10,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,2,2,'TEST_DESCRIPTION','TEST_DESCRIPTION','TEST_DESCRIPTION','STRING',200,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,3,1,'TEST_CASE_ID','TEST_CASE_ID','TEST_CASE_ID','DECIMAL',10,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,3,2,'TEST_DESCRIPTION','TEST_DESCRIPTION','TEST_DESCRIPTION','STRING',200,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,4,1,'TEST_CASE_ID','TEST_CASE_ID','TEST_CASE_ID','DECIMAL',10,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,4,2,'TEST_DESCRIPTION','TEST_DESCRIPTION','TEST_DESCRIPTION','STRING',200,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,5,1,'TEST_CASE_ID','TEST_CASE_ID','TEST_CASE_ID','DECIMAL',10,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,5,2,'TEST_DESCRIPTION','TEST_DESCRIPTION','TEST_DESCRIPTION','STRING',200,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,6,1,'TEST_CASE_ID','TEST_CASE_ID','TEST_CASE_ID','DECIMAL',10,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,6,2,'TEST_DESCRIPTION','TEST_DESCRIPTION','TEST_DESCRIPTION','STRING',200,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,7,1,'TEST_CASE_ID','TEST_CASE_ID','TEST_CASE_ID','DECIMAL',10,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,7,2,'TEST_DESCRIPTION','TEST_DESCRIPTION','TEST_DESCRIPTION','STRING',200,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,8,1,'TEST_CASE_ID','TEST_CASE_ID','TEST_CASE_ID','DECIMAL',10,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,8,2,'TEST_DESCRIPTION','TEST_DESCRIPTION','TEST_DESCRIPTION','STRING',200,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,3,3,'FILTER_CONDITION','FILTER_CONDITION','FILTER_CONDITION','STRING',10,0);
INSERT INTO cbp_agile_mode_def_port (cbp_agile_mode_id, cbp_trans_type_id, cbp_agile_mode_def_port_id, cbp_agile_mode_def_port_desc, cbp_field_name, cbp_port_name, cbp_port_data_type, cbp_port_precision, cbp_port_scale) VALUES (2,4,3,'UPDATE_STRATEGY_FLAG','UPDATE_STRATEGY_FLAG','UPDATE_STRATEGY_FLAG','STRING',15,0);

INSERT INTO cbp_test_stage (cbp_test_stage_id, cbp_test_stage_name) VALUES (0, 'Work-in-Progress');
INSERT INTO cbp_test_stage (cbp_test_stage_id, cbp_test_stage_name) VALUES (1, 'Development');
INSERT INTO cbp_test_stage (cbp_test_stage_id, cbp_test_stage_name) VALUES (2, 'QA');
INSERT INTO cbp_test_stage (cbp_test_stage_id, cbp_test_stage_name) VALUES (3, 'System Test');
INSERT INTO cbp_test_stage (cbp_test_stage_id, cbp_test_stage_name) VALUES (4, 'Pre-Production');
INSERT INTO cbp_test_stage (cbp_test_stage_id, cbp_test_stage_name) VALUES (5, 'UAT');
INSERT INTO cbp_test_stage (cbp_test_stage_id, cbp_test_stage_name) VALUES (6, 'Production');
INSERT INTO cbp_test_stage (cbp_test_stage_id, cbp_test_stage_name) VALUES (7, 'Gold Test Data');
INSERT INTO cbp_test_stage (cbp_test_stage_id, cbp_test_stage_name) VALUES (8, 'Regression Test Data');

-- Supporting Data for Test Data Function
INSERT INTO cbp_td_src_type (src_type_id, src_type_name) VALUES (1, 'JDBC'); -- JDBC Sourced
INSERT INTO cbp_td_src_type (src_type_id, src_type_name) VALUES (2, 'Faker'); -- Managed by Data Faker

INSERT INTO cbp_td_src_prop_type (src_prop_type_id, src_prop_type_name) VALUES (1, 'JDBC URL Detail');
INSERT INTO cbp_td_src_prop_type (src_prop_type_id, src_prop_type_name) VALUES (2, 'Data Faker Detail');
INSERT INTO cbp_td_src_prop_type (src_prop_type_id, src_prop_type_name) VALUES (3, 'Act Tag Id');
INSERT INTO cbp_td_src_prop_type (src_prop_type_id, src_prop_type_name) VALUES (4, 'Act Tag Trans Id');
INSERT INTO cbp_td_src_prop_type (src_prop_type_id, src_prop_type_name) VALUES (5, 'Environment Type');
INSERT INTO cbp_td_src_prop_type (src_prop_type_id, src_prop_type_name) VALUES (6, 'Test Data Class');
INSERT INTO cbp_td_src_prop_type (src_prop_type_id, src_prop_type_name) VALUES (7, 'Faker YML File Name');
INSERT INTO cbp_td_src_prop_type (src_prop_type_id, src_prop_type_name) VALUES (8, 'Faker Key');
INSERT INTO cbp_td_src_prop_type (src_prop_type_id, src_prop_type_name) VALUES (9, 'Table Name');

COMMIT;	
