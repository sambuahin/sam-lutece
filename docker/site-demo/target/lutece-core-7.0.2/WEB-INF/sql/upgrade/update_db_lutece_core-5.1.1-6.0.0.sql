ALTER TABLE core_admin_user ALTER COLUMN password TYPE TEXT;
ALTER TABLE core_admin_user ALTER COLUMN password SET default NULL;
ALTER TABLE core_user_password_history ALTER COLUMN password TYPE TEXT;
ALTER TABLE core_user_password_history ALTER COLUMN password SET NOT NULL;

-- update password storage
UPDATE core_admin_user SET password =
CONCAT(COALESCE(
	(SELECT CONCAT(cd1.entity_value,':') FROM core_datastore cd1 CROSS JOIN core_datastore cd2	WHERE cd1.entity_key = 'core.advanced_parameters.encryption_algorithm' AND cd2.entity_key = 'core.advanced_parameters.enable_password_encryption' AND LOWER(cd2.entity_value) = 'true'),
	'PLAINTEXT:')
,password);

-- updating password history with best effort to guess format
-- for PostgreSQL, replace 'REGEXP' by '~*' and 'NOT REGEXP' by '!~*'
UPDATE core_user_password_history SET password = CONCAT('MD5:',password) WHERE password ~ '^[0-9a-f]{32}$';
UPDATE core_user_password_history SET password = CONCAT('SHA-1:',password) WHERE password ~ '^[0-9a-f]{40}$';
UPDATE core_user_password_history SET password = CONCAT('SHA-256:',password) WHERE password ~ '^[0-9a-f]{64}$';
UPDATE core_user_password_history SET password = CONCAT('PLAINTEXT:',password) WHERE password !~ '^(MD5:[0-9a-f]{32}|SHA-1:[0-9a-f]{40}|SHA-256:[0-9a-f]{64})$';

DELETE FROM core_datastore WHERE entity_key = 'core.advanced_parameters.encryption_algorithm';
DELETE FROM core_datastore WHERE entity_key = 'core.advanced_parameters.enable_password_encryption';

DELETE FROM core_admin_role_resource WHERE resource_type = 'ADMIN_USER' AND permission = 'MANAGE_ENCRYPTED_PASSWORD';
