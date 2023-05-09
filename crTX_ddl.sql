--Date:11-05-14  By: M.rizwan
--Change:
--Added columns CBP_PROPERTY_SORT_ORDER, CBP_PROPERTY_GROUP_SORT_ORDER, CBP_GROUP_DISPLAY_TEXT in CBP_PROPERTY table
/********************************************************************************************************
Copyright CoeurData Ltd 2009-2022

*********************************************************************************************************
*************** CHANGE HISTORY **************************************************************************
DATE		WHO			DESCRIPTION
16DEC2022	BP			Pulled from the Legacy scripts.
27MAR2023	PY			Added cbp_trans_etarget_mapper, cbp_etarget_field and cbp_etarget tables
09MAY2023	BP			Added cbp_tag.connection_list_json
			
********************************************************************************************************/
DROP TABLE cbp_rep_int_svc_mapper;
DROP TABLE cbp_clone_mapping;
DROP TABLE cbp_site_property;
DROP TABLE cbp_repository_property;
DROP TABLE cbp_infa_to_db_type_map;
DROP TABLE cbp_trans_etarget_mapper;
DROP TABLE cbp_trans_target_mapper;
DROP TABLE cbp_etarget_field;
DROP TABLE cbp_etarget;
DROP TABLE cbp_target_field;
DROP TABLE cbp_target;
DROP TABLE cbp_trans_source_mapper;
DROP TABLE cbp_transformation_port;
DROP TABLE cbp_transformation;
DROP TABLE cbp_port_type;
DROP TABLE cbp_source_field;
DROP TABLE cbp_source;
DROP TABLE cbp_target_type;
DROP TABLE cbp_trans_supp_op;
DROP TABLE cbp_agile_op;
DROP TABLE cbp_trans_supp_conn;
DROP TABLE cbp_trans_supp_agile_mode;
DROP TABLE cbp_def_port_value;
DROP TABLE cbp_agile_mode_def_port;
DROP TABLE cbp_ut_metrics;
DROP TABLE cbp_tag;
DROP TABLE cbp_test_stage;
DROP TABLE cbp_mapping;
DROP TABLE cbp_review_status;
DROP TABLE cbp_int_service_property;
DROP TABLE cbp_infa_domain_property;
DROP TABLE cbp_property;
DROP TABLE cbp_int_svc_dom_mapper;
DROP TABLE cbp_infa_domain;
DROP TABLE cbp_int_service;
DROP TABLE cbp_trans_misc_conn;
DROP TABLE cbp_agile_mode;
DROP TABLE cbp_trans_conn_type;
DROP TABLE cbp_conn_type;
DROP TABLE cbp_trans_type;
DROP TABLE cbp_trans_output_level;

-- Test Data Generation Capability
DROP TABLE cbp_td_src_prop;
DROP TABLE cbp_td_src_prop_type;
DROP TABLE cbp_td_src_tag_map;
DROP TABLE cbp_td_src_tag;
DROP TABLE cbp_td_src;
DROP TABLE cbp_td_src_type;

CREATE TABLE cbp_agile_mode
(
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_agile_mode_desc  VARCHAR2(50)  NOT NULL ,
	cbp_is_supported  VARCHAR2(1)  NOT NULL ,
	cbp_has_def_ports  VARCHAR2(1)  NOT NULL ,
	cbp_is_default  VARCHAR2(1)  NOT NULL 
);

ALTER TABLE cbp_agile_mode
	ADD CONSTRAINT  XPKcbp_agile_mode PRIMARY KEY (cbp_agile_mode_id);

CREATE TABLE cbp_agile_mode_def_port
(
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_trans_type_id  INTEGER  NOT NULL ,
	cbp_agile_mode_def_port_id  INTEGER  NOT NULL ,
	cbp_agile_mode_def_port_desc  VARCHAR(20)  NOT NULL ,
	cbp_field_name  VARCHAR(20)  NOT NULL ,
	cbp_port_name  VARCHAR2(250)  NOT NULL ,
	cbp_port_data_type  VARCHAR(20)  NOT NULL ,
	cbp_port_precision  INTEGER  NOT NULL ,
	cbp_port_scale  INTEGER  NOT NULL 
);

ALTER TABLE cbp_agile_mode_def_port
	ADD CONSTRAINT  XPKcbp_agile_mode_def_port PRIMARY KEY (cbp_agile_mode_id,cbp_trans_type_id,cbp_agile_mode_def_port_id);

CREATE TABLE cbp_agile_op
(
	cbp_agile_op_id  INTEGER  NOT NULL ,
	cbp_agile_op_desc  VARCHAR2(100)  NOT NULL 
);

ALTER TABLE cbp_agile_op
	ADD CONSTRAINT  XPKcbp_agile_op PRIMARY KEY (cbp_agile_op_id);

CREATE TABLE cbp_clone_mapping
(
	cbp_clone_mapping_id  INTEGER  NOT NULL ,
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_project_id  INTEGER  NULL ,
	cbp_folder_id  INTEGER  NULL ,
	cbp_repository_id  INTEGER  NULL ,
	cbp_clone_mapping_name  VARCHAR2(240)  NOT NULL 
);

ALTER TABLE cbp_clone_mapping
	ADD CONSTRAINT  XPKcbp_orig_mapping PRIMARY KEY (cbp_clone_mapping_id,cbp_tag_id,cbp_agile_mode_id);

CREATE TABLE cbp_conn_type
(
	cbp_conn_type_id  INTEGER  NOT NULL ,
	cbp_conn_desc  VARCHAR2(50)  NOT NULL 
);

ALTER TABLE cbp_conn_type
	ADD CONSTRAINT  XPKcbp_conn_type PRIMARY KEY (cbp_conn_type_id);

CREATE TABLE cbp_def_port_value
(
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_trans_type_id  INTEGER  NOT NULL ,
	cbp_agile_mode_def_port_id  INTEGER  NOT NULL ,
	cbp_def_port_value_id  INTEGER  NOT NULL ,
	cbp_def_port_value_desc  VARCHAR2(200)  NOT NULL 
);

ALTER TABLE cbp_def_port_value
	ADD CONSTRAINT  XPKcbp_def_port_value PRIMARY KEY (cbp_agile_mode_id,cbp_trans_type_id,cbp_agile_mode_def_port_id,cbp_def_port_value_id);

CREATE TABLE cbp_infa_domain
(
	cbp_infa_domain_id  INTEGER  NOT NULL ,
	cbp_infa_domain_name  VARCHAR2(50)  NOT NULL ,
	cbp_infa_domain_is_default  VARCHAR2(1)  NOT NULL 
);

ALTER TABLE cbp_infa_domain
	ADD CONSTRAINT  XPKcbp_infa_domain PRIMARY KEY (cbp_infa_domain_id);

CREATE TABLE cbp_infa_domain_property
(
	cbp_infa_domain_id  INTEGER  NOT NULL ,
	cbp_property_id  INTEGER  NOT NULL ,
	cbp_property_group_id  INTEGER  NOT NULL ,
	cbp_property_value  VARCHAR2(200)  NULL 
);

ALTER TABLE cbp_infa_domain_property
	ADD CONSTRAINT  XPKcbp_infa_domain_property PRIMARY KEY (cbp_infa_domain_id,cbp_property_id,cbp_property_group_id);

CREATE TABLE cbp_infa_to_db_type_map
(
	cbp_src_db_type_cd  VARCHAR2(20)  NOT NULL ,
	cbp_tgt_db_type_cd  VARCHAR2(20)  NOT NULL ,
	cbp_src_dtype  VARCHAR2(20)  NOT NULL ,
	cbp_tgt_dtype  VARCHAR2(20)  NOT NULL ,
	cbp_sq_dtype  VARCHAR2(20)  NOT NULL ,
	cbp_dtype_precision  INTEGER  NULL ,
	cbp_dtype_scale  INTEGER  NULL ,
	cbp_pick_default  VARCHAR2(1)  NOT NULL ,
	cbp_comments  VARCHAR2(100)  NULL 
);

ALTER TABLE cbp_infa_to_db_type_map
	ADD CONSTRAINT  XPKcbp_infa_to_db_type_map PRIMARY KEY (cbp_src_db_type_cd,cbp_tgt_db_type_cd,cbp_src_dtype,cbp_tgt_dtype);

CREATE TABLE cbp_int_service
(
	cbp_int_service_id  INTEGER  NOT NULL ,
	cbp_int_service_name  VARCHAR2(50)  NOT NULL ,
	cbp_int_service_is_default  VARCHAR2(1)  NOT NULL 
);

ALTER TABLE cbp_int_service
	ADD CONSTRAINT  XPKcbp_int_service PRIMARY KEY (cbp_int_service_id);

CREATE TABLE cbp_int_service_property
(
	cbp_int_service_id  INTEGER  NOT NULL ,
	cbp_property_id  INTEGER  NOT NULL ,
	cbp_property_group_id  INTEGER  NOT NULL ,
	cbp_property_value  VARCHAR2(200)  NULL 
);

ALTER TABLE cbp_int_service_property
	ADD CONSTRAINT  XPKcbp_int_service_property PRIMARY KEY (cbp_int_service_id,cbp_property_id,cbp_property_group_id);

CREATE TABLE cbp_int_svc_dom_mapper
(
	cbp_int_service_id  INTEGER  NOT NULL ,
	cbp_infa_domain_id  INTEGER  NOT NULL ,
	cbp_is_default  VARCHAR2(1)  NULL ,
	cbp_is_disabled  VARCHAR2(1)  NULL 
);

ALTER TABLE cbp_int_svc_dom_mapper
	ADD CONSTRAINT  XPKcbp_int_svc_dom_mapper PRIMARY KEY (cbp_int_service_id,cbp_infa_domain_id);

CREATE TABLE cbp_mapping
(
	cbp_mapping_id  INTEGER  NOT NULL ,
	cbp_project_id  INTEGER  NULL ,
	cbp_repository_id  INTEGER  NULL ,
	cbp_folder_id  INTEGER  NULL ,
	cbp_infa_mapping_id  INTEGER  NOT NULL ,
	cbp_infa_mapping_version  INTEGER  NOT NULL ,
	cbp_infa_mapping_name  VARCHAR2(240)  NOT NULL 
);

ALTER TABLE cbp_mapping
	ADD CONSTRAINT  XPKcbp_mapping PRIMARY KEY (cbp_mapping_id);

CREATE TABLE cbp_port_type
(
	cbp_port_type_id  INTEGER  NOT NULL ,
	cbp_port_type_desc  VARCHAR(20)  NOT NULL 
);

ALTER TABLE cbp_port_type
	ADD CONSTRAINT  XPKcbp_port_type PRIMARY KEY (cbp_port_type_id);

CREATE TABLE cbp_property
(
	cbp_property_id  INTEGER  NOT NULL ,
	cbp_property_group_id  INTEGER  NOT NULL ,
	cbp_property_name  VARCHAR2(200)  NOT NULL ,
	cbp_property_placeholder  VARCHAR2(200)  NOT NULL ,
	cbp_property_data_type  VARCHAR2(50)  NOT NULL ,
	cbp_property_default_value  VARCHAR2(200)  NULL ,
	cbp_property_display_text  VARCHAR2(100)  NOT NULL ,
	cbp_comments  VARCHAR2(250)  NULL ,
	cbp_is_encrypted  VARCHAR2(1)  NULL ,
	cbp_property_sort_order  INTEGER  NULL ,
	cbp_property_group_sort_order  INTEGER  NULL ,
	cbp_group_display_text  VARCHAR2(100)  NULL 
);

ALTER TABLE cbp_property
	ADD CONSTRAINT  XPKcbp_property PRIMARY KEY (cbp_property_id,cbp_property_group_id);

CREATE TABLE cbp_rep_int_svc_mapper
(
	cbp_int_service_id  INTEGER  NOT NULL ,
	cbp_repository_id  INTEGER  NOT NULL ,
	cbp_is_default  VARCHAR2(1)  NULL ,
	cbp_is_disabled  VARCHAR2(1)  NULL 
);

ALTER TABLE cbp_rep_int_svc_mapper
	ADD CONSTRAINT  XPKcbp_rep_int_svc_mapper PRIMARY KEY (cbp_int_service_id,cbp_repository_id);
	
CREATE TABLE cbp_repository_property
(
	cbp_property_group_id  INTEGER  NOT NULL ,
	cbp_repository_id  INTEGER  NOT NULL ,
	cbp_property_id  INTEGER  NOT NULL ,
	cbp_property_value  VARCHAR2(200)  NULL 
);

ALTER TABLE cbp_repository_property
	ADD CONSTRAINT  XPKcbp_repository_property PRIMARY KEY (cbp_property_group_id,cbp_repository_id,cbp_property_id);

CREATE TABLE cbp_review_status
(
	cbp_project_id  INTEGER  NOT NULL ,
	cbp_repository_id  INTEGER  NOT NULL ,
	cbp_folder_id  INTEGER  NOT NULL ,
	cbp_mapping_id  INTEGER  NOT NULL ,
	cbp_mapping_name  VARCHAR2(20)  NOT NULL ,
	cbp_review_date  DATE  NOT NULL ,
	cbp_rule_list_id  INTEGER  NOT NULL ,
	cbp_violation_count  INTEGER  NULL 
);

ALTER TABLE cbp_review_status
	ADD CONSTRAINT  XPKcbp_review_status PRIMARY KEY (cbp_project_id,cbp_repository_id,cbp_folder_id,cbp_mapping_id,cbp_mapping_name,cbp_review_date,cbp_rule_list_id);

CREATE TABLE cbp_site_property
(
	cbp_property_id  INTEGER  NOT NULL ,
	cbp_property_group_id  INTEGER  NOT NULL ,
	cbp_property_value  VARCHAR2(200)  NULL 
);

ALTER TABLE cbp_site_property
	ADD CONSTRAINT  XPKcbp_site_property PRIMARY KEY (cbp_property_id,cbp_property_group_id);

CREATE TABLE cbp_source
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_source_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_source_name  VARCHAR2(30)  NOT NULL ,
	cbp_connection_id  INTEGER  NULL ,
	cbp_target_type_id  INTEGER  NULL 
);

ALTER TABLE cbp_source
	ADD CONSTRAINT  XPKcbp_source PRIMARY KEY (cbp_tag_id,cbp_source_id,cbp_agile_mode_id);

CREATE TABLE cbp_source_field
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_source_id  INTEGER  NOT NULL ,
	cbp_field_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_field_name  VARCHAR2(30)  NOT NULL ,
	cbp_field_data_type  VARCHAR(20)  NOT NULL ,
	cbp_field_precision  INTEGER  NOT NULL ,
	cbp_field_scale  INTEGER  NOT NULL 
);

ALTER TABLE cbp_source_field
	ADD CONSTRAINT  XPKcbp_source_field PRIMARY KEY (cbp_tag_id,cbp_source_id,cbp_field_id,cbp_agile_mode_id);

CREATE TABLE cbp_tag
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_tag_name  VARCHAR2(100)  NOT NULL ,
	cbp_tag_comment  VARCHAR2(500)  NULL ,
	cbp_tag_created_dt  DATE  NOT NULL ,
	cbp_mapping_id  INTEGER  NULL ,
	cbp_test_stage_id  INTEGER  NULL ,
	cbp_tag_status  VARCHAR2(20)  NULL ,
	cbp_workflow_name  VARCHAR2(255)  NULL,
	cbp_agg_test_status VARCHAR2(20)  NULL,
    cbp_pipeline_json   clob  NULL,
    connection_list_json   clob  NULL	
);

ALTER TABLE cbp_tag
	ADD CONSTRAINT  XPKcbp_tag PRIMARY KEY (cbp_tag_id,cbp_agile_mode_id);

CREATE TABLE cbp_target
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_target_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_target_name  VARCHAR2(30)  NOT NULL ,
	cbp_target_type_id  INTEGER  NULL ,
	cbp_connection_id  INTEGER  NULL 
);

ALTER TABLE cbp_target
	ADD CONSTRAINT  XPKcbp_target PRIMARY KEY (cbp_tag_id,cbp_target_id,cbp_agile_mode_id);

CREATE TABLE cbp_target_field
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_target_id  INTEGER  NOT NULL ,
	cbp_field_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_field_name  VARCHAR2(30)  NOT NULL ,
	cbp_field_data_type  VARCHAR(20)  NULL ,
	cbp_field_precision  INTEGER  NOT NULL ,
	cbp_field_scale  INTEGER  NOT NULL 
);

ALTER TABLE cbp_target_field
	ADD CONSTRAINT  XPKcbp_target_field PRIMARY KEY (cbp_tag_id,cbp_target_id,cbp_field_id,cbp_agile_mode_id);

CREATE TABLE cbp_target_type
(
	cbp_target_type_id  INTEGER  NOT NULL ,
	cbp_target_type_desc  VARCHAR2(50)  NOT NULL 
);

ALTER TABLE cbp_target_type
	ADD CONSTRAINT  XPKcbp_target_type PRIMARY KEY (cbp_target_type_id);

CREATE TABLE cbp_test_stage
(
	cbp_test_stage_id    INTEGER  NOT NULL ,
	cbp_test_stage_name  VARCHAR2(50)  NOT NULL,
	cbp_comments 	     VARCHAR2(200) NULL
);

ALTER TABLE cbp_test_stage
	ADD CONSTRAINT  XPKcbp_test_stage PRIMARY KEY (cbp_test_stage_id);

CREATE TABLE cbp_trans_conn_type
(
	cbp_trans_conn_type_id  INTEGER  NOT NULL ,
	cbp_trans_conn_desc  VARCHAR2(50)  NOT NULL ,
	cbp_trans_conn_display_text  VARCHAR2(100)  NOT NULL ,
	cbp_conn_type_id  INTEGER  NULL 
);

ALTER TABLE cbp_trans_conn_type
	ADD CONSTRAINT  XPKcbp_trans_conn_type PRIMARY KEY (cbp_trans_conn_type_id);

CREATE TABLE cbp_trans_misc_conn
(
	cbp_trans_type_id  INTEGER  NOT NULL ,
	cbp_trans_conn_type_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL 
);

ALTER TABLE cbp_trans_misc_conn
	ADD CONSTRAINT  XPKcbp_trans_misc_conn PRIMARY KEY (cbp_trans_type_id,cbp_trans_conn_type_id,cbp_agile_mode_id);

CREATE TABLE cbp_trans_output_level
(
	cbp_trans_output_level  INTEGER  NOT NULL ,
	cbp_trans_output_level_type  VARCHAR2(20)  NOT NULL 
);

ALTER TABLE cbp_trans_output_level
	ADD CONSTRAINT  XPKcbp_trans_output_level PRIMARY KEY (cbp_trans_output_level);

CREATE TABLE cbp_trans_source_mapper
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_transformation_port_id  INTEGER  NOT NULL ,
	cbp_transformation_id  INTEGER  NOT NULL ,
	cbp_source_id  INTEGER  NOT NULL ,
	cbp_field_id  INTEGER  NOT NULL 
);

ALTER TABLE cbp_trans_source_mapper
	ADD CONSTRAINT  XPKcbp_trans_source_mapper PRIMARY KEY (cbp_tag_id,cbp_agile_mode_id,cbp_transformation_port_id,cbp_transformation_id,cbp_source_id,cbp_field_id);

CREATE TABLE cbp_trans_supp_agile_mode
(
	cbp_trans_type_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL 
);

ALTER TABLE cbp_trans_supp_agile_mode
	ADD CONSTRAINT  XPKcbp_trans_supp_agile_mode PRIMARY KEY (cbp_trans_type_id,cbp_agile_mode_id);

CREATE TABLE cbp_trans_supp_conn
(
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_trans_type_id  INTEGER  NOT NULL ,
	cbp_trans_conn_type_id  INTEGER  NOT NULL 
);

ALTER TABLE cbp_trans_supp_conn
	ADD CONSTRAINT  XPKcbp_trans_supp_conn PRIMARY KEY (cbp_agile_mode_id,cbp_trans_type_id,cbp_trans_conn_type_id);

CREATE TABLE cbp_trans_supp_op
(
	cbp_trans_type_id  INTEGER  NOT NULL ,
	cbp_agile_op_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL 
);

ALTER TABLE cbp_trans_supp_op
	ADD CONSTRAINT  XPKcbp_trans_supp_op PRIMARY KEY (cbp_trans_type_id,cbp_agile_op_id,cbp_agile_mode_id);

CREATE TABLE cbp_trans_target_mapper
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_transformation_id  INTEGER  NOT NULL ,
	cbp_transformation_port_id  INTEGER  NOT NULL ,
	cbp_target_id  INTEGER  NOT NULL ,
	cbp_field_id  INTEGER  NOT NULL 
);

ALTER TABLE cbp_trans_target_mapper
	ADD CONSTRAINT  XPKcbp_trans_target_mapper PRIMARY KEY (cbp_tag_id,cbp_agile_mode_id,cbp_transformation_id,cbp_transformation_port_id,cbp_target_id,cbp_field_id);

CREATE TABLE cbp_trans_type
(
	cbp_trans_type_id  INTEGER  NOT NULL ,
	cbp_trans_type_desc  VARCHAR2(50)  NOT NULL ,
	cbp_trans_output_level  INTEGER  NULL 
);

ALTER TABLE cbp_trans_type
	ADD CONSTRAINT  XPKcbp_trans_supported_type PRIMARY KEY (cbp_trans_type_id);

CREATE TABLE cbp_transformation
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_transformation_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_transformation_name  VARCHAR2(240)  NOT NULL ,
	cbp_trans_type_id  INTEGER  NULL,
	cbp_infa_transformation_id       INTEGER  NULL 
);

ALTER TABLE cbp_transformation
	ADD CONSTRAINT  XPKcbp_transformation PRIMARY KEY (cbp_tag_id,cbp_transformation_id,cbp_agile_mode_id);

CREATE TABLE cbp_transformation_port
(
	cbp_transformation_port_id  INTEGER  NOT NULL ,
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_transformation_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_port_name  VARCHAR2(250)  NOT NULL ,
	cbp_port_data_type  VARCHAR2(30)  NOT NULL ,
	cbp_port_precision  INTEGER  NOT NULL ,
	cbp_port_scale  INTEGER  NOT NULL ,
	cbp_port_type_id  INTEGER  NULL ,
	cbp_group_name             VARCHAR2(250)  NULL,
	cbp_infa_port_id		 INTEGER  NULL,
	cbp_infa_port_sort_order         INTEGER  NULL
);

ALTER TABLE cbp_transformation_port
	ADD CONSTRAINT  XPKcbp_transformation_port PRIMARY KEY (cbp_transformation_port_id,cbp_tag_id,cbp_transformation_id,cbp_agile_mode_id);

CREATE TABLE cbp_ut_metrics
(
	cbp_project_id  INTEGER  NOT NULL ,
	cbp_repository_id  INTEGER  NOT NULL ,
	cbp_folder_id  INTEGER  NOT NULL ,
	cbp_mapping_id  INTEGER  NOT NULL ,
	cbp_transformation_name  VARCHAR2(255)  NOT NULL ,
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_created_dt  DATE  NOT NULL ,
	cbp_no_of_variable_ports  INTEGER  NULL ,
	cbp_no_of_output_ports  INTEGER  NULL ,
	cbp_no_of_test_runs  INTEGER  NULL ,
	cbp_no_of_test_cases  INTEGER  NULL ,
	cbp_no_of_tests_failed  INTEGER  NULL ,
	cbp_no_of_tests_passed  INTEGER  NULL 
);

ALTER TABLE cbp_ut_metrics
	ADD CONSTRAINT  XPKcbp_ut_metrics PRIMARY KEY (cbp_project_id,cbp_repository_id,cbp_folder_id,cbp_mapping_id,cbp_transformation_name,cbp_tag_id,cbp_agile_mode_id,cbp_created_dt);

CREATE TABLE cbp_etarget
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_etarget_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_etarget_name  VARCHAR2(30)  NOT NULL ,
	cbp_target_type_id  INTEGER  NULL ,
	cbp_connection_id  INTEGER  NULL 
);

ALTER TABLE cbp_etarget
	ADD CONSTRAINT  XPKcbp_etarget PRIMARY KEY (cbp_tag_id,cbp_etarget_id,cbp_agile_mode_id);

CREATE TABLE cbp_etarget_field
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_etarget_id  INTEGER  NOT NULL ,
	cbp_field_id  INTEGER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_field_name  VARCHAR2(30)  NOT NULL ,
	cbp_field_data_type  VARCHAR(20)  NULL ,
	cbp_field_precision  INTEGER  NOT NULL ,
	cbp_field_scale  INTEGER  NOT NULL 
);

ALTER TABLE cbp_etarget_field
	ADD CONSTRAINT  XPKcbp_etarget_field PRIMARY KEY (cbp_tag_id,cbp_etarget_id,cbp_field_id,cbp_agile_mode_id);

CREATE TABLE cbp_trans_etarget_mapper
(
	cbp_tag_id  NUMBER  NOT NULL ,
	cbp_agile_mode_id  INTEGER  NOT NULL ,
	cbp_transformation_id  INTEGER  NOT NULL ,
	cbp_transformation_port_id  INTEGER  NOT NULL ,
	cbp_etarget_id  INTEGER  NOT NULL ,
	cbp_field_id  INTEGER  NOT NULL 
);

ALTER TABLE cbp_trans_etarget_mapper
	ADD CONSTRAINT  XPKcbp_trans_etarget_mapper PRIMARY KEY (cbp_tag_id,cbp_agile_mode_id,cbp_transformation_id,cbp_transformation_port_id,cbp_etarget_id,cbp_field_id);

--Stores the type of data e.g. a JDBC or Faker. We may add more in future
CREATE TABLE cbp_td_src_type
(
	src_type_id  INTEGER  NOT NULL ,
	src_type_name  VARCHAR2(50)  NULL 
);

-- The actual source that will be used for providing the test data
-- The source name is to be entered by the user and has to be unique
-- The src type id is either JDBC or Faker
CREATE TABLE cbp_td_src
(
	src_id  INTEGER  NOT NULL ,
	src_name  VARCHAR2(100)  NULL ,
	src_type_id  INTEGER  NULL 
);

-- This is where we will store all information or properties relevant to the source
-- e.g. the YML file name, the Key in the YML file name etc
-- It will also store, potentially and if required, what act tag id is and what act tag trans id 
-- is etc to know where the data is to be used or what data is available for a specific object
CREATE TABLE cbp_td_src_prop
(
	src_id  INTEGER  NOT NULL ,
	src_prop_type_id  INTEGER  NOT NULL ,
	src_prop_value  VARCHAR2(255)  NULL 
);

-- Used to store whatever useful information we may need in future to be able to use the data for testing
-- For example if we created a test data for a Mapping and Transformation in a Workspace WSP1, Repository REPO1
-- in Folder AAA and for Mapping A and Transformation Trans1 we can store the Act Tag Id and Act Tag Trans Id
-- to list all data available for testing the transformation for the same act tag id
CREATE TABLE cbp_td_src_prop_type
(
	src_prop_type_id  INTEGER  NOT NULL ,
	src_prop_type_name  VARCHAR2(100)  NULL 
);

-- These are identifier tags the user(s) may add to be able to identify the data for future use.
-- For example we can add tags called "Rule Data", "Rules", "Checks" etc for the same data that is cbp_rule related
-- We will store all these tags in the below table and provide the same to the user when the user selects a table
-- A table may have multiple tags. So when a user selects a tag, we need to pick the table using the tag
CREATE TABLE cbp_td_src_tag
(
	src_tag_id  INTEGER  NOT NULL ,
	src_tag_name  VARCHAR2(20)  NULL 
);

-- This stores the tag to source map where we can identify all tags for a data source and also the source mapped to a tag
CREATE TABLE cbp_td_src_tag_map
(
	src_id  INTEGER  NOT NULL ,
	src_tag_id  INTEGER  NOT NULL 
);

-- Primary Keys
ALTER TABLE cbp_td_src_type
	ADD CONSTRAINT  XPKcbp_td_src_type PRIMARY KEY (src_type_id);
	
ALTER TABLE cbp_td_src
	ADD CONSTRAINT  XPKcbp_td_src PRIMARY KEY (src_id);
	
ALTER TABLE cbp_td_src_prop
	ADD CONSTRAINT  XPKcbp_td_src_prop PRIMARY KEY (src_id,src_prop_type_id);
	
ALTER TABLE cbp_td_src_prop_type
	ADD CONSTRAINT  XPKcbp_td_src_prop_type PRIMARY KEY (src_prop_type_id);
	
ALTER TABLE cbp_td_src_tag
	ADD CONSTRAINT  XPKcbp_td_src_tag PRIMARY KEY (src_tag_id);
	
ALTER TABLE cbp_td_src_tag_map
	ADD CONSTRAINT  XPKcbp_td_src_tag_map PRIMARY KEY (src_id,src_tag_id);

-- Foreign Keys

ALTER TABLE cbp_agile_mode_def_port
	ADD (CONSTRAINT  R6000 FOREIGN KEY (cbp_agile_mode_id) REFERENCES cbp_agile_mode(cbp_agile_mode_id));

ALTER TABLE cbp_agile_mode_def_port
	ADD (CONSTRAINT  R6001 FOREIGN KEY (cbp_trans_type_id) REFERENCES cbp_trans_type(cbp_trans_type_id));

--ALTER TABLE cbp_clone_mapping
--	ADD (CONSTRAINT  R6002 FOREIGN KEY (cbp_folder_id,cbp_repository_id) REFERENCES cbp_folder(cbp_folder_id,cbp_repository_id));

ALTER TABLE cbp_clone_mapping
	ADD (CONSTRAINT  R6003 FOREIGN KEY (cbp_project_id) REFERENCES cbp_project(cbp_project_id));

ALTER TABLE cbp_clone_mapping
	ADD (CONSTRAINT  R6004 FOREIGN KEY (cbp_tag_id,cbp_agile_mode_id) REFERENCES cbp_tag(cbp_tag_id,cbp_agile_mode_id));

ALTER TABLE cbp_def_port_value
	ADD (CONSTRAINT  R6005 FOREIGN KEY (cbp_agile_mode_id,cbp_trans_type_id,cbp_agile_mode_def_port_id) REFERENCES cbp_agile_mode_def_port(cbp_agile_mode_id,cbp_trans_type_id,cbp_agile_mode_def_port_id));

ALTER TABLE cbp_infa_domain_property
	ADD (CONSTRAINT  R6006 FOREIGN KEY (cbp_infa_domain_id) REFERENCES cbp_infa_domain(cbp_infa_domain_id));

ALTER TABLE cbp_infa_domain_property
	ADD (CONSTRAINT  R6007 FOREIGN KEY (cbp_property_id,cbp_property_group_id) REFERENCES cbp_property(cbp_property_id,cbp_property_group_id));

ALTER TABLE cbp_int_service_property
	ADD (CONSTRAINT  R6008 FOREIGN KEY (cbp_int_service_id) REFERENCES cbp_int_service(cbp_int_service_id));

ALTER TABLE cbp_int_service_property
	ADD (CONSTRAINT  R6009 FOREIGN KEY (cbp_property_id,cbp_property_group_id) REFERENCES cbp_property(cbp_property_id,cbp_property_group_id));

ALTER TABLE cbp_int_svc_dom_mapper
	ADD (CONSTRAINT  R6010 FOREIGN KEY (cbp_int_service_id) REFERENCES cbp_int_service(cbp_int_service_id));

ALTER TABLE cbp_int_svc_dom_mapper
	ADD (CONSTRAINT  R6011 FOREIGN KEY (cbp_infa_domain_id) REFERENCES cbp_infa_domain(cbp_infa_domain_id));

--ALTER TABLE cbp_mapping
--	ADD (CONSTRAINT  R6012 FOREIGN KEY (cbp_folder_id,cbp_repository_id) REFERENCES cbp_folder(cbp_folder_id,cbp_repository_id));

ALTER TABLE cbp_mapping
	ADD (CONSTRAINT  R6013 FOREIGN KEY (cbp_project_id) REFERENCES cbp_project(cbp_project_id));

ALTER TABLE cbp_property
	ADD (CONSTRAINT  R6014 FOREIGN KEY (cbp_property_group_id) REFERENCES cbp_property_group(cbp_property_group_id));

ALTER TABLE cbp_rep_int_svc_mapper
	ADD (CONSTRAINT  R6015 FOREIGN KEY (cbp_int_service_id) REFERENCES cbp_int_service(cbp_int_service_id));

ALTER TABLE cbp_rep_int_svc_mapper
	ADD (CONSTRAINT  R6016 FOREIGN KEY (cbp_repository_id) REFERENCES cbp_repository(cbp_repository_id));

ALTER TABLE cbp_repository_property
	ADD (CONSTRAINT  R6017 FOREIGN KEY (cbp_property_id,cbp_property_group_id) REFERENCES cbp_property(cbp_property_id,cbp_property_group_id));

ALTER TABLE cbp_repository_property
	ADD (CONSTRAINT  R6018 FOREIGN KEY (cbp_repository_id) REFERENCES cbp_repository(cbp_repository_id));

ALTER TABLE cbp_review_status
	ADD (CONSTRAINT  R6019 FOREIGN KEY (cbp_project_id) REFERENCES cbp_project(cbp_project_id));

ALTER TABLE cbp_review_status
	ADD (CONSTRAINT  R6020 FOREIGN KEY (cbp_repository_id) REFERENCES cbp_repository(cbp_repository_id));

--ALTER TABLE cbp_review_status
--	ADD (CONSTRAINT  R6021 FOREIGN KEY (cbp_folder_id,cbp_repository_id) REFERENCES cbp_folder(cbp_folder_id,cbp_repository_id));

ALTER TABLE cbp_review_status
	ADD (CONSTRAINT  R6022 FOREIGN KEY (cbp_project_id,cbp_rule_list_id) REFERENCES cbp_project_rule_list(cbp_project_id,cbp_rule_list_id));

ALTER TABLE cbp_site_property
	ADD (CONSTRAINT  R6023 FOREIGN KEY (cbp_property_id,cbp_property_group_id) REFERENCES cbp_property(cbp_property_id,cbp_property_group_id));

ALTER TABLE cbp_source
	ADD (CONSTRAINT  R6024 FOREIGN KEY (cbp_tag_id,cbp_agile_mode_id) REFERENCES cbp_tag(cbp_tag_id,cbp_agile_mode_id));

ALTER TABLE cbp_source
	ADD (CONSTRAINT  R6025 FOREIGN KEY (cbp_connection_id) REFERENCES cbp_db_connection(cbp_connection_id));

ALTER TABLE cbp_source
	ADD (CONSTRAINT  R6026 FOREIGN KEY (cbp_target_type_id) REFERENCES cbp_target_type(cbp_target_type_id));

ALTER TABLE cbp_source_field
	ADD (CONSTRAINT  R6027 FOREIGN KEY (cbp_tag_id,cbp_source_id,cbp_agile_mode_id) REFERENCES cbp_source(cbp_tag_id,cbp_source_id,cbp_agile_mode_id));

ALTER TABLE cbp_tag
	ADD (CONSTRAINT  R6028 FOREIGN KEY (cbp_mapping_id) REFERENCES cbp_mapping(cbp_mapping_id));

ALTER TABLE cbp_tag
	ADD (CONSTRAINT  R6029 FOREIGN KEY (cbp_agile_mode_id) REFERENCES cbp_agile_mode(cbp_agile_mode_id));

ALTER TABLE cbp_tag
	ADD (CONSTRAINT  R6030 FOREIGN KEY (cbp_test_stage_id) REFERENCES cbp_test_stage(cbp_test_stage_id));

ALTER TABLE cbp_target
	ADD (CONSTRAINT  R6031 FOREIGN KEY (cbp_target_type_id) REFERENCES cbp_target_type(cbp_target_type_id));

ALTER TABLE cbp_target
	ADD (CONSTRAINT  R6032 FOREIGN KEY (cbp_connection_id) REFERENCES cbp_db_connection(cbp_connection_id));

ALTER TABLE cbp_target
	ADD (CONSTRAINT  R6033 FOREIGN KEY (cbp_tag_id,cbp_agile_mode_id) REFERENCES cbp_tag(cbp_tag_id,cbp_agile_mode_id));

ALTER TABLE cbp_target_field
	ADD (CONSTRAINT  R6034 FOREIGN KEY (cbp_tag_id,cbp_target_id,cbp_agile_mode_id) REFERENCES cbp_target(cbp_tag_id,cbp_target_id,cbp_agile_mode_id));

ALTER TABLE cbp_trans_conn_type
	ADD (CONSTRAINT  R6035 FOREIGN KEY (cbp_conn_type_id) REFERENCES cbp_conn_type(cbp_conn_type_id));

ALTER TABLE cbp_trans_misc_conn
	ADD (CONSTRAINT  R6036 FOREIGN KEY (cbp_trans_type_id) REFERENCES cbp_trans_type(cbp_trans_type_id));

ALTER TABLE cbp_trans_misc_conn
	ADD (CONSTRAINT  R6037 FOREIGN KEY (cbp_trans_conn_type_id) REFERENCES cbp_trans_conn_type(cbp_trans_conn_type_id));

ALTER TABLE cbp_trans_misc_conn
	ADD (CONSTRAINT  R6038 FOREIGN KEY (cbp_agile_mode_id) REFERENCES cbp_agile_mode(cbp_agile_mode_id));

ALTER TABLE cbp_trans_source_mapper
	ADD (CONSTRAINT  R6039 FOREIGN KEY (cbp_tag_id,cbp_source_id,cbp_field_id,cbp_agile_mode_id) REFERENCES cbp_source_field(cbp_tag_id,cbp_source_id,cbp_field_id,cbp_agile_mode_id));

ALTER TABLE cbp_trans_source_mapper
	ADD (CONSTRAINT  R6040 FOREIGN KEY (cbp_transformation_port_id,cbp_tag_id,cbp_transformation_id,cbp_agile_mode_id) REFERENCES cbp_transformation_port(cbp_transformation_port_id,cbp_tag_id,cbp_transformation_id,cbp_agile_mode_id));

ALTER TABLE cbp_trans_supp_agile_mode
	ADD (CONSTRAINT  R6041 FOREIGN KEY (cbp_trans_type_id) REFERENCES cbp_trans_type(cbp_trans_type_id));

ALTER TABLE cbp_trans_supp_agile_mode
	ADD (CONSTRAINT  R6042 FOREIGN KEY (cbp_agile_mode_id) REFERENCES cbp_agile_mode(cbp_agile_mode_id));

ALTER TABLE cbp_trans_supp_conn
	ADD (CONSTRAINT  R6043 FOREIGN KEY (cbp_trans_conn_type_id) REFERENCES cbp_trans_conn_type(cbp_trans_conn_type_id));

ALTER TABLE cbp_trans_supp_conn
	ADD (CONSTRAINT  R6044 FOREIGN KEY (cbp_trans_type_id,cbp_agile_mode_id) REFERENCES cbp_trans_supp_agile_mode(cbp_trans_type_id,cbp_agile_mode_id));

ALTER TABLE cbp_trans_supp_op
	ADD (CONSTRAINT  R6045 FOREIGN KEY (cbp_trans_type_id) REFERENCES cbp_trans_type(cbp_trans_type_id));

ALTER TABLE cbp_trans_supp_op
	ADD (CONSTRAINT  R6046 FOREIGN KEY (cbp_agile_op_id) REFERENCES cbp_agile_op(cbp_agile_op_id));

ALTER TABLE cbp_trans_supp_op
	ADD (CONSTRAINT  R6047 FOREIGN KEY (cbp_agile_mode_id) REFERENCES cbp_agile_mode(cbp_agile_mode_id));

ALTER TABLE cbp_trans_target_mapper
	ADD (CONSTRAINT  R6048 FOREIGN KEY (cbp_tag_id,cbp_agile_mode_id) REFERENCES cbp_tag(cbp_tag_id,cbp_agile_mode_id));

ALTER TABLE cbp_trans_target_mapper
	ADD (CONSTRAINT  R6049 FOREIGN KEY (cbp_transformation_port_id,cbp_tag_id,cbp_transformation_id,cbp_agile_mode_id) REFERENCES cbp_transformation_port(cbp_transformation_port_id,cbp_tag_id,cbp_transformation_id,cbp_agile_mode_id));

ALTER TABLE cbp_trans_target_mapper
	ADD (CONSTRAINT  R6050 FOREIGN KEY (cbp_tag_id,cbp_target_id,cbp_field_id,cbp_agile_mode_id) REFERENCES cbp_target_field(cbp_tag_id,cbp_target_id,cbp_field_id,cbp_agile_mode_id));

ALTER TABLE cbp_trans_type
	ADD (CONSTRAINT  R6051 FOREIGN KEY (cbp_trans_output_level) REFERENCES cbp_trans_output_level(cbp_trans_output_level));

ALTER TABLE cbp_transformation
	ADD (CONSTRAINT  R6052 FOREIGN KEY (cbp_tag_id,cbp_agile_mode_id) REFERENCES cbp_tag(cbp_tag_id,cbp_agile_mode_id));

ALTER TABLE cbp_transformation
	ADD (CONSTRAINT  R6053 FOREIGN KEY (cbp_trans_type_id) REFERENCES cbp_trans_type(cbp_trans_type_id));

ALTER TABLE cbp_transformation_port
	ADD (CONSTRAINT  R6054 FOREIGN KEY (cbp_port_type_id) REFERENCES cbp_port_type(cbp_port_type_id));

ALTER TABLE cbp_transformation_port
	ADD (CONSTRAINT  R6055 FOREIGN KEY (cbp_tag_id,cbp_transformation_id,cbp_agile_mode_id) REFERENCES cbp_transformation(cbp_tag_id,cbp_transformation_id,cbp_agile_mode_id));

ALTER TABLE cbp_ut_metrics
	ADD (CONSTRAINT  R6056 FOREIGN KEY (cbp_project_id) REFERENCES cbp_project(cbp_project_id));

ALTER TABLE cbp_ut_metrics
	ADD (CONSTRAINT  R6057 FOREIGN KEY (cbp_repository_id) REFERENCES cbp_repository(cbp_repository_id));

--ALTER TABLE cbp_ut_metrics
--	ADD (CONSTRAINT  R6058 FOREIGN KEY (cbp_folder_id,cbp_repository_id) REFERENCES cbp_folder(cbp_folder_id,cbp_repository_id));
ALTER TABLE cbp_ut_metrics
	ADD (CONSTRAINT  R6059 FOREIGN KEY (cbp_mapping_id) REFERENCES cbp_mapping(cbp_mapping_id));

ALTER TABLE cbp_ut_metrics
	ADD (CONSTRAINT  R6060 FOREIGN KEY (cbp_tag_id,cbp_agile_mode_id) REFERENCES cbp_tag(cbp_tag_id,cbp_agile_mode_id));

ALTER TABLE cbp_etarget
	ADD (CONSTRAINT  R60311 FOREIGN KEY (cbp_target_type_id) REFERENCES cbp_target_type(cbp_target_type_id));

ALTER TABLE cbp_etarget
	ADD (CONSTRAINT  R60321 FOREIGN KEY (cbp_connection_id) REFERENCES cbp_db_connection(cbp_connection_id));
		
ALTER TABLE cbp_etarget
	ADD (CONSTRAINT  R60331 FOREIGN KEY (cbp_tag_id,cbp_agile_mode_id) REFERENCES cbp_tag(cbp_tag_id,cbp_agile_mode_id));

ALTER TABLE cbp_etarget_field
	ADD (CONSTRAINT  R60341 FOREIGN KEY (cbp_tag_id,cbp_etarget_id,cbp_agile_mode_id) REFERENCES cbp_etarget(cbp_tag_id,cbp_etarget_id,cbp_agile_mode_id));

ALTER TABLE cbp_trans_etarget_mapper
	ADD (CONSTRAINT  R60501 FOREIGN KEY (cbp_tag_id,cbp_etarget_id,cbp_field_id,cbp_agile_mode_id) REFERENCES cbp_etarget_field(cbp_tag_id,cbp_etarget_id,cbp_field_id,cbp_agile_mode_id));

ALTER TABLE cbp_td_src
	ADD (CONSTRAINT  R3001 FOREIGN KEY (src_type_id) REFERENCES cbp_td_src_type(src_type_id));
	
ALTER TABLE cbp_td_src_prop
	ADD (CONSTRAINT  R3002 FOREIGN KEY (src_id) REFERENCES cbp_td_src(src_id));
	
ALTER TABLE cbp_td_src_prop
	ADD (CONSTRAINT  R3005 FOREIGN KEY (src_prop_type_id) REFERENCES cbp_td_src_prop_type(src_prop_type_id));
	
ALTER TABLE cbp_td_src_tag_map
	ADD (CONSTRAINT  R3003 FOREIGN KEY (src_id) REFERENCES cbp_td_src(src_id));
	
ALTER TABLE cbp_td_src_tag_map
	ADD (CONSTRAINT  R3004 FOREIGN KEY (src_tag_id) REFERENCES cbp_td_src_tag(src_tag_id));