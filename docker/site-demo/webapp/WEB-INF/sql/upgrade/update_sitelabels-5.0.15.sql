DELETE FROM core_datastore WHERE entity_key IN ('sitelabels.site_property.app.title','sitelabels.site_property.app.content');
INSERT INTO core_datastore(entity_key,entity_value) VALUES
('sitelabels.site_property.app.title', 'DANSMARUE SUR VOTRE MOBILE'),
('sitelabels.site_property.app.content', 'Utilisez l''application mobile DansMaRue depuis votre smartphone pour transmettre directement vos anomalies depuis les rues ou les parcs de Paris.');
