DELETE FROM core_datastore WHERE entity_key = 'core.plugins.status.sitelabels.installed';
INSERT INTO core_datastore(entity_key,entity_value) VALUES ('core.plugins.status.sitelabels.installed','true');

DELETE FROM core_datastore WHERE entity_key LIKE 'sitelabels.site_property%';
INSERT INTO core_datastore(entity_key,entity_value) VALUES
('sitelabels.site_property.mobile.apple.link.href', 'https://itunes.apple.com/fr/app/dansmarue/id662045577?mt=8'),
('sitelabels.site_property.mobile.android.link.href', 'https://play.google.com/store/apps/details?id=fr.paris.android.signalement&hl=fr'),
('sitelabels.site_property.footer.paris.url', 'http://www.paris.fr'),
('sitelabels.site_property.footer.mentions.legales.url', 'http://www.paris.fr/mentions-legales'),
('sitelabels.site_property.footer.faq.url', 'jsp/site/Portal.jsp?page=helpdesk&faq_id=1'),
('sitelabels.site_property.footer.contact.url', 'http://www.paris.fr/contact'),
('sitelabels.site_property.condition_utilisation.link.href','https://teleservices.paris.fr/sira/DansMaRue_conditions_d_utilisation.pdf ');


DELETE FROM core_datastore WHERE entity_key LIKE 'sitelabels.site_property.general%';
INSERT INTO core_datastore(entity_key,entity_value) VALUES
('sitelabels.site_property.general.facultatilf.label', '(facultatif)');

DELETE FROM core_datastore WHERE entity_key LIKE 'sitelabels.site_property.finalisation%';
INSERT INTO core_datastore(entity_key,entity_value) VALUES
('sitelabels.site_property.finalisation.priotrie.label', 'Priorité'),
('sitelabels.site_property.finalisation.priotrie.radio.2', 'Gènant'),
('sitelabels.site_property.finalisation.priotrie.radio.3', 'Très gênant'),
('sitelabels.site_property.finalisation.priotrie.radio.1', 'Dangereux'),
('sitelabels.site_property.finalisation.precisions.label', 'Précisions complémentaires concernant la demande'),
('sitelabels.site_property.finalisation.photo.detaillee.label', 'Photo détaillée'),
('sitelabels.site_property.finalisation.photo.ensemble.label', 'Photo d''ensemble');