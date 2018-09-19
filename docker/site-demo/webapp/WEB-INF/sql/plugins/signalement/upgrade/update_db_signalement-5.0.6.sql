-- Create role
DELETE FROM core_admin_role WHERE role_key='PRESTATAIRE';
INSERT INTO core_admin_role (role_key, role_description) VALUES ('PRESTATAIRE','Prestataire');

-- Create resources
DELETE FROM core_admin_role_resource WHERE role_key='PRESTATAIRE';
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE', 'WORKFLOW_STATE_TYPE', '*', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE', 'GESTION_DES_SIGNALEMENTS', '*', 'RECHERCHER_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE', 'GESTION_DES_SIGNALEMENTS', '*', 'EXPORTER_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','GESTION_DES_SIGNALEMENTS','*','CONSULTATION_SIGNALEMENT');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','44','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','43','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','42','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','50','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','54','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','40','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','48','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','16','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','17','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','52','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','21','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','22','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','18','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','41','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','49','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','53','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','62','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','63','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','64','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','66','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','68','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','69','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','70','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','71','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','72','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','73','*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((SELECT MAX(rbac_id)+1 FROM core_admin_role_resource), 'PRESTATAIRE','WORKFLOW_ACTION_TYPE','67','*');

-- Site label
UPDATE core_datastore SET entity_value = 'Gênant' WHERE entity_key='sitelabels.site_property.finalisation.priotrie.radio.2';

-- Rajout de la colonne alias_mobile
ALTER TABLE signalement_type_signalement_alias DROP COLUMN IF EXISTS alias_mobile;
ALTER TABLE signalement_type_signalement_alias ADD COLUMN alias_mobile varchar(255);

UPDATE signalement_priorite	SET libelle= 'Très gênant'	WHERE id_priorite = 3;

-- Rajout de la colonne ordre_Signalement
ALTER TABLE signalement_priorite DROP COLUMN IF EXISTS ordre_priorite;
ALTER TABLE signalement_priorite ADD COLUMN ordre_priorite int;

UPDATE signalement_priorite	SET ordre_priorite = 3	WHERE id_priorite = 1;

UPDATE signalement_priorite	SET ordre_priorite = 1,	libelle = 'Gênant' WHERE id_priorite = 2;

UPDATE signalement_priorite	SET ordre_priorite = 2,	libelle = 'Très gênant'	WHERE id_priorite = 3;


