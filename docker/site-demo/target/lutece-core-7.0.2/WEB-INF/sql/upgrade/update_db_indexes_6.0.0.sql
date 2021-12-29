
-- Dépendance : postgresql94-contrib

CREATE EXTENSION IF NOT EXISTS btree_gin;
CREATE EXTENSION IF NOT EXISTS pg_trgm;


DROP INDEX IF EXISTS signalement_signalement_perf_02 ;

create index signalement_signalement_perf_02
  on signalement_signalement  (token)
;


DROP INDEX IF EXISTS signalement_adresse_gist ;

create index signalement_adresse_gist
  on signalement_adresse USING GIST(geom)
;

DROP INDEX IF EXISTS signalement_adresse_gist02 ;

create index signalement_adresse_gist02
  on signalement_adresse USING GIST(st_transform(geom, 3857))
;

DROP INDEX IF EXISTS signalement_signalement_perf_01 ;

create index signalement_signalement_perf_01
  on signalement_signalement (fk_id_type_signalement, fk_id_sector)
;

DROP INDEX IF EXISTS signalement_signalement_perf_02 ;

create index signalement_signalement_perf_02
  on signalement_signalement (fk_id_sector, fk_id_priorite, id_signalement)
;

DROP INDEX IF EXISTS unittree_sector_geom_gist ;

create index unittree_sector_geom_gist
  on unittree_sector USING GIST(geom)
;

DROP INDEX IF EXISTS unittree_sector_geom_gist02 ;

create index unittree_sector_geom_gist02
  on unittree_sector USING GIST(st_transform(geom, 3857))
;

DROP INDEX IF EXISTS unittree_unit_perf_01 ;

create index unittree_unit_perf_01
  on unittree_unit (id_parent, id_unit)
;

DROP INDEX IF EXISTS workflow_resource_workflow_perf_01 ;

create index workflow_resource_workflow_perf_01
  on workflow_resource_workflow (id_resource, id_state)
;

DROP INDEX IF EXISTS workflow_resource_workflow_perf_02 ;

create index workflow_resource_workflow_perf_02
  on workflow_resource_workflow (id_state, id_workflow, resource_type, id_resource)
;


-- INDEX DU 13/12 


DROP INDEX IF EXISTS signalement_adresse_gist03 ;

create index signalement_adresse_gist03
  on signalement_adresse USING GIST(st_transform(geom, 3857),  ST_X(geom),  ST_Y(geom))
;