DELETE FROM core_datastore WHERE entity_key = 'core.plugins.status.piwik.installed';
INSERT INTO core_datastore (entity_key,entity_value) VALUES ('core.plugins.status.piwik.installed','true');