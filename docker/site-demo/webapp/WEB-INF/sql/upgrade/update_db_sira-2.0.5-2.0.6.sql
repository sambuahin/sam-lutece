-- change max size of the label objet (ramen_nature_objet) to 50 (20 before)
ALTER TABLE ramen_demande ALTER COLUMN adresse_mail TYPE character varying(155);