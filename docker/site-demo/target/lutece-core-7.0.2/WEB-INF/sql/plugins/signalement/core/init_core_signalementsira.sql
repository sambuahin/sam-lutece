INSERT INTO core_dashboard (dashboard_name, dashboard_column, dashboard_order) VALUES ('SIGNALEMENT', 3, 2);
INSERT INTO core_feature_group (id_feature_group, feature_group_description, feature_group_label, feature_group_order)
 VALUES ('SIGNALEMENT', 'dansmarue.features.group.signalement.description', 'dansmarue.features.group.signalement.label', 9);

 -- rights / permissions for user admin
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (949, 'super_admin', 'GESTION_DES_SIGNALEMENTS', '*', '*');

-- rôles

INSERT INTO core_admin_role (role_key, role_description) VALUES ('RECHERCHE_SIGNALEMENT', 'Recherche Signalement');
INSERT INTO core_admin_role (role_key, role_description) VALUES ('SAISIE_SIGNALEMENT', 'Saisie Signalement');
INSERT INTO core_admin_role (role_key, role_description) VALUES ('CONSULTATION_SIGNALEMENT', 'Consultation Signalement');
INSERT INTO core_admin_role (role_key, role_description) VALUES ('PROGRAMMATION_SIGNALEMENT', 'Programmation Signalement');

-- permissions 
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (993, 'CONSULTATION_SIGNALEMENT', 'GESTION_DES_SIGNALEMENTS', '*', 'CONSULTATION_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (994, 'CONSULTATION_SIGNALEMENT', 'WORKFLOW_STATE_TYPE', '*', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1003, 'PROGRAMMATION_SIGNALEMENT', 'WORKFLOW_STATE_TYPE', '*', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1004, 'PROGRAMMATION_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '14', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1005, 'PROGRAMMATION_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '19', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1006, 'PROGRAMMATION_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '23', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1007, 'PROGRAMMATION_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '17', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1008, 'PROGRAMMATION_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '29', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1011, 'RECHERCHE_SIGNALEMENT', 'WORKFLOW_STATE_TYPE', '*', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1012, 'RECHERCHE_SIGNALEMENT', 'GESTION_DES_SIGNALEMENTS', '*', 'RECHERCHER_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1023, 'SAISIE_SIGNALEMENT', 'GESTION_DES_SIGNALEMENTS', '*', 'MODIFICATION_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1024, 'SAISIE_SIGNALEMENT', 'GESTION_DES_SIGNALEMENTS', '*', 'CREATION_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1025, 'SAISIE_SIGNALEMENT', 'WORKFLOW_STATE_TYPE', '*', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1026, 'SAISIE_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '13', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1027, 'SAISIE_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '16', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1028, 'SAISIE_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '18', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1029, 'SAISIE_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '21', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1030, 'SAISIE_SIGNALEMENT', 'WORKFLOW_ACTION_TYPE', '22', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1049, 'STANDARDISTE_DPE', 'GESTION_DES_SIGNALEMENTS', '*', 'RECHERCHER_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1050, 'STANDARDISTE_DPE', 'GESTION_DES_SIGNALEMENTS', '*', 'MODIFICATION_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1051, 'STANDARDISTE_DPE', 'GESTION_DES_SIGNALEMENTS', '*', 'CONSULTATION_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1052, 'STANDARDISTE_DPE', 'GESTION_DES_SIGNALEMENTS', '*', 'CREATION_SIGNALEMENT');