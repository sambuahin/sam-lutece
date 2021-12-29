-- Suppression de l'installation du plugin formengine
DELETE FROM core_datastore WHERE entity_key LIKE '%formengine%';

DELETE FROM core_user_role WHERE role_key LIKE '%formengine%';
DELETE FROM core_admin_role_resource WHERE role_key LIKE '%formengine%';
DELETE FROM core_admin_role WHERE role_key LIKE '%formengine%';
DELETE FROM core_user_right WHERE id_right LIKE '%formengine%';
DELETE FROM core_admin_right WHERE name LIKE '%formengine%';

-- Tables formengine
DROP TABLE IF EXISTS formengine_stylesheet;
DROP TABLE IF EXISTS formengine_signalement_right_column;
DROP TABLE IF EXISTS formengine_ramen_right_column;
DROP TABLE IF EXISTS formengine_notice;
DROP TABLE IF EXISTS formengine_mail_configuration;
DROP TABLE IF EXISTS formengine_id_generator;
DROP TABLE IF EXISTS formengine_group_notice;
DROP TABLE IF EXISTS formengine_formengine_parameter;