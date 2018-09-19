-- change the labels "signalement" to "message"
UPDATE formengine_notice SET message = 'Votre message a bien été enregistré. Nous mettons tout en oeuvre pour résoudre cet incident et vous tenir informé.' WHERE id_notice=2;

-- The action "Accepter" becomes "A traiter" 
UPDATE workflow_action SET name='A traiter' WHERE id_action=13;
UPDATE workflow_icon SET name='A traiter (Signalement)' WHERE id_icon=8;

-- change max size of the label objet (ramen_nature_objet) to 50 (20 before)
ALTER TABLE ramen_nature_objet ALTER COLUMN libelle TYPE character varying(50);

-- change order for signalement_priorite
UPDATE signalement_priorite SET libelle='Dangereux' WHERE id_priorite=1;
UPDATE signalement_priorite SET libelle='Peu genant' WHERE id_priorite=3;