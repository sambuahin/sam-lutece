-- Suppression du plugin ganalytics
DELETE FROM core_datastore WHERE entity_key LIKE '%ganalytics%';