/********************************************************************************************************
Copyright CoeurData Ltd 2009-2022

*********************************************************************************************************
*************** CHANGE HISTORY **************************************************************************
DATE		WHO			DESCRIPTION
09SEP2022	MR			Added 2 rules for DBT (Batch 1)
20NOV2022	BP			Changed the cbp_rule_imp_type_id from 16000 to 17000 for DBT Code Type
********************************************************************************************************/
-- Batch 1
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (22000000,'Naming Convention for Model','Naming Convention for Model','DBT - Model',8200,17000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (22000000,'Naming Convention for Model','^(mdl_)',null,'Naming Convention for Model',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (22000000,22000000,sysdate,sysdate);  
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (22000001,'Naming Convention for Macro','Naming Convention for Macro','DBT - Macro',8200,17000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (22000001,'Naming Convention for Macro','^(mcr_)',null,'Naming Convention for Macro',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (22000001,22000001,sysdate,sysdate);  

-- DBT Parser Rule MR 09SEP2022 (8 Rule)
-- use folder https://github.com/CoeurDataLtd/dbt_dev_02_cloud/tree/branch_01/models/dev_01
-- use following models in folder the folder dev_01
-- Take all file contents as SQL and pass to Parser
-- 
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (22000011,'DBT - Model - has Hard-coded Schema','DBT - Model - has Hard-coded Schema','DBT - Model',8200,1200,sysdate,sysdate,'N','N',null,null,'N','N');
--to code based on following ADF Rule
--11191251	Dataflow Source Query - has Hard-coded Schema

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (22000012,'DBT - Model - has Too Many Joins','DBT - Model - has Too Many Joins','DBT - Model',8200,1200,sysdate,sysdate,'N','N',null,null,'N','N');
--to code based on following ADF Rule
--11191252	Dataflow Source Query - has Too Many Joins

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (22000013,'DBT - Model - has Too Many Tables Used in the SQL','DBT - Model - has Too Many Tables Used in the SQL','DBT - Model',8200,1200,sysdate,sysdate,'N','N',null,null,'N','N');
--to code based on following ADF Rule
--11191253	Dataflow Source Query - has Too Many Tables Used in the SQL

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (22000014,'DBT - Model - has Too Many In-Line Views Used in the SQL','DBT - Model - has Too Many In-Line Views Used in the SQL','DBT - Model',8200,1200,sysdate,sysdate,'N','N',null,null,'N','N');
--to code based on following ADF Rule
--11191254	Dataflow Source Query - has Too Many In-Line Views Used in the SQL

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (22000015,'DBT - Model - has Too Many Order By Clauses in the SQL','DBT - Model - has Too Many Order By Clauses in the SQL','DBT - Model',8200,1200,sysdate,sysdate,'N','N',null,null,'N','N');
--to code based on following ADF Rule
--11191255	Dataflow Source Query - has Too Many Order By Clauses in the SQL

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (22000016,'DBT - Model - has Too Many Colums in the Order By Clause in the SQL','DBT - Model - has Too Many Colums in the Order By Clause in the SQL','DBT - Model',8200,1200,sysdate,sysdate,'N','N',null,null,'N','N');
--to code based on following ADF Rule
--11191256	Dataflow Source Query - has Too Many Colums in the Order By Clause in the SQL


Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (22000017,'DBT - Model - Use of Black Listed Table in the SQL','DBT - Model - Use of Black Listed Table in the SQL','DBT - Model',8200,1200,sysdate,sysdate,'N','N',null,null,'N','N');
--to code based on following ADF Rule
--11191257	Dataflow Source Query - Use of Black Listed Table in the SQL

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (22000018,'DBT - Model - Use of Large Table in the SQL','DBT - Model - Use of Large Table in the SQL','DBT - Model',8200,1200,sysdate,sysdate,'N','N',null,null,'N','N');
--to code based on following ADF Rule
--11191258	Dataflow Source Query - Use of Large Table in the SQL


--CBP_PARAMETER
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (22000012,'DBT - Model - Number of Joins Used in a Query','1',null,'DBT - Model - Number of Joins Used in a Query',null,'COEURDATA_22000012','NUMBER',null,sysdate,sysdate,'Y','N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (22000013,'DBT - Model - Maximum Number of Tables Used in the SQL','1',null,'DBT - Model - Maximum Number of Tables Used in the SQL',null,'COEURDATA_22000013','NUMBER',null,sysdate,sysdate,'Y','N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (22000014,'DBT - Model - Maximum Number of In-line Views Used in a Query','1',null,'DBT - Model - Maximum Number of In-line Views Used in a Query',null,'COEURDATA_22000014','NUMBER',null,sysdate,sysdate,'Y','N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (22000015,'DBT - Model - Number of Order By Clauses Used in a Query','1',null,'DBT - Model - Number of Order By Clauses Used in a Query',null,'COEURDATA_22000015','NUMBER',null,sysdate,sysdate,'Y','N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (22000016,'DBT - Model - Maximum Number of Columns in the Order By Clause in the SQL','1',null,'DBT - Model - Maximum Number of Columns in the Order By Clause in the SQL',null,'COEURDATA_22000016','NUMBER',null,sysdate,sysdate,'Y','N');

--CBP_RULE_PARAMETER
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (22000012,22000012,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (22000013,22000013,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (22000014,22000014,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (22000015,22000015,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (22000016,22000016,sysdate,sysdate);

Commit;
















COMMIT;