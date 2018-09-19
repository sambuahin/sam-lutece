-- DEFAULT PAGE
UPDATE core_datastore SET entity_value = 'jsp/site/Portal.jsp?page=ramen' WHERE entity_key='portal.site.site_property.home_url';

-- Plugins
DELETE FROM core_datastore where entity_key IN ('core.plugins.status.identitystoreopenamprovider.installed','core.plugins.status.workflow-notifygru.installed');
INSERT INTO core_datastore(entity_key,entity_value) VALUES ('core.plugins.status.identitystoreopenamprovider.installed','true');
INSERT INTO core_datastore(entity_key,entity_value) VALUES ('core.plugins.status.workflow-notifygru.installed','true');


-- WORKFLOW
-- Etat initial
UPDATE workflow_state SET display_order = 1 WHERE id_state = 7;
-- A traiter
UPDATE workflow_state SET display_order = 2 WHERE id_state = 8;
-- A faire bureau
UPDATE workflow_state SET display_order = 3 WHERE id_state = 17;
-- A faire terrain
UPDATE workflow_state SET display_order = 4 WHERE id_state = 16;
-- Service programmé
UPDATE workflow_state SET display_order = 5 WHERE id_state = 9;
-- A requalifier
UPDATE workflow_state SET display_order = 6 WHERE id_state = 15;
-- Service fait
UPDATE workflow_state SET display_order = 7 WHERE id_state = 10;
-- Rejeté
UPDATE workflow_state SET display_order = 8 WHERE id_state = 11;
-- Transféré prestataire
UPDATE workflow_state SET display_order = 9 WHERE id_state = 18;
-- Service progrmmé prestataire
UPDATE workflow_state SET display_order = 10 WHERE id_state = 21;

DELETE FROM workflow_state WHERE id_state IN (22,23);
INSERT INTO workflow_state (id_state,name,description,id_workflow,is_initial_state,is_required_workgroup_assigned,id_icon,display_order)
VALUES (22,'Demande précision à l''usager','Envoi à l''usager pour demande de précision',2,0,0,null,11);
INSERT INTO workflow_state (id_state,name,description,id_workflow,is_initial_state,is_required_workgroup_assigned,id_icon,display_order)
VALUES (23,'Réponse précision usager','Réponse de l''usager',2,0,0,null,12);