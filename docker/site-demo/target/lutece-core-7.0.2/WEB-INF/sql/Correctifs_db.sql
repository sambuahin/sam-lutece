-- fix the group SIGNALEMENT for SIGNALEMENT rights
update core_admin_right set id_feature_group ='SIGNALEMENT'
where id_right in (
'SIGNALEMENT_MANAGEMENT',
'REFERENTIEL_MANAGEMENT_SIGNALEMENT');

ALTER TABLE signalement_signalement
                ADD COLUMN service_fait_date_passage timestamp without time zone;
                
                
--- UPDATE MAIL SIGNALEUR TO ANONYMOUS MAIL lutece@lutece ---
UPDATE signalement_signaleur SET mail='lutece@lutece.frc' WHERE fk_id_signalement IN 
(SELECT id_signalement FROM signalement_signalement as SG
INNER JOIN workflow_resource_workflow as WS ON SG.id_signalement=WS.id_resource AND WS.id_state in (7,8,18)
WHERE SG.date_creation::timestamp < '2016-01-01' ) ;

--- UPDATE  ETAT TO SERVICE FAIT ---
UPDATE workflow_resource_workflow SET id_state=1 WHERE id_resource IN
(SELECT id_signalement
FROM signalement_signalement as SG
INNER JOIN workflow_resource_workflow as WS ON SG.id_signalement=WS.id_resource AND WS.id_state in (7,8,18)
WHERE SG.date_creation::timestamp < '2016-01-01' ) ;        


-- WORKFLOWSIGNALEMENT 4.0.0-4.1.0
-- fix problems with Signalement that exist on workflow_resource_workflow but not in signalement_signalement
update workflow_resource_workflow set id_state=11
where id_resource in (
(select id_resource from workflow_resource_workflow
where resource_type='SIGNALEMENT_SIGNALEMENT' 
)
EXCEPT 
(select id_signalement from signalement_signalement)
)
AND resource_type='SIGNALEMENT_SIGNALEMENT' ;

-- WORKFLOWRAMEN 4.0.0-4.1.0
-- fix problems with RAMEN DOSSIER that exist on workflow_resource_workflow but not in ramen_dossier
update workflow_resource_workflow set id_state=4
where id_resource in (
(select id_resource from workflow_resource_workflow
where resource_type like '%RAMEN_DOSSIER%' 
)
EXCEPT 
(select id_dossier from ramen_dossier)
)
AND resource_type like '%RAMEN_DOSSIER%' ;

---------------------------------------------------- Correction Fait 48666 -------------------------------------------------

--RECETTE UNIQUEMENT
update signalement_type_signalement set fk_id_unit=1490  where id_type_signalement=10618;
update unittree_unit set label='La Poste' where id_unit=1490;
update signalement_type_signalement set fk_id_unit=108  where id_type_signalement=3606;


---------------------------------------------------- MIS A Jour GRAFFITI Mobilier Urbain---------------------------------------------------
UPDATE signalement_signalement SET fk_id_sector = TBL_SG.new_sector_id 
from
(select sig_adresse.fk_id_signalement as id_signalement, sector.id_sector as new_sector_id
                               from unittree_sector as sector,
      (
      -- toutes les adresses de tous les signalements de type mobilier urbain et sector différent de DEVE et DPE
      select geom, fk_id_signalement  
      from  signalement_adresse WHERE fk_id_signalement in (
          --tous les signalements de type mobilier urbain et sector différent de DEVE et DPE
          select id_signalement from signalement_signalement
          where  fk_id_type_signalement=3606
          and fk_id_sector not in (
                  -- Tous les secteur qui sont liés à DEVE
                  select distinct (id_sector) from unittree_unit_sector uus
                  INNER JOIN (
                  WITH RECURSIVE unittree AS
                  (SELECT id_unit, label, id_parent, CAST(label ||'('||id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit
                  WHERE id_parent IS NULL OR id_parent =0
                  UNION ALL
                  SELECT utu.id_unit,utu.label,
                    utu.id_parent,
                    CAST(ut.label_fullname || '->' || utu.label ||'('||utu.id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit As utu
                    INNER JOIN unittree AS ut
                    ON (utu.id_parent = ut.id_unit)
                  )
                  SELECT id_unit, label_fullname
                  FROM unittree
                  where label_fullname like '%(1)%' OR label_fullname like '%(185)%'
                  ORDER BY label_fullname) AS deve_utree
                  ON deve_utree.id_unit = uus.id_unit
          )
          and fk_id_sector not in (
                  -- Tous les secteur qui sont liés à DPE
                  select distinct (id_sector) from unittree_unit_sector uus
                  INNER JOIN (
                  WITH RECURSIVE unittree AS
                  (SELECT id_unit, label, id_parent, CAST(label ||'('||id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit
                  WHERE id_parent IS NULL OR id_parent =0
                  UNION ALL
                  SELECT utu.id_unit,utu.label,
                    utu.id_parent,
                    CAST(ut.label_fullname || '->' || utu.label ||'('||utu.id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit As utu
                    INNER JOIN unittree AS ut
                    ON (utu.id_parent = ut.id_unit)
                  )
                  SELECT id_unit, label_fullname
                  FROM unittree
                  where label_fullname like '%(108)%'
                  ORDER BY label_fullname) AS deve_utree
                  ON deve_utree.id_unit = uus.id_unit
          )
       ) -- fin fk_signalement in 
      )sig_adresse -- fin tous les signalement de type mobilier urbain et sector différent de DEVE et DPE
 where name like '%DPE%' 
  AND ST_Contains(sector.geom, sig_adresse.geom)
  and id_sector not in (
         select distinct(fk_id_sector) from signalement_signalement AS SGL
          where  fk_id_type_signalement=3606
          and fk_id_sector not in (
                  -- Tous les secteur qui sont liés à DEVE
                  select distinct (id_sector) from unittree_unit_sector uus
                  INNER JOIN (
                  WITH RECURSIVE unittree AS
                  (SELECT id_unit, label, id_parent, CAST(label ||'('||id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit
                  WHERE id_parent IS NULL OR id_parent =0
                  UNION ALL
                  SELECT utu.id_unit,utu.label,
                    utu.id_parent,
                   CAST(ut.label_fullname || '->' || utu.label ||'('||utu.id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit As utu
                    INNER JOIN unittree AS ut
                    ON (utu.id_parent = ut.id_unit)
                  )
                  SELECT id_unit, label_fullname
                  FROM unittree
                 where label_fullname like '%(1)%' OR label_fullname like '%(185)%' 
                  ORDER BY label_fullname) AS deve_utree
                  ON deve_utree.id_unit = uus.id_unit
          )
          and fk_id_sector not in (
                  -- Tous les secteur qui sont liés à DPE
                  select distinct (id_sector) from unittree_unit_sector uus
                  INNER JOIN (
                  WITH RECURSIVE unittree AS
                 (SELECT id_unit, label, id_parent, CAST(label ||'('||id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit
                  WHERE id_parent IS NULL OR id_parent =0
                  UNION ALL
                  SELECT utu.id_unit,utu.label,
                    utu.id_parent,
                    CAST(ut.label_fullname || '->' || utu.label ||'('||utu.id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit As utu
                    INNER JOIN unittree AS ut
                    ON (utu.id_parent = ut.id_unit)
                  )
                  SELECT id_unit, label_fullname
                  FROM unittree
               where label_fullname like '%(108)%' 
                  ORDER BY label_fullname) AS deve_utree
                  ON deve_utree.id_unit = uus.id_unit
          )          
  )order by id_signalement asc
  ) TBL_SG
  WHERE TBL_SG.id_signalement = signalement_signalement.id_signalement
;

---------------------------------------------------- MIS A Jour GRAFITTI Mobilier spécifique La Poste---------------------------------------------------
UPDATE signalement_signalement SET fk_id_sector = TBL_SG.new_sector_id 
from
(select sig_adresse.fk_id_signalement as id_signalement, sector.id_sector as new_sector_id
                               from unittree_sector as sector,
      (
      -- toutes les adresses de tous les signalements de type mobilier urbain et sector différent de DEVE et La Poste
      select geom, fk_id_signalement  
      from  signalement_adresse WHERE fk_id_signalement in (
          --tous les signalements de type mobilier urbain et sector différent de DEVE et La Poste
          select id_signalement from signalement_signalement
          where  fk_id_type_signalement=10618
          and fk_id_sector not in (
                  -- Tous les secteur qui sont liés à DEVE
                  select distinct (id_sector) from unittree_unit_sector uus
                  INNER JOIN (
                  WITH RECURSIVE unittree AS
                  (SELECT id_unit, label, id_parent, CAST(label ||'('||id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit
                  WHERE id_parent IS NULL OR id_parent =0
                  UNION ALL
                  SELECT utu.id_unit,utu.label,
                    utu.id_parent,
                    CAST(ut.label_fullname || '->' || utu.label ||'('||utu.id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit As utu
                    INNER JOIN unittree AS ut
                    ON (utu.id_parent = ut.id_unit)
                  )
                  SELECT id_unit, label_fullname
                  FROM unittree
                  where label_fullname like '%(1)%' OR label_fullname like '%(185)%'
                  ORDER BY label_fullname) AS deve_utree
                  ON deve_utree.id_unit = uus.id_unit
          )
          and fk_id_sector not in (
                  -- Tous les secteur qui sont liés à La Poste
                  select distinct (id_sector) from unittree_unit_sector uus
                  INNER JOIN (
                  WITH RECURSIVE unittree AS
                  (SELECT id_unit, label, id_parent, CAST(label ||'('||id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit
                  WHERE id_parent IS NULL OR id_parent =0
                  UNION ALL
                  SELECT utu.id_unit,utu.label,
                    utu.id_parent,
                    CAST(ut.label_fullname || '->' || utu.label ||'('||utu.id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit As utu
                    INNER JOIN unittree AS ut
                    ON (utu.id_parent = ut.id_unit)
                  )
                  SELECT id_unit, label_fullname
                  FROM unittree
                  where label_fullname like '%(1490)%'
                  ORDER BY label_fullname) AS deve_utree
                  ON deve_utree.id_unit = uus.id_unit
          )
       ) -- fin fk_signalement in 
      )sig_adresse -- fin tous les signalement de type mobilier urbain et sector différent de DEVE et DPE
 where sector.id_sector in (select id_sector from unittree_unit_sector where id_unit = 1490) 
  AND ST_Contains(sector.geom, sig_adresse.geom)
  and id_sector not in (
         select distinct(fk_id_sector) from signalement_signalement AS SGL
          where  fk_id_type_signalement=10618
          and fk_id_sector not in (
                  -- Tous les secteur qui sont liés à DEVE
                  select distinct (id_sector) from unittree_unit_sector uus
                  INNER JOIN (
                  WITH RECURSIVE unittree AS
                  (SELECT id_unit, label, id_parent, CAST(label ||'('||id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit
                  WHERE id_parent IS NULL OR id_parent =0
                  UNION ALL
                  SELECT utu.id_unit,utu.label,
                    utu.id_parent,
                   CAST(ut.label_fullname || '->' || utu.label ||'('||utu.id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit As utu
                    INNER JOIN unittree AS ut
                    ON (utu.id_parent = ut.id_unit)
                  )
                  SELECT id_unit, label_fullname
                  FROM unittree
                 where label_fullname like '%(1)%' OR label_fullname like '%(185)%' 
                  ORDER BY label_fullname) AS deve_utree
                  ON deve_utree.id_unit = uus.id_unit
          )
          and fk_id_sector not in (
                  -- Tous les secteur qui sont liés à La poste
                  select distinct (id_sector) from unittree_unit_sector uus
                  INNER JOIN (
                  WITH RECURSIVE unittree AS
                 (SELECT id_unit, label, id_parent, CAST(label ||'('||id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit
                  WHERE id_parent IS NULL OR id_parent =0
                  UNION ALL
                  SELECT utu.id_unit,utu.label,
                    utu.id_parent,
                    CAST(ut.label_fullname || '->' || utu.label ||'('||utu.id_unit||')' As varchar(1000)) As label_fullname
                  FROM unittree_unit As utu
                    INNER JOIN unittree AS ut
                    ON (utu.id_parent = ut.id_unit)
                  )
                  SELECT id_unit, label_fullname
                  FROM unittree
               where label_fullname like '%(1490)%' 
                  ORDER BY label_fullname) AS deve_utree
                  ON deve_utree.id_unit = uus.id_unit
          )          
  )order by id_signalement asc
   ) TBL_SG
  WHERE TBL_SG.id_signalement = signalement_signalement.id_signalement;
