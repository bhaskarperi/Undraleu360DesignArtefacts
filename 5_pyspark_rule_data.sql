--Overall
--ignore the comments part start with # or enclosed in '' or enclosed in "" e.g.
--#repartition() can be used here
--"repartition() can be used here "
--'repartition() can be used here '
--OR multiline comments
--'''
--This is a multiline
--comment. I can type here whatever I want.
--repartition() can be used here
--'''
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000001,'Naming Convention - PySpark Script','Naming Convention - PySpark Script','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000001,'Naming Convention - PySpark Script','^(pysprk_)',null,'Naming Convention - PySpark Script',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000001,51000001,sysdate,sysdate);
--Instruction to implement above rule
--Get script name from git/etc and process
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000002,'Use of repartition() vs. coalesce()','Use of repartition() vs. coalesce()','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--Violate if repartition(x) is being used anywhere in the script in a proper place
--where x can be any number
--proper place mean should be assigned to a RDD/DF variable e.g.
--logData_04 = logData_1.repartition(6)
--or
--logData_02 = logData_1.repartition( 5 )
--Example script
--job_01_readFile.py (with violation)
--job_02_wordCount (with no violation)
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000003,'Use of map() vs. mapPartitions()','Use of map() vs. mapPartitions()','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--Violate if map(x) is being used anywhere in the script in a proper place
--where x can be any value
--proper place mean should be assigned to a RDD/DF variable e.g.
--rdd_logFile_03=rdd_logFile_02.map(lambda x: (x,1))
--or
--rdd_02=rdd_01.map( lambda x:  (x,1) )
--Example script
--job_05_readFileBasicRDDoper.py (with violation)
--job_07_mapAndmapPartitionInRDDandDF.py (with violation)
--job_02_wordCount.py (no violation)
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000004,'Use of User Defined Functions (UDF)','Use of User Defined Functions (UDF)','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--Violate if udf(x) or spark.udf.register(x) is being used anywhere in the script in a proper place
--where x can be any value
--proper place mean should be assigned to a RDD/DF variable e.g.
--upperCaseUDF = udf(lambda z:upperCase(z),StringType())    
--or
--spark.udf.register("convertUDF", convertCase,StringType())
--Example script (with violation)
--job_09_implementUDF_A.py
--job_10_implementUDF_B.py
--job_11_implementUDF_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000005,'Job has spark.driver.memory defined out of Range','Job has spark.driver.memory defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002001,'spark.driver.memory Min. Value (bytes)','-1',null,'spark.driver.memory Min. Value (bytes)',null,'COEURDATA_51000005_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002002,'spark.driver.memory Max. Value (bytes)','-1',null,'spark.driver.memory Max. Value (bytes)',null,'COEURDATA_51000005_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000005,51002001,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000005,51002002,sysdate,sysdate);
--Instruction to implement above rule
--
--step-1:
--Get the spark.driver.memory value from the section spark=() below
--spark=(SparkSession
--.builder
--.master('spark://localhost:8095')
--.appName('ReadWriteCsvFile.com')
--.config('spark.driver.memory','4048')
--.config('spark.submit.deployMode','client')
--.config('spark.executor.memory','471859200')
--.config('spark.executor.cores',2)
--.config('spark.yarn.queue','short').
--getOrCreate()
--)
--expected values are  bytes (b), kibibytes (k), mebibytes (m), gibibytes (g), tebibytes (t), or pebibytes(p)
--E.g. 50b, 100k, or 250m.
-- Step-2:
--Convert to bytes if not already in bytes
--step-3
--get associated values from parameters spark.driver.memory Min. Value (bytes) and spark.driver.memory Max. Value (bytes)
-- Violate if value from step-1 is not between the step-3 Min. Value and Max. Value
--spark.udf.register("convertUDF", convertCase,StringType())
--Example script (with violation)
--job_08_readWriteCsvWithClusterConfig.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000006,'Job has spark.executor.memory defined out of Range','Job has spark.executor.memory defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002005,'spark.executor.memory Min. Value (bytes)','-1',null,'spark.executor.memory Min. Value (bytes)',null,'COEURDATA_51000006_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002006,'spark.executor.memory Max. Value (bytes)','-1',null,'spark.executor.memory Max. Value (bytes)',null,'COEURDATA_51000006_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000006,51002005,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000006,51002006,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000005 with only differernce is to pick spark.executor.memory value instead of spark.driver.memory
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000007,'Job has spark.executor.cores defined out of Range','Job has spark.executor.cores defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002009,'spark.executor.cores Min. Value','-1',null,'spark.executor.cores Min. Value',null,'COEURDATA_51000007_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002010,'spark.executor.cores Max. Value','-1',null,'spark.executor.cores Max. Value',null,'COEURDATA_51000007_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000007,51002009,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000007,51002010,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000005 with only differernce is to pick Job has spark.executor.cores value instead of spark.driver.memory
-- and conversion to bytes is not required
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000008,'Use of Too Many coalesce()','Use of Too Many coalesce()','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51000008,'Maximum Number of coalesce() Allowed','1',null,'Maximum Number of coalesce() Allowed',null,'COEURDATA_51000008','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000008,51000008,sysdate,sysdate);
--Instruction to implement above rule
--Violate if coalesce(x) is being used anywhere in the script in a proper place
--where x can be any number
--proper place mean should be assigned to a RDD/DF variable e.g.
--logData_03 = logData_02.coalesce(3)
--or
--logData_05 = logData_02.coalesce( 8 )
--Example script
--job_01_readFile.py (with violation)
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000009,'Use of Too Many mapPartitions','Use of Too Many mapPartitions','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51000009,'Maximum Number of mapPartitions Allowed','1',null,'Maximum Number of mapPartitions Allowed',null,'COEURDATA_51000009','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000009,51000009,sysdate,sysdate);
--Instruction to implement above rule
--Same and rule 51000008 with differernce is to pick mapPartitions instead of coalesce
--Example script
--job_07_mapAndmapPartitionInRDDandDF
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000010,'Use of Narrow Transformation(s)','Use of Narrow Transformation(s)','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--Get script name from git/etc and process
--Violate if any of these is Available in the script mapPartition(x),flatMap(),filter(x),union()
--Example scripts
--job_05_readFileBasicRDDoper
--job_07_mapAndmapPartitionInRDDandDF

--Overall
--ignore the comments part start with # or enclosed in '' or enclosed in "" e.g.
--#repartition() can be used here
--"repartition() can be used here "
--'repartition() can be used here '
--OR multiline comments
--'''
--This is a multiline
--comment. I can type here whatever I want.
--repartition() can be used here
--'''
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000011,'Job with spark.yarn.queue not defined as per Standard','Job with spark.yarn.queue not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);

INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000011,'Job with spark.yarn.queue not defined as per Standard','default',null,'Job with spark.yarn.queue not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);

INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000011,51000011,sysdate,sysdate);
--Instruction to implement above rule
--
--step-1:
--Get the spark.yarn.queue value from the section spark=() below
--spark=(SparkSession
--.builder
--.master('spark://localhost:8095')
--.appName('ReadWriteCsvFile.com')
--.config('spark.driver.memory','4048')
--.config('spark.submit.deployMode','client')
--.config('spark.executor.memory','471859200')
--.config('spark.executor.cores',2)
--.config('spark.yarn.queue','short').
--getOrCreate()
--)
--
-- pass the value from step-1 to the Rule handler
--OR violate the rule if spark.yarn.queue is not defined in Step-1
--OR violate the rule if step-1 clause is not defined at all
--Example script (with violation)
--job_08_readWriteCsvWithClusterConfig.py
--job_19_implementUDFWithClusterConfig.py

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000012,'Job has jdbc fetchsize defined out of Range','Job has jdbc fetchsize defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');

Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002007,'Jdbc fetchsize Min. Value','-1',null,'Jdbc fetchsize Min. Value',null,'COEURDATA_51000012_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);

Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002008,'Jdbc fetchsize Max. Value','-1',null,'Jdbc fetchsize Max. Value',null,'COEURDATA_51000012_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);

Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000012,51002007,sysdate,sysdate);

Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000012,51002008,sysdate,sysdate);
--Instruction to implement above rule
--
--step-1:
--Get the fetchsize value from the spark.read where .format("jdbc") below
--spark.read \
--    .format("jdbc") \
--    .option("fetchsize","2000")  \
--    .option("url", ora_url) \
--   .option("driver", "oracle.jdbc.OracleDriver") \
--    .option("query", "select cbp_rule_id, cbp_rule_name from cbp_rule where cbp_rule_id=2") \
--    .option("user", "undra_infa_prod") \
--    .option("password", "riz") \
--    .load() 
-- Step-2:
--get associated values from parameters jdbc fetchsize Min. Value and jdbc fetchsize Max. Value
--Violate if value from step-1 is not between the step-3 Min. Value and Max. Value
--Example script
--job_13_df_JDBC_read_01_A
--job_13_df_JDBC_read_01_B
--job_13_df_JDBC_read_01_C
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000013,'Job has jdbc batchsize defined out of Range','Job has jdbc batchsize defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');

Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002011,'Jdbc batchsize Min. Value','-1',null,'Jdbc batchsize Min. Value',null,'COEURDATA_51000013_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);

Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002012,'Jdbc batchsize Max. Value','-1',null,'Jdbc batchsize Max. Value',null,'COEURDATA_51000013_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);

Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000013,51002011,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000013,51002012,sysdate,sysdate);
--Instruction to implement above rule
--
--step-1:
--Get the batchsize value from the spark.read where .format("jdbc") below
--spark.read \
--    .format("jdbc") \
--    .option("batchsize","2000")  \
--    .option("url", ora_url) \
--   .option("driver", "oracle.jdbc.OracleDriver") \
--    .option("query", "select cbp_rule_id, cbp_rule_name from cbp_rule where cbp_rule_id=2") \
--    .option("user", "undra_infa_prod") \
--    .option("password", "riz") \
--    .load() 
-- Step-2:
--get associated values from parameters jdbc batchsize Min. Value and jdbc batchsize Max. Value
--Violate if value from step-1 is not between the step-3 Min. Value and Max. Value
--Example script
--job_20_df_JDBC_write_01_A.py
--job_20_df_JDBC_write_01_B.py
--job_20_df_JDBC_write_01_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000014,'Job has spark.driver.memoryOverhead defined out of Range','Job has spark.driver.memoryOverhead defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');

Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002013,'spark.driver.memoryOverhead Min. Value (bytes)','-1',null,'spark.driver.memoryOverhead Min. Value (bytes)',null,'COEURDATA_51000014_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002014,'spark.driver.memoryOverhead Max. Value (bytes)','-1',null,'spark.driver.memoryOverhead Max. Value (bytes)',null,'COEURDATA_51000014_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
--
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000014,51002013,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000014,51002014,sysdate,sysdate);
--Instruction to implement above rule
--
--Same as Rule 51000005 on to seach for the property 'spark.driver.memoryOverhead'
--Example script (with violation)
--job_21_implementUDF_V2_WithClusterConf_A.py
--job_21_implementUDF_V2_WithClusterConf_B.py
--job_21_implementUDF_V2_WithClusterConf_C.py
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000015,'Job has spark.executor.memoryOverhead defined out of Range','Job has spark.executor.memoryOverhead defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
--
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002015,'spark.executor.memoryOverhead Min. Value (bytes)','-1',null,'spark.executor.memoryOverhead Min. Value (bytes)',null,'COEURDATA_51000015_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002016,'spark.executor.memoryOverhead Max. Value (bytes)','-1',null,'spark.executor.memoryOverhead Max. Value (bytes)',null,'COEURDATA_51000015_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
--
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000015,51002015,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000015,51002016,sysdate,sysdate);
--Instruction to implement above rule
--
--Same as Rule 51000005 on to seach for the property 'spark.executor.memoryOverhead'
--Example script (with violation)
--job_21_implementUDF_V2_WithClusterConf_A.py
--job_21_implementUDF_V2_WithClusterConf_B.py
--job_21_implementUDF_V2_WithClusterConf_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000016,'Job has spark.memory.offHeap.size defined out of Range','Job has spark.memory.offHeap.size defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
--
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002017,'spark.memory.offHeap.size Min. Value (bytes)','-1',null,'spark.memory.offHeap.size Min. Value (bytes)',null,'COEURDATA_51000016_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002018,'spark.memory.offHeap.size Max. Value (bytes)','-1',null,'spark.memory.offHeap.size Max. Value (bytes)',null,'COEURDATA_51000016_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
--
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000016,51002017,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000016,51002018,sysdate,sysdate);
--
--Instruction to implement above rule
--Same as Rule 51000005 on to seach for the property 'spark.memory.offHeap.size'
--Example script (with violation)
--job_21_implementUDF_V2_WithClusterConf_A.py
--job_21_implementUDF_V2_WithClusterConf_B.py
--job_21_implementUDF_V2_WithClusterConf_C.py
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000017,'Job with spark.memory.offHeap.enabled not defined as per Standard','Job with spark.memory.offHeap.enabled not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000017,'Job with spark.memory.offHeap.enabled not defined as per Standard','true',null,'Job with spark.memory.offHeap.enabled not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000017,51000017,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000012. Use value 'spark.memory.offHeap.enabled' instead of 'spark.yarn.queue'
--Example script (with violation)
--job_21_implementUDF_V2_WithClusterConf_A.py
--job_21_implementUDF_V2_WithClusterConf_B.py
--job_21_implementUDF_V2_WithClusterConf_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000018,'Job has spark.memory.fraction defined out of Range','Job has spark.memory.fraction defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
--
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002019,'spark.memory.fraction Min. Value','-1',null,'spark.memory.fraction Min. Value',null,'COEURDATA_51000018_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);

Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002020,'spark.memory.fraction Max. Value','-1',null,'spark.memory.fraction Max. Value',null,'COEURDATA_51000018_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
--
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000018,51002019,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000018,51002020,sysdate,sysdate);
--
--Instruction to implement above rule
--spark.memory.fraction
--Same as Rule 51000005 on to seach for the property 'spark.memory.fraction'
--Example script (with violation)
--job_21_implementUDF_V2_WithClusterConf_A.py
--job_21_implementUDF_V2_WithClusterConf_B.py
--job_21_implementUDF_V2_WithClusterConf_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000019,'Job has spark.memory.storageFraction defined out of Range','Job has spark.memory.storageFraction defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
--
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002021,'spark.memory.storageFraction Min. Value','-1',null,'spark.memory.storageFraction Min. Value',null,'COEURDATA_51000019_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002022,'spark.memory.storageFraction Max. Value','-1',null,'spark.memory.storageFraction Max. Value',null,'COEURDATA_51000019_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
--
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000019,51002021,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000019,51002022,sysdate,sysdate);
--
--Instruction to implement above rule
--spark.memory.storageFraction
--Same as Rule 51000005 on to seach for the property 'spark.memory.storageFraction'
--Example script (with violation)
--job_21_implementUDF_V2_WithClusterConf_A.py
--job_21_implementUDF_V2_WithClusterConf_B.py
--job_21_implementUDF_V2_WithClusterConf_C.py
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000020,'Job has the property "spark.memory.offHeap.enabled" enabled without setting "spark.memory.offHeap.size"','Job has the property "spark.memory.offHeap.enabled" enabled without setting "spark.memory.offHeap.size"','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--if spark.memory.offHeap.size have value to true but spark.memory.offHeap.size is not available in the same config
--refer to rules 51000016,51000016 
--Example script (with violation)
--job_22_implementUDF_V2_WithClusterConf_A_IssueRunning
--job_22_implementUDF_V2_WithClusterConf_B_IssueRunning
--job_22_implementUDF_V2_WithClusterConf_C_IssueRunning
--job_21_implementUDF_V2_WithClusterConf_A (No violation)

--Overall
--ignore the comments part start with # or enclosed in '' or enclosed in "" e.g.
--#repartition() can be used here
--"repartition() can be used here "
--'repartition() can be used here '
--OR multiline comments
--'''
--This is a multiline
--comment. I can type here whatever I want.
--repartition() can be used here
--'''
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000021,'Use of Window Function(s)','Use of Window Function(s)','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--Get script name from git/etc and process
--Violate if any of these is Available in the script 
--row_number(),rank(),dense_rank(),percent_rank(),ntile(),cume_dist(),lag(),lead()
--Example scripts
--job23_windowingFunctions.py
--job24_windowingFunctions.py
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000022,'Use of groupByKey vs. reduceByKey','Use of groupByKey vs. reduceByKey','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--Violate if groupByKey() is being used anywhere in the script in a proper place
--Example script
--job_25_reduceByKeyVSgroupByKey_A.py
--job_25_reduceByKeyVSgroupByKey_B.py
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000023,'Use of collect() operation(s)','Use of collect() operation(s)','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--Violate if collect() is being used anywhere in the script in a proper place
--Example script
--job_05_readFileBasicRDDoper.py
--job_25_reduceByKeyVSgroupByKey_A.py
--job_25_reduceByKeyVSgroupByKey_B.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000024,'Use of Too Many User Defined Functions (UDFs)','Use of Too Many User Defined Functions (UDFs)','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51000024,'Maximum Number of User Defined Functions (UDFs) Allowed','1',null,'Maximum Number of User Defined Functions (UDFs) Allowed',null,'COEURDATA_51000024','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000024,51000024,sysdate,sysdate);
--Instruction to implement above rule
--Do a search on the string in same was as in rule 51000004 and pass the numberof if UDF to the handler
--Example
--job_21_implementUDF_V2_WithClusterConf_A.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000025,'Use of Too Many collect() operations','Use of Too Many collect() operations','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51000025,'Maximum Number of collect() operations Allowed','1',null,'Maximum Number of collect() operations Allowed',null,'COEURDATA_51000025','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000025,51000025,sysdate,sysdate);
--Instruction to implement above rule
--Do a search on the string in same was as in rule 51000023 and pass the numberof if collect() function to the  handler
--Example
--job_25_reduceByKeyVSgroupByKey_A
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000026,'Use of Too Many Narrow Transformation(s)','Use of Too Many Narrow Transformation(s)','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51000026,'Maximum Number of Narrow Transformation(s) Allowed','1',null,'Maximum Number of Narrow Transformation(s) Allowed',null,'COEURDATA_51000026','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000026,51000026,sysdate,sysdate);
--Instruction to implement above rule
--Do a search on the string in same was as in rule 51000010 and pass the numberof if Narrow Transformation(s) to handler
--job_05_readFileBasicRDDoper
--job_07_mapAndmapPartitionInRDDandDF
--Overall
--ignore the comments part start with # or enclosed in '' or enclosed in "" e.g.
--#repartition() can be used here
--"repartition() can be used here "
--'repartition() can be used here '
--OR multiline comments
--'''
--This is a multiline
--comment. I can type here whatever I want.
--repartition() can be used here
--'''
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000031,'Job has spark.sql.inMemoryColumnarStorage.batchSize defined out of Range','Job has spark.sql.inMemoryColumnarStorage.batchSize defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002031,'spark.sql.inMemoryColumnarStorage.batchSize Min. Value','-1',null,'spark.sql.inMemoryColumnarStorage.batchSize Min. Value',null,'COEURDATA_51000031_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002032,'spark.sql.inMemoryColumnarStorage.batchSize Max. Value','-1',null,'spark.sql.inMemoryColumnarStorage.batchSize Max. Value',null,'COEURDATA_51000031_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000031,51002031,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000031,51002032,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.inMemoryColumnarStorage.batchSize
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000032,'Job has spark.sql.broadcastTimeout defined out of Range','Job has spark.sql.broadcastTimeout defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002033,'spark.sql.broadcastTimeout Min. Value','-1',null,'spark.sql.broadcastTimeout Min. Value',null,'COEURDATA_51000032_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002034,'spark.sql.broadcastTimeout Max. Value','-1',null,'spark.sql.broadcastTimeout Max. Value',null,'COEURDATA_51000032_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000032,51002033,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000032,51002034,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.broadcastTimeout
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000033,'Job has spark.sql.shuffle.partitions defined out of Range','Job has spark.sql.shuffle.partitions defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002035,'spark.sql.shuffle.partitions Min. Value','-1',null,'spark.sql.shuffle.partitions Min. Value',null,'COEURDATA_51000033_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002036,'spark.sql.shuffle.partitions Max. Value','-1',null,'spark.sql.shuffle.partitions Max. Value',null,'COEURDATA_51000033_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000033,51002035,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000033,51002036,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.shuffle.partitions
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000034,'Job with spark.sql.inMemoryColumnarStorage.compressed not defined as per Standard','Job with spark.sql.inMemoryColumnarStorage.compressed not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000034,'Job with spark.sql.inMemoryColumnarStorage.compressed not defined as per Standard','false',null,'Job with spark.sql.inMemoryColumnarStorage.compressed not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000034,51000034,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000012. Use Property 'spark.sql.inMemoryColumnarStorage.compressed'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000035,'Job with spark.sql.cbo.enabled not defined as per Standard','Job with spark.sql.cbo.enabled not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000035,'Job with spark.sql.cbo.enabled not defined as per Standard','false',null,'Job with spark.sql.cbo.enabled not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000035,51000035,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000012. Use Property 'spark.sql.cbo.enabled'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000036,'Job has spark.sql.autoBroadcastJoinThreshold defined out of Range','Job has spark.sql.autoBroadcastJoinThreshold defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002037,'spark.sql.autoBroadcastJoinThreshold Min. Value (bytes)','-1',null,'spark.sql.autoBroadcastJoinThreshold Min. Value (bytes)',null,'COEURDATA_51000036_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002038,'spark.sql.autoBroadcastJoinThreshold Max. Value (bytes)','-1',null,'spark.sql.autoBroadcastJoinThreshold Max. Value (bytes)',null,'COEURDATA_51000036_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000036,51002037,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000036,51002038,sysdate,sysdate);
--Instruction to implement above rule
--
--step-1:
--Get the spark.sql.autoBroadcastJoinThreshold value from the section spark=() 
--e.g config('spark.sql.autoBroadcastJoinThreshold','100000')
--expected values are  bytes b(both upper/lower case), kibibytes k/kb both upper/lower case),
--megabibytes m/mb both upper/lower case), gibibytes g/gb both upper/lower case), tebibytes t/tb both upper/lower case)
--, or pebibytes p/p bboth upper/lower case)
--E.g. 50b, 100k, or 250m or 250TB
--if none of b/k etc defined then it is bytes
-- Step-2:
--Convert to bytes if not already in bytes
--step-3
--get associated values from parameters spark.sql.autoBroadcastJoinThreshold Min. Value (bytes) and spark.sql.autoBroadcastJoinThreshold Max. Value (bytes)
-- Violate if value from step-1 is not between the step-3 Min. Value and Max. Value
--spark.udf.register("convertUDF", convertCase,StringType())
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
/*
1-extact query from the property "query" where statement is of type spark.read  and format is ("jdbc").
2-pass query to parser in same way we did for other applications
e.g:
df_01 = spark.read \
    .format("jdbc") \
    .option("url", ora_url) \
    .option("driver", "oracle.jdbc.OracleDriver") \
    .option("query", "select cbp_rule_id, cbp_rule_name from cbp_rule where cbp_rule_id<20") \
    .option("user", "undra_infa_prod") \
    .option("password", "riz") \
    .option("fetchsize","5000") \
    .load()
df_01.show()
Example Code for of the rules below:
job_13_df_JDBC_read_01_A (containts simple query)
job_27_df_JDBC_read_01_forParserRules_A (with Violation)
job_27_df_JDBC_read_01_forParserRules_B (with Violation)
job_27_df_JDBC_read_01_forParserRules_C (with Violation)
*/

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (51000041,'Jdbc read - has Hard-coded Schema','Jdbc read - has Hard-coded Schema','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N');
--code based on following ADF Rule
--11191251	Dataflow Source Query - has Hard-coded Schema

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (51000042,'Jdbc read - has Too Many Joins','Jdbc read - has Too Many Joins','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N');
--code based on following ADF Rule
--11191252	Dataflow Source Query - has Too Many Joins

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (51000043,'Jdbc read - has Too Many Tables Used in the SQL','Jdbc read - has Too Many Tables Used in the SQL','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N');
--code based on following ADF Rule
--11191253	Dataflow Source Query - has Too Many Tables Used in the SQL

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (51000044,'Jdbc read - has Too Many In-Line Views Used in the SQL','Jdbc read - has Too Many In-Line Views Used in the SQL','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N');
--code based on following ADF Rule
--11191254	Dataflow Source Query - has Too Many In-Line Views Used in the SQL

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (51000045,'Jdbc read - has Too Many Order By Clauses in the SQL','Jdbc read - has Too Many Order By Clauses in the SQL','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N');
--to code based on following ADF Rule
--11191255	Dataflow Source Query - has Too Many Order By Clauses in the SQL

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (51000046,'Jdbc read - has Too Many Colums in the Order By Clause in the SQL','Jdbc read - has Too Many Colums in the Order By Clause in the SQL','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N');
--code based on following ADF Rule
--11191256	Dataflow Source Query - has Too Many Colums in the Order By Clause in the SQL


Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (51000047,'Jdbc read - Use of Black Listed Table in the SQL','Jdbc read - Use of Black Listed Table in the SQL','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N');
--code based on following ADF Rule
--11191257	Dataflow Source Query - Use of Black Listed Table in the SQL

Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY) values (51000048,'Jdbc read - Use of Large Table in the SQL','Jdbc read - Use of Large Table in the SQL','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N');
--code based on following ADF Rule
--11191258	Dataflow Source Query - Use of Large Table in the SQL


--CBP_PARAMETER
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (51000042,'Jdbc read - Number of Joins Used in a Query','1',null,'Jdbc read - Number of Joins Used in a Query',null,'COEURDATA_51000042','NUMBER',null,sysdate,sysdate,'Y','N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (51000043,'Jdbc read - Maximum Number of Tables Used in the SQL','1',null,'Jdbc read - Maximum Number of Tables Used in the SQL',null,'COEURDATA_51000043','NUMBER',null,sysdate,sysdate,'Y','N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (51000044,'Jdbc read - Maximum Number of In-line Views Used in a Query','1',null,'Jdbc read - Maximum Number of In-line Views Used in a Query',null,'COEURDATA_51000044','NUMBER',null,sysdate,sysdate,'Y','N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (51000045,'Jdbc read - Number of Order By Clauses Used in a Query','1',null,'Jdbc read - Number of Order By Clauses Used in a Query',null,'COEURDATA_51000045','NUMBER',null,sysdate,sysdate,'Y','N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC) values (51000046,'Jdbc read - Maximum Number of Columns in the Order By Clause in the SQL','1',null,'Jdbc read - Maximum Number of Columns in the Order By Clause in the SQL',null,'COEURDATA_51000046','NUMBER',null,sysdate,sysdate,'Y','N');

--CBP_RULE_PARAMETER
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000042,51000042,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000043,51000043,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000044,51000044,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000045,51000045,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000046,51000046,sysdate,sysdate);
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000051,'Job may result in Shuffling due to the use of sort_values Operation(s)','Job may result in Shuffling due to the use of sort_values Operation(s)','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--Violate if sort_values is being used anywhere in the script
--Example script
--job_28_pd_readCsv.py (with violation)
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000052,'Use of print Statement(s)','Use of print Statement(s)','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--Instruction to implement above rule
--Violate if print is being used anywhere in the script
--Example script
--job_28_pd_readCsv.py (with violation)
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000053,'Job has spark.sql.files.maxPartitionBytes defined out of Range','Job has spark.sql.files.maxPartitionBytes defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002051,'spark.sql.files.maxPartitionBytes Min. Value','-1',null,'spark.sql.files.maxPartitionBytes Min. Value',null,'COEURDATA_51000053_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002052,'spark.sql.files.maxPartitionBytes Max. Value','-1',null,'spark.sql.files.maxPartitionBytes Max. Value',null,'COEURDATA_51000053_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000053,51002051,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000053,51002052,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.files.maxPartitionBytes
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000054,'Job has spark.sql.files.openCostInBytes defined out of Range','Job has spark.sql.files.openCostInBytes defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002053,'spark.sql.files.openCostInBytes Min. Value','-1',null,'spark.sql.files.openCostInBytes Min. Value',null,'COEURDATA_51000054_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002054,'spark.sql.files.openCostInBytes Max. Value','-1',null,'spark.sql.files.openCostInBytes Max. Value',null,'COEURDATA_51000054_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000054,51002053,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000054,51002054,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.files.openCostInBytes
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000055,'Job has spark.sql.files.minPartitionNum defined out of Range','Job has spark.sql.files.minPartitionNum defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002055,'spark.sql.files.minPartitionNum Min. Value','-1',null,'spark.sql.files.minPartitionNum Min. Value',null,'COEURDATA_51000055_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002056,'spark.sql.files.minPartitionNum Max. Value','-1',null,'spark.sql.files.minPartitionNum Max. Value',null,'COEURDATA_51000055_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000055,51002055,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000055,51002056,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.files.minPartitionNum
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000056,'Job has spark.sql.sources.parallelPartitionDiscovery.threshold defined out of Range','Job has spark.sql.sources.parallelPartitionDiscovery.threshold defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002057,'spark.sql.sources.parallelPartitionDiscovery.threshold Min. Value','-1',null,'spark.sql.sources.parallelPartitionDiscovery.threshold Min. Value',null,'COEURDATA_51000056_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002058,'spark.sql.sources.parallelPartitionDiscovery.threshold Max. Value','-1',null,'spark.sql.sources.parallelPartitionDiscovery.threshold Max. Value',null,'COEURDATA_51000056_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000056,51002057,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000056,51002058,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.sources.parallelPartitionDiscovery.threshold
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000057,'Job has spark.sql.sources.parallelPartitionDiscovery.parallelism defined out of Range','Job has spark.sql.sources.parallelPartitionDiscovery.parallelism defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002059,'spark.sql.sources.parallelPartitionDiscovery.parallelism Min. Value','-1',null,'spark.sql.sources.parallelPartitionDiscovery.parallelism Min. Value',null,'COEURDATA_51000057_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002060,'spark.sql.sources.parallelPartitionDiscovery.parallelism Max. Value','-1',null,'spark.sql.sources.parallelPartitionDiscovery.parallelism Max. Value',null,'COEURDATA_51000057_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000057,51002059,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000057,51002060,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.sources.parallelPartitionDiscovery.parallelism
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000058,'Job has spark.sql.adaptive.coalescePartitions.minPartitionSize defined out of Range','Job has spark.sql.adaptive.coalescePartitions.minPartitionSize defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002061,'spark.sql.adaptive.coalescePartitions.minPartitionSize Min. Value','-1',null,'spark.sql.adaptive.coalescePartitions.minPartitionSize Min. Value',null,'COEURDATA_51000058_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002062,'spark.sql.adaptive.coalescePartitions.minPartitionSize Max. Value','-1',null,'spark.sql.adaptive.coalescePartitions.minPartitionSize Max. Value',null,'COEURDATA_51000058_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000058,51002061,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000058,51002062,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.adaptive.coalescePartitions.minPartitionSize
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000059,'Job has spark.sql.adaptive.advisoryPartitionSizeInBytes defined out of Range','Job has spark.sql.adaptive.advisoryPartitionSizeInBytes defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002063,'spark.sql.adaptive.advisoryPartitionSizeInBytes Min. Value','-1',null,'spark.sql.adaptive.advisoryPartitionSizeInBytes Min. Value',null,'COEURDATA_51000059_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002064,'spark.sql.adaptive.advisoryPartitionSizeInBytes Max. Value','-1',null,'spark.sql.adaptive.advisoryPartitionSizeInBytes Max. Value',null,'COEURDATA_51000059_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000059,51002063,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000059,51002064,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.adaptive.advisoryPartitionSizeInBytes
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000060,'Job has spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes defined out of Range','Job has spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002065,'spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes Min. Value','-1',null,'spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes Min. Value',null,'COEURDATA_51000060_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002066,'spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes Max. Value','-1',null,'spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes Max. Value',null,'COEURDATA_51000060_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000060,51002065,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000060,51002066,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000071,'Job has spark.sql.adaptive.coalescePartitions.initialPartitionNum defined out of Range','Job has spark.sql.adaptive.coalescePartitions.initialPartitionNum defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002071,'spark.sql.adaptive.coalescePartitions.initialPartitionNum Min. Value','-1',null,'spark.sql.adaptive.coalescePartitions.initialPartitionNum Min. Value',null,'COEURDATA_51000071_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002072,'spark.sql.adaptive.coalescePartitions.initialPartitionNum Max. Value','-1',null,'spark.sql.adaptive.coalescePartitions.initialPartitionNum Max. Value',null,'COEURDATA_51000071_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000071,51002071,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000071,51002072,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.adaptive.coalescePartitions.initialPartitionNum
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000072,'Job has spark.sql.adaptive.autoBroadcastJoinThreshold defined out of Range','Job has spark.sql.adaptive.autoBroadcastJoinThreshold defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002073,'spark.sql.adaptive.autoBroadcastJoinThreshold Min. Value','-1',null,'spark.sql.adaptive.autoBroadcastJoinThreshold Min. Value',null,'COEURDATA_51000072_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002074,'spark.sql.adaptive.autoBroadcastJoinThreshold Max. Value','-1',null,'spark.sql.adaptive.autoBroadcastJoinThreshold Max. Value',null,'COEURDATA_51000072_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000072,51002073,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000072,51002074,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.adaptive.autoBroadcastJoinThreshold
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000073,'Job has spark.sql.adaptive.maxShuffledHashJoinLocalMapThreshold defined out of Range','Job has spark.sql.adaptive.maxShuffledHashJoinLocalMapThreshold defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002075,'spark.sql.adaptive.maxShuffledHashJoinLocalMapThreshold Min. Value','-1',null,'spark.sql.adaptive.maxShuffledHashJoinLocalMapThreshold Min. Value',null,'COEURDATA_51000073_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002076,'spark.sql.adaptive.maxShuffledHashJoinLocalMapThreshold Max. Value','-1',null,'spark.sql.adaptive.maxShuffledHashJoinLocalMapThreshold Max. Value',null,'COEURDATA_51000073_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000073,51002075,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000073,51002076,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.adaptive.maxShuffledHashJoinLocalMapThreshold
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000074,'Job has spark.sql.adaptive.skewJoin.skewedPartitionFactor defined out of Range','Job has spark.sql.adaptive.skewJoin.skewedPartitionFactor defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002077,'spark.sql.adaptive.skewJoin.skewedPartitionFactor Min. Value','-1',null,'spark.sql.adaptive.skewJoin.skewedPartitionFactor Min. Value',null,'COEURDATA_51000074_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002078,'spark.sql.adaptive.skewJoin.skewedPartitionFactor Max. Value','-1',null,'spark.sql.adaptive.skewJoin.skewedPartitionFactor Max. Value',null,'COEURDATA_51000074_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000074,51002077,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000074,51002078,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.adaptive.skewJoin.skewedPartitionFactor
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
Insert into CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) values (51000075,'Job has spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes defined out of Range','Job has spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes defined out of Range','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,'N');
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002079,'spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes Min. Value','-1',null,'spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes Min. Value',null,'COEURDATA_51000075_SIZE_MIN','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) values (51002080,'spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes Max. Value','-1',null,'spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes Max. Value',null,'COEURDATA_51000075_MAX','NUMBER',null,sysdate,sysdate,'Y','N',null,null,null);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000075,51002079,sysdate,sysdate);
Insert into CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) values (51000075,51002080,sysdate,sysdate);
--Instruction to implement above rule
--Same as 51000007 but use value for property spark.sql.adaptive.skewJoin.skewedPartitionThresholdInBytes
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py

--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000081,'Job with spark.sql.adaptive.coalescePartitions.enabled not defined as per Standard','Job with spark.sql.adaptive.coalescePartitions.enabled not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000081,'Job with spark.sql.adaptive.coalescePartitions.enabled not defined as per Standard','true',null,'Job with spark.sql.adaptive.coalescePartitions.enabled not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000081,51000081,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000034. Use Property 'spark.sql.adaptive.coalescePartitions.enabled'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000082,'Job with spark.sql.adaptive.localShuffleReader.enabled not defined as per Standard','Job with spark.sql.adaptive.localShuffleReader.enabled not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000082,'Job with spark.sql.adaptive.localShuffleReader.enabled not defined as per Standard','true',null,'Job with spark.sql.adaptive.localShuffleReader.enabled not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000082,51000082,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000034. Use Property 'spark.sql.adaptive.localShuffleReader.enabled'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000083,'Job with spark.sql.adaptive.optimizeSkewsInRebalancePartitions.enabled not defined as per Standard','Job with spark.sql.adaptive.optimizeSkewsInRebalancePartitions.enabled not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000083,'Job with spark.sql.adaptive.optimizeSkewsInRebalancePartitions.enabled not defined as per Standard','true',null,'Job with spark.sql.adaptive.optimizeSkewsInRebalancePartitions.enabled not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000083,51000083,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000034. Use Property 'spark.sql.adaptive.optimizeSkewsInRebalancePartitions.enabled'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000084,'Job with spark.sql.adaptive.skewJoin.enabled not defined as per Standard','Job with spark.sql.adaptive.skewJoin.enabled not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000084,'Job with spark.sql.adaptive.skewJoin.enabled not defined as per Standard','true',null,'Job with spark.sql.adaptive.skewJoin.enabled not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000084,51000084,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000034. Use Property 'spark.sql.adaptive.skewJoin.enabled'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000085,'Job with spark.sql.adaptive.coalescePartitions.parallelismFirst not defined as per Standard','Job with spark.sql.adaptive.coalescePartitions.parallelismFirst not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000085,'Job with spark.sql.adaptive.coalescePartitions.parallelismFirst not defined as per Standard','true',null,'Job with spark.sql.adaptive.coalescePartitions.parallelismFirst not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000085,51000085,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000034. Use Property 'spark.sql.adaptive.coalescePartitions.parallelismFirst'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000086,'Job with spark.sql.adaptive.forceOptimizeSkewedJoin not defined as per Standard','Job with spark.sql.adaptive.forceOptimizeSkewedJoin not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000086,'Job with spark.sql.adaptive.forceOptimizeSkewedJoin not defined as per Standard','false',null,'Job with spark.sql.adaptive.forceOptimizeSkewedJoin not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000086,51000086,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000034. Use Property 'spark.sql.adaptive.forceOptimizeSkewedJoin'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000087,'Job with spark.sql.adaptive.customCostEvaluatorClass not defined as per Standard','Job with spark.sql.adaptive.customCostEvaluatorClass not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000087,'Job with spark.sql.adaptive.customCostEvaluatorClass not defined as per Standard','Not Defined',null,'Job with spark.sql.adaptive.customCostEvaluatorClass not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000087,51000087,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000034. Use Property 'spark.sql.adaptive.customCostEvaluatorClass'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
----
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000088,'Job with spark.sql.adaptive.optimizer.excludedRules not defined as per Standard','Job with spark.sql.adaptive.optimizer.excludedRules not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000088,'Job with spark.sql.adaptive.optimizer.excludedRules not defined as per Standard','false',null,'Job with spark.sql.adaptive.optimizer.excludedRules not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000088,51000088,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000034. Use Property 'spark.sql.adaptive.optimizer.excludedRules'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
--
--
INSERT INTO CBP_RULE (CBP_RULE_ID,CBP_RULE_SHORT_DESC,CBP_RULE_NAME,CBP_OBJECT_TYPE,CBP_CODE_TYPE_ID,CBP_IMP_TYPE_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_ADD_PARAM_ALLOWED,IS_DEPRECATED,DS_STAGE_TYPE,DS_ORCH_STAGE_IDENTIFIER,IS_DUMMY,IS_LEGACY,CBP_OBJECT_SUB_TYPE,EXCEPTION_COLUMN,ALLOW_EXCEPTIONS) VALUES (51000089,'Job with spark.sql.adaptive.enabled not defined as per Standard','Job with spark.sql.adaptive.enabled not defined as per Standard','PySpark Script',7100,14000,sysdate,sysdate,'N','N',null,null,'N','N',null,null,null);
--
INSERT INTO CBP_PARAMETER (CBP_PARAMETER_ID,CBP_PARAMETER_NAME,CBP_PARAMETER_DEFAULT_VALUE,CBP_PARAMETER_SITE_VALUE,CBP_PARAMETER_DESCRIPTION,CBP_PARAMETER_KEYWORD,CBP_PARAMETER_PLACE_HOLDER,CBP_PARAMETER_DATA_TYPE,CBP_PATTERN_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP,CBP_CONFIGURABLE,CBP_IS_PROJECT_SPECIFIC,IS_EXCEPTION,IS_LIST,IS_REGEX) VALUES (51000089,'Job with spark.sql.adaptive.enabled not defined as per Standard','false',null,'Job with spark.sql.adaptive.enabled not defined as per Standard',null,null,'STRING',2000,sysdate,sysdate,'Y','N',null,null,null);
--
INSERT INTO CBP_RULE_PARAMETER (CBP_RULE_ID,CBP_PARAMETER_ID,CBP_CREATED_TIMESTAMP,CBP_UPDATED_TIMESTAMP) VALUES (51000089,51000089,sysdate,sysdate);
--Instruction to implement above rule
--Same as Rule 51000034. Use Property 'spark.sql.adaptive.enabled'
--Example jobs
--job_26_readWriteCsvWithSparkSQLConfig_A.py
--job_26_readWriteCsvWithSparkSQLConfig_B.py
--job_26_readWriteCsvWithSparkSQLConfig_C.py
commit;






