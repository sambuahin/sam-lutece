DELETE FROM core_admin_role_resource WHERE resource_type = 'GESTION_DES_DOSSIERS' AND permission = '*';
DELETE FROM core_admin_role_resource WHERE resource_type = 'GESTION_DES_DOSSIERS' AND permission = 'SUPPRIMER_DOSSIER';

INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (948, 'super_admin', 'GESTION_DES_DOSSIERS', '*', '*');

