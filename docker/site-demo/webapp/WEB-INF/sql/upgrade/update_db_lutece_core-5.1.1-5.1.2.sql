ALTER TABLE core_admin_right DROP COLUMN IF EXISTS is_external_feature;
ALTER TABLE core_admin_right ADD COLUMN is_external_feature SMALLINT DEFAULT 0;
UPDATE core_admin_right SET is_external_feature = 0 ;