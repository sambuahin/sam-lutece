UPDATE core_dashboard SET dashboard_column=3, dashboard_order=3 WHERE dashboard_name='WORKFLOW';

-- rights / permissions for user admin
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (939, 'super_admin', 'WORKFLOW_ACTION_TYPE', '*', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (947, 'super_admin', 'WORKFLOW_STATE_TYPE', '*', '*');
