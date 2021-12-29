--PLUGIN My Lutece init 

SET DEFINE OFF

-- Init Public URLs
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.url.formengine.signalement', 'jsp/site/Portal.jsp?page=formengine&form=signalement*');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.url.js', 'js/*');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.url.gis', 'jsp/site/plugins/gis*');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.url.plugin.adresse', 'jsp/site/plugins/address/*');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.url.geoserver', '<adresse_geoserver>'); --TODO Valoriser avec la bonne valeur de l'environnement
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.url.formengine.doAction', 'jsp/site/plugins/formengine/DoAction.jsp');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.formengine.signalement.forms','jsp/site/plugins/*?form=signalement*');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.url.upload','jsp/site/upload');