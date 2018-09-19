-- Suppression plugin disconnection
DELETE FROM core_datastore WHERE entity_key IN ('core.plugins.status.disconnection.pool','core.plugins.status.disconnection.installed');