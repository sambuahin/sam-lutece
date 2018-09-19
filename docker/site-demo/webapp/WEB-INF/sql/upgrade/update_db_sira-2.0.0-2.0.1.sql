-- change attach unit into SEJ (idUnit=94) for signalement_type_signalement attach to DEVE (idUnit=1)
UPDATE signalement_type_signalement SET fk_id_unit=94 WHERE fk_id_unit=1;

-- Add permission (super-admin) for message tracking management (US6 BO Signalement : Gestion du suivi des messages)
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (1200, 'super_admin', 'GESTION_SUIVI_DES_MESSAGES_DANSMARUE', '*', '*');