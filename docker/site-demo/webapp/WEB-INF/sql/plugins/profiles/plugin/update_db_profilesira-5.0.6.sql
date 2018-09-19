-- profils
DELETE FROM profile_profile WHERE profile_key='PRESTATAIRE';
INSERT INTO profile_profile (profile_key, profile_description) VALUES ('PRESTATAIRE', 'Prestataire');

DELETE FROM core_attribute_field WHERE title = 'PRESTATAIRE';
INSERT INTO core_attribute_field(id_field, id_attribute,title,default_value,is_default_value,height,width,max_size_enter,is_multiple,field_position)
VALUES ((SELECT MAX(id_field)+1 FROM core_attribute_field),1,'PRESTATAIRE','Prestataire',0,0,0,0,0,(SELECT MAX(field_position)+1 FROM core_attribute_field));

-- liaison profil / droits
DELETE FROM profile_right WHERE profile_key = 'PRESTATAIRE';
INSERT INTO profile_right (profile_key, id_right) VALUES ('PRESTATAIRE', 'SIGNALEMENT_MANAGEMENT');

--liaisons profils / roles signalement
DELETE FROM profile_role WHERE profile_key = 'PRESTATAIRE';
INSERT INTO profile_role (profile_key, role_key) VALUES ('PRESTATAIRE', 'PRESTATAIRE');