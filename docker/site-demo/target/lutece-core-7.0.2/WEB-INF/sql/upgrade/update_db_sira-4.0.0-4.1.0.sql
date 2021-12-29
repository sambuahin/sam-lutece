-- LUTECE CORE 5.0.0-5.1.0 
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.avatar_default';
INSERT INTO core_datastore VALUES ('portal.site.site_property.avatar_default', 'images/admin/skin/unknown.png');
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.back_images';
INSERT INTO core_datastore VALUES ('portal.site.site_property.back_images', '''images/admin/skin/bg_login1.jpg'' , ''images/admin/skin/bg_login2.jpg'' , ''images/admin/skin/bg_login3.jpg'' , ''images/admin/skin/bg_login4.jpg''');

-- PLUGIN-WORKFLOW 4.0.4-4.1.0
DROP TABLE IF EXISTS workflow_test_resource;

-- PLUGIN-WORKFLOW 4.2.1-4.2.2
DROP TABLE IF EXISTS workflow_prerequisite_duration_cf;
CREATE TABLE workflow_prerequisite_duration_cf
(
	id_prerequisite INT NOT NULL,
	duration INT NOT NULL,
	PRIMARY KEY (id_prerequisite)
);

-- PLUGIN-RAMEN 4.0.0-4.1.0
-- Adding colunm for info bulle message PM 2015 Need
ALTER TABLE ramen_arrondissement ADD COLUMN infoBulleDemiJour character varying(255) DEFAULT 'En raison d''un grand nombre de dépôts, il n''y''a qu''un seul créneau disponible.';
ALTER TABLE ramen_arrondissement ADD COLUMN infoBulleJour  character varying(255)  DEFAULT 'Les RDV pour les enlèvements de cette journée sont complets.';

--- Adding Table for Message d erreur PM 2015 Need 

DROP SEQUENCE IF EXISTS seq_ramen_message_erreur_id_messages;
CREATE SEQUENCE seq_ramen_message_erreur_id_messages;
CREATE TABLE ramen_message_erreur (
    id_message int NOT NULL,
    libelle character varying(255) NOT NULL,
    valeur integer,
    contenu character varying(255),
	PRIMARY KEY (id_message)
);


 ALTER TABLE ramen_message_erreur OWNER TO r57_sira_postgres;
 GRANT ALL ON TABLE ramen_message_erreur TO r57_sira_postgres;
 GRANT ALL ON TABLE ramen_message_erreur TO r57_r_saisie;
 GRANT SELECT ON TABLE ramen_message_erreur TO r57_r_consult;
 GRANT ALL ON TABLE ramen_message_erreur TO r57_r_importgis;
 GRANT SELECT ON TABLE ramen_message_erreur TO r57_export;

--- pour attribuer les droits sur la sequence
 GRANT USAGE, SELECT ON SEQUENCE seq_ramen_message_erreur_id_messages TO r57_sira_postgres;

--- INSERTION DES MESSAGES D' ERREUR PAR DEFAUT ---
INSERT INTO ramen_message_erreur (id_message,libelle,valeur,contenu) VALUES (1,'Nombre d''enregistrements pour l''exportation Excel',500,'Le résultat de l''export est partiel du fait du dépassement de la limite d''enregistrements. Veuillez affiner vos critères de sélection afin d''avoir un résultat complet');
INSERT INTO ramen_message_erreur (id_message,libelle,valeur,contenu) VALUES (2,'Volume maximum du dépôt',3,'Veuillez certifier que votre dépôt n''excède pas le volume autorisé');

CREATE TABLE ramen_arrondissement_service_seuil
(
  fk_id_service bigint NOT NULL,
  fk_id_arrondissement bigint NOT NULL,
  valeur integer DEFAULT 999
  );
  
ALTER TABLE ramen_arrondissement_service_seuil
    ADD CONSTRAINT fk_id_arrondissement_seuil_fkey FOREIGN KEY (fk_id_arrondissement) REFERENCES ramen_arrondissement(id_arrondissement);
    
ALTER TABLE ramen_arrondissement_service_seuil
    ADD CONSTRAINT fk_id_service_seuil_fkey FOREIGN KEY (fk_id_service) REFERENCES ramen_service(id_service);
    
INSERT INTO ramen_arrondissement_service_seuil (SELECT fk_id_service,fk_id_arrondissement, '999' FROM ramen_arrondissement_service);    

ALTER TABLE ramen_demande
	ADD COLUMN service_fait_date_traitement timestamp without time zone;

-- CREATE FUNCTION "lower_unaccent";
CREATE OR REPLACE FUNCTION lower_unaccent(text)
  RETURNS text AS
$func$
SELECT lower(translate($1
     , '¹²³áàâãäåāăąÀÁÂÃÄÅĀĂĄÆćčç©ĆČÇĐÐèéêёëēĕėęěÈÊËЁĒĔĖĘĚ€ğĞıìíîïìĩīĭÌÍÎÏЇÌĨĪĬłŁńňñŃŇÑòóôõöōŏőøÒÓÔÕÖŌŎŐØŒř®ŘšşșßŠŞȘùúûüũūŭůÙÚÛÜŨŪŬŮýÿÝŸžżźŽŻŹ'
     , '123aaaaaaaaaaaaaaaaaaacccccccddeeeeeeeeeeeeeeeeeeeeggiiiiiiiiiiiiiiiiiillnnnnnnooooooooooooooooooorrrsssssssuuuuuuuuuuuuuuuuyyyyzzzzzz'
     ));
$func$ LANGUAGE sql IMMUTABLE;

--PLUGIN SIGNALEMENT 4.0.0-4.1.0

--- CREATION ROLE POUR SUPPRESSION EN MASSE ET SERVICE FAIT EN MASSE PM 2015 ---
INSERT INTO core_admin_role (role_key, role_description) VALUES ('SUPPRIMER_SIGNALEMENT_MASSE', 'Suppression en masse des anomalies');
INSERT INTO core_admin_role (role_key, role_description) VALUES ('DECLARER_SERVICE_FAIT_MASSE', 'service fait en masse');

--- AJOUT PERMISSION POUR SUPPRESSION EN MASSE ET SERVICE FAIT EN MASSE PM 2015 ---
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((select max(rbac_id) from core_admin_role_resource ) +1, 'SUPPRIMER_SIGNALEMENT_MASSE', 'GESTION_DES_SIGNALEMENTS', '*', 'SUPPRIMER_SIGNALEMENT_MASSE');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES ((select max(rbac_id) from core_admin_role_resource ) +1, 'DECLARER_SERVICE_FAIT_MASSE', 'GESTION_DES_SIGNALEMENTS', '*', 'DECLARER_SERVICE_FAIT_MASSE');        

-- fix the group SIGNALEMENT for SIGNALEMENT rights
update core_admin_right set id_feature_group ='SIGNALEMENT'
where id_right in (
'SIGNALEMENT_MANAGEMENT',
'REFERENTIEL_MANAGEMENT_SIGNALEMENT');

ALTER TABLE signalement_signalement
                ADD COLUMN service_fait_date_passage timestamp without time zone;

-- WORKFLOWSIGNALEMENT 4.0.0-4.1.0
UPDATE workflow_task_comment_config
SET title='Ce commentaire est destiné à un usage interne lié au suivi du dossier,<p> il ne sera pas vu par l''usager </p>'
WHERE id_task IN
(SELECT id_task 
FROM workflow_task 
WHERE id_action in (16,21,22,41,49,53)
AND task_type_key='taskTypeComment');

--MODULE-FORMENGINE-SIGNALEMENT
-- add Right column in SIGNALEMENT admin feature group
update core_admin_right set id_feature_group ='SIGNALEMENT'
where id_right in ('FO_SIGN_RIGHT_COLUMN_MANAGEMENT');

--MODULE-FORMENGINE-RAMEN
-- Correct all information for FO_RIGHT_COLUMN_MANAGEMENT right
UPDATE core_admin_right SET name = 'module.formengine.ramen.adminFeature.rightcolumnmanagement.name'  WHERE id_right='FO_RIGHT_COLUMN_MANAGEMENT';
UPDATE core_admin_right SET description = 'module.formengine.ramen.adminFeature.rightcolumnmanagement.description'  WHERE id_right='FO_RIGHT_COLUMN_MANAGEMENT';
UPDATE core_admin_right SET plugin_name = 'formengine-ramen'  WHERE id_right='FO_RIGHT_COLUMN_MANAGEMENT';
UPDATE core_admin_right SET id_feature_group = 'RAMEN'  WHERE id_right='FO_RIGHT_COLUMN_MANAGEMENT';
UPDATE core_admin_right SET admin_url = 'jsp/admin/plugins/formengine-ramen/SaveRightColumn.jsp' WHERE  id_right = 'FO_RIGHT_COLUMN_MANAGEMENT';

--plugin unittree 2.0.0-2.0.2
TRUNCATE unittree_action;
INSERT INTO unittree_action VALUES (1, 'unittree.unit.action.createUnit.name', 'unittree.unit.action.createUnit.description', 'jsp/admin/plugins/unittree/CreateUnit.jsp', 'fa fa-plus fa-fw', 'CREATE', 'unittree.unitAction');
INSERT INTO unittree_action VALUES (2, 'unittree.unit.action.modifyUnit.name', 'unittree.unit.action.modifyUnit.description', 'jsp/admin/plugins/unittree/ModifyUnit.jsp', 'fa fa-pencil fa-fw', 'MODIFY', 'unittree.unitAction');
INSERT INTO unittree_action VALUES (3, 'unittree.unit.action.deleteUnit.name', 'unittree.unit.action.deleteUnit.description', 'jsp/admin/plugins/unittree/RemoveUnit.jsp', 'fa fa-trash fa-fw', 'DELETE', 'unittree.unitAction');
INSERT INTO unittree_action VALUES (4, 'unittree.user.action.modifyUser.name', 'unittree.user.action.modifyUser.description', 'jsp/admin/plugins/unittree/ModifyUser.jsp', 'fa fa-pencil fa-fw', 'MODIFY_USER', 'unittree.unitUserAction');
INSERT INTO unittree_action VALUES (5, 'unittree.user.action.moveUser.name', 'unittree.user.action.moveUser.description', 'jsp/admin/plugins/unittree/MoveUser.jsp', 'fa fa-sort fa-fw', 'MOVE_USER', 'unittree.unitUserAction');
INSERT INTO unittree_action VALUES (6, 'unittree.user.action.removeUser.name', 'unittree.user.action.removeUser.description', 'jsp/admin/plugins/unittree/RemoveUser.jsp', 'fa fa-user-times fa-fw', 'REMOVE_USER', 'unittree.unitUserAction');
INSERT INTO unittree_action VALUES (10, 'unittree.unit.action.moveSubTree.name', 'unittree.unit.action.moveSubTree.description', 'jsp/admin/plugins/unittree/MoveSubTree.jsp', 'fa fa-sort fa-fw', 'MOVE_SUB_TREE', 'unittree.unitAction');

-- plugin unittree sira 1.0.3-1.0.4
INSERT INTO unittree_action (id_action,name_key,description_key,action_url,icon_url,action_permission,action_type) VALUES 
(7,'module.unittree.sira.unit.action.modifySector.name','module.unittree.sira.unit.action.modifySector.description','jsp/admin/plugins/unittree/modules/sira/ModifySector.jsp','images/admin/skin/plugins/unittree/modules/sira/modify_sector.png','MODIFY_SECTOR', 'unittree.unitAction');

-- plugin -profiles 1.0.4-1.0.5
UPDATE profile_view_action SET icon_url='fa fa-wrench' WHERE  id_action=4;
UPDATE profile_view_action SET icon_url='fa fa-hand-o-right' WHERE  id_action=3;
UPDATE profile_view_action SET icon_url='fa fa-edit' WHERE  id_action=1;
UPDATE profile_view_action SET icon_url='fa fa-trash' WHERE  id_action=2;

UPDATE profile_action SET icon_url='fa fa-edit' WHERE id_action=1;
UPDATE profile_action SET icon_url='fa fa-trash' WHERE id_action=2;
UPDATE profile_action SET icon_url='fa fa-user' WHERE id_action=3;
UPDATE profile_action SET icon_url='fa fa-lock' WHERE id_action=4;
UPDATE profile_action SET icon_url='fa fa-th-list' WHERE id_action=5;
UPDATE profile_action SET icon_url='fa fa-group' WHERE id_action=6;
UPDATE profile_action SET icon_url='fa fa-eye' WHERE id_action=7;


