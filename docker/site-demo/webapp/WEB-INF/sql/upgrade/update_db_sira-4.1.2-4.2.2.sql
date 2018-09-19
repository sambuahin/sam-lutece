CREATE INDEX ramen_demande_perf_01
  ON ramen_demande
  USING btree
  (date_de_depot, fk_service_prevu_traitement);
  
CREATE INDEX ramen_dossier_fk_id_sector_idx
  ON ramen_dossier
  USING btree
  (fk_id_sector);

CREATE INDEX index_unittree
  ON unittree_unit
  USING btree
  (id_parent);