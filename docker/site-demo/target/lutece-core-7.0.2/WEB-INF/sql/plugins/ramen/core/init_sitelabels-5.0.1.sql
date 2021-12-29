DELETE FROM core_datastore WHERE entity_key LIKE 'sitelabels.site_property%';
INSERT INTO core_datastore (entity_key, entity_value) VALUES 
('sitelabels.site_property.ramen.accueil.bloc.htmlblock', '<a title="title" href="teleservices.paris.fr/sira/jsp/site/Portal.jsp?page=formengine&amp;form=signalement">coucou</a>');