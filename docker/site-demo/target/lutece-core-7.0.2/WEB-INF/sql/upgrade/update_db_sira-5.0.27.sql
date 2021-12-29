DO $$
DECLARE 
	max_id_workflow_workflow integer;
	max_id_workflow_state integer;
	max_id_workflow_action integer;
	max_id_workflow_resource_history integer;
	max_id_workflow_icon integer;
	max_id_workflow_task integer;
BEGIN
	-- Workflow workflow
	SELECT MAX(id_workflow)+1 INTO max_id_workflow_workflow FROM workflow_workflow; 
	RAISE NOTICE 'Next workflow %', max_id_workflow_workflow;
	
	EXECUTE 'CREATE SEQUENCE seq_workflow_workflow START WITH ' || max_id_workflow_workflow;
	ALTER TABLE workflow_workflow ALTER COLUMN id_workflow SET DEFAULT nextval('seq_workflow_workflow');

	-- Workflow state
	SELECT MAX(id_state)+1 INTO max_id_workflow_state FROM workflow_state; 
	RAISE NOTICE 'Next workflow state %', max_id_workflow_state;
	
	EXECUTE 'CREATE SEQUENCE seq_workflow_state START WITH ' || max_id_workflow_state;
	ALTER TABLE workflow_state ALTER COLUMN id_state SET DEFAULT nextval('seq_workflow_state');

	-- Workflow action
	SELECT MAX(id_action)+1 INTO max_id_workflow_action FROM workflow_action; 
	RAISE NOTICE 'Next workflow action %', max_id_workflow_action;
	
	EXECUTE 'CREATE SEQUENCE seq_workflow_action START WITH ' || max_id_workflow_action;
	ALTER TABLE workflow_action ALTER COLUMN id_action SET DEFAULT nextval('seq_workflow_action');
	
	-- Workflow history
	SELECT MAX(id_history)+1 INTO max_id_workflow_resource_history FROM workflow_resource_history; 
	RAISE NOTICE 'Next workflow resource history %', max_id_workflow_resource_history;
	
	EXECUTE 'CREATE SEQUENCE seq_workflow_resource_history START WITH ' || max_id_workflow_resource_history;
	ALTER TABLE workflow_resource_history ALTER COLUMN id_history SET DEFAULT nextval('seq_workflow_resource_history');
	
	-- Workflow icon
	SELECT MAX(id_icon)+1 INTO max_id_workflow_icon FROM workflow_icon; 
	RAISE NOTICE 'Next workflow icon %', max_id_workflow_icon;
	
	EXECUTE 'CREATE SEQUENCE seq_workflow_icon START WITH ' || max_id_workflow_icon;
	ALTER TABLE workflow_icon ALTER COLUMN id_icon SET DEFAULT nextval('seq_workflow_icon');
	
	-- Workflow task
	SELECT MAX(id_task)+1 INTO max_id_workflow_task FROM workflow_task; 
	RAISE NOTICE 'Next workflow task %', max_id_workflow_task;
	
	EXECUTE 'CREATE SEQUENCE seq_workflow_task START WITH ' || max_id_workflow_task;
	ALTER TABLE workflow_task ALTER COLUMN id_task SET DEFAULT nextval('seq_workflow_task');
	
END $$;
