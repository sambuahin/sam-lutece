--PLUGIN My Lutece init 

SET DEFINE OFF;

-- Deleting the menu Manage external application
DELETE FROM core_user_right WHERE id_right='MYLUTECE_MANAGE_EXTERNAL_APPLICATION';

-- Gestion des messages etendue 
DELETE FROM core_user_right WHERE id_right = 'MESSAGE_TRACKING_MANAGEMENT' AND id_user=1;
INSERT INTO core_user_right(id_right,id_user) VALUES('MESSAGE_TRACKING_MANAGEMENT',1);

-- Retrait de la permission spécifique de déclaration en masse de service fait
DELETE FROM core_admin_role WHERE role_key='DECLARER_SERVICE_FAIT_MASSE' AND role_description= 'service fait en masse';
DELETE FROM core_admin_role_resource WHERE role_key='DECLARER_SERVICE_FAIT_MASSE';

DELETE FROM core_admin_role WHERE role_key='SUPPRIMER_SIGNALEMENT_MASSE' AND role_description= 'Suppression en masse des anomalies';
DELETE FROM core_admin_role_resource WHERE role_key='SUPPRIMER_SIGNALEMENT_MASSE';

ALTER TABLE signalement_workflow_notifuser_3contents_config DROP COLUMN IF EXISTS subject_ramen;
ALTER TABLE signalement_workflow_notifuser_3contents_config DROP COLUMN IF EXISTS message1_ramen;
ALTER TABLE signalement_workflow_notifuser_3contents_config DROP COLUMN IF EXISTS message2_ramen;
ALTER TABLE signalement_workflow_notifuser_3contents_config DROP COLUMN IF EXISTS message3_ramen;

ALTER TABLE signalement_workflow_notifuser_3contents_config ADD COLUMN subject_ramen varchar(255);
ALTER TABLE signalement_workflow_notifuser_3contents_config ADD COLUMN message1_ramen text;
ALTER TABLE signalement_workflow_notifuser_3contents_config ADD COLUMN message2_ramen text;
ALTER TABLE signalement_workflow_notifuser_3contents_config ADD COLUMN message3_ramen text;

-- Rétablissement mails de prod (DMR)
UPDATE signalement_workflow_notifuser_3contents_config SET 
                message1 = '<p>Bonjour,
                               </p>
                               <p>L’anomalie " ${type}" que vous avez signalée au "${adresse}"&nbsp; a été traitée. Les services municipaux ont opéré les actions correctrices appropriées.
                               </p>
                               <p>Votre demande est clôturée.
                               </p>
                               <p>Nous vous remercions une nouvelle fois de votre participation qui a permis d’améliorer la qualité de notre environnement urbain.
							   </p>
                               <p>Les équipes de la Mairie de Paris en charge de l’espace public.
                               </p>'
                ,message2 = '<p>Bonjour,
							</p>
                            <p>L’anomalie " ${type}" que vous avez signalée au "${adresse}" a fait l’objet d’une analyse approfondie par les services compétents afin d’assurer la sécurité du site en tant que de besoin. Sa résolution complète nécessite des travaux qui ne peuvent être engagés dans l’immédiat. L’anomalie est cependant enregistrée et fera l’objet d’une surveillance jusqu’à la planification de son traitement définitif.
							</p>	
							<p>Votre demande est clôturée.</p>
							<p>Nous vous remercions une nouvelle fois de votre participation qui a permis d’améliorer la qualité de notre environnement urbain.
							</p>
                            <p>Les équipes de la Mairie de Paris en charge de l’espace public.
                            </p>'
                ,message3 = '<p>Bonjour,</p>
                               <p>L’anomalie que vous avez signalée concerne une adresse parisienne en dehors du champ de compétence de la Ville de Paris. Vos remarques ont été transmises par messagerie au service public compétent (à préciser).
                               </p>
                               <p>Votre demande est clôturée.
                               </p>
                               <p>Nous vous remercions une nouvelle fois de votre participation qui a permis d’améliorer la qualité de notre environnement urbain.
                               </p>
                               <p>Les équipes de la Mairie de Paris en charge de l’espace public.
                               </p>'
WHERE id_task IN (85,86,87,88,89,95);

-- Ajout de nouveaux mails
UPDATE signalement_workflow_notifuser_3contents_config SET subject_ramen='Ramen : Traitement de l''anomalie n°${numero} que vous avez signalée',
                message1_ramen = '<p>Bonjour,
                               </p>
                               <p>L’anomalie " ${type}" que vous avez signalée au "${adresse}"&nbsp; a été traitée. Les services municipaux ont opéré les actions correctrices appropriées.
                               </p>
                               <p>Votre demande est clôturée.
                               </p>
                               <p>Nous vous remercions une nouvelle fois de votre participation qui a permis d’améliorer la qualité de notre environnement urbain.
							   </p>
                               <p>Les équipes de la Mairie de Paris en charge de l’espace public.
                               </p>'
                ,message2_ramen = '<p>Bonjour,</p>
                               <p>L’anomalie " ${type}" que vous avez signalée au "${adresse}" a été traitée.
                               </p>
                               <p>Les services municipaux n’ont pas constaté de dépôt le ${datetraitement} à ${heuretraitement}
                               </p>
                               <p>Votre demande est clôturée.
                               </p>
                               <p>Nous vous remercions une nouvelle fois de votre participation qui a permis d’améliorer la qualité de notre environnement urbain.
                               </p>
                               <p>Les équipes de la Mairie de Paris en charge de l’espace public.
                               </p>'
                ,message3_ramen = '<p>Bonjour,
							</p>
                            <p>L’anomalie " ${type}" que vous avez signalée au "${adresse}" a fait l’objet d’une analyse approfondie par les services compétents afin d’assurer la sécurité du site en tant que de besoin. Sa résolution complète nécessite des travaux qui ne peuvent être engagés dans l’immédiat. L’anomalie est cependant enregistrée et fera l’objet d’une surveillance jusqu’à la planification de son traitement définitif.
							</p>	
							<p>Votre demande est clôturée.</p>
							<p>Nous vous remercions une nouvelle fois de votre participation qui a permis d’améliorer la qualité de notre environnement urbain.
							</p>
                            <p>Les équipes de la Mairie de Paris en charge de l’espace public.
                            </p>'
WHERE id_task IN (85,86,87,88,89,95);