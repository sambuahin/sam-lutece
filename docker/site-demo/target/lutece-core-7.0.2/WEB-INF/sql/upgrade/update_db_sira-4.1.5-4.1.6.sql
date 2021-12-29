--PLUGIN DMR 4.1.6
UPDATE signalement_workflow_notifuser_3contents_config SET message2_ramen = '<p>Bonjour,</p>
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
WHERE id_task IN (85,86,87,88,89,95);

-- FILTRE OPEN AM
DELETE FROM core_datastore WHERE entity_key='mylutece.security.public_url.mylutece.url.annulation';
DELETE FROM core_datastore WHERE entity_key='mylutece.portal.authentication.required';

INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.security.public_url.mylutece.url.annulation','<base_URL_BO>/*');
INSERT INTO core_datastore(entity_key,entity_value) VALUES('mylutece.portal.authentication.required','true');
