CREATE INDEX ramen_adresse_dossier ON ramen_adresse(fk_id_dossier);
CREATE INDEX ramen_demande_dossier ON ramen_demande(fk_id_dossier);
CREATE INDEX ramen_demande_service ON ramen_demande(fk_service_prevu_traitement);
CREATE INDEX ramen_demande_date ON ramen_demande(date_prevue_de_traitement);
CREATE INDEX ramen_encombrant_type ON ramen_encombrant(fk_id_type_objet);
CREATE INDEX ramen_encombrant_dossier ON ramen_encombrant(fk_id_dossier);
CREATE INDEX signalement_adresse_fk ON signalement_adresse(fk_id_signalement);
CREATE INDEX signalement_signaleur_sign_fk ON signalement_signaleur(fk_id_signalement);