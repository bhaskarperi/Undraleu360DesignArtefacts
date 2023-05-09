UPDATE cbp_rule SET is_dummy = 'N' WHERE cbp_rule_id != 0;
UPDATE cbp_rule SET is_dummy = 'Y' WHERE cbp_rule_id = 0;
UPDATE cbp_rule SET is_deprecated='N', is_legacy='N';
UPDATE cbp_rule SET is_dummy = 'N' WHERE cbp_rule_id != 0;
UPDATE cbp_rule SET is_dummy = 'Y' WHERE cbp_rule_id = 0;
UPDATE cbp_rule_list SET is_deleted = 'N';  
UPDATE cbp_user_rule_list SET is_deleted = 'N';

INSERT INTO cbp_signal (signal_id, signal_type_id, signal_name, signal_is_enabled, signal_is_auto, prx_object_type_id, signal_is_good)
SELECT DISTINCT cbp_rule_list_id, 11, cbp_user_rule_list_name||' Review', 'N', 'Y', null, 'Y'
  FROM cbp_user_rule_list
UNION ALL
SELECT DISTINCT cbp_rule_list_id, 13, cbp_user_rule_list_name||' Violations', 'N', 'Y', null, 'N'
  FROM cbp_user_rule_list; 
UPDATE cbp_signal SET is_deleted = 'N';  

COMMIT;