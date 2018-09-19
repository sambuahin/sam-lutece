--
-- Dumping data for table formengine_signalement_right_column
--
INSERT INTO core_admin_right (id_right, name, level_right, admin_url, description, is_updatable, plugin_name, id_feature_group, icon_url, documentation_url, id_order)
 VALUES ('FO_SIGN_RIGHT_COLUMN_MANAGEMENT', 'module.formengine.signalement.adminFeature.rightcolumnmanagement.name', 2, 'jsp/admin/plugins/formengine-signalement/SaveRightColumn.jsp', 'module.formengine.signalement.adminFeature.rightcolumnmanagement.description', 0, 'formengine-signalement', 'SIGNALEMENT', NULL, NULL, 2);

INSERT INTO core_user_right (id_right, id_user) VALUES ('FO_SIGN_RIGHT_COLUMN_MANAGEMENT', 1);

-- ---------------
-- Drop tables --
-- ---------------
DROP TABLE IF EXISTS formengine_signalement_right_column;

--
-- Table structure for table formengine_signalement_right_column
--
CREATE TABLE formengine_signalement_right_column
(
  id_right_column bigint NOT NULL,
  content VARCHAR (6550),
  PRIMARY KEY (id_right_column)
);



--
-- Dumping data for table formengine_signalement_right_column
--

INSERT INTO formengine_signalement_right_column (id_right_column, content) VALUES (1, '');

---
--- Ano # 631 - déplacement des units ND. des Champs et St. Germain des Prés-Monnaie-Odéon
--- de l'entité 13 vers l'entité 6 de la DPE
---
UPDATE unittree_unit_sector SET id_unit=144 WHERE id_unit=114 AND id_sector IN (117,118);
UPDATE unittree_unit SET id_parent=144 WHERE id_unit IN (117,118);


-- market updates
ALTER TABLE ramen_marche ADD COLUMN actif integer;
SELECT addgeometrycolumn('ramen_marche','geom', 4326,'MULTIPOLYGON',2);
CREATE TABLE import_marche (
    id_marche bigint NOT NULL,
    nom_marche character varying(30),
    date_marche timestamp without time zone,
    heure_debut_marche timestamp without time zone,
    heure_fin_marche timestamp without time zone,
    actif integer,
	PRIMARY KEY (id_marche)
);
SELECT addgeometrycolumn('import_marche','geom', 4326,'MULTIPOLYGON',2);

CREATE TABLE import_sector (
	id_sector INT DEFAULT 0 NOT NULL,
	name VARCHAR(255) DEFAULT '' NOT NULL,
	number_sector VARCHAR(20) DEFAULT '' NOT NULL,
	CONSTRAINT import_sector_pkey PRIMARY KEY (id_sector )
);
SELECT addgeometrycolumn('import_sector','geom',3426,'MULTIPOLYGON',2);


-- 2e arrondissement removed and groupes with 1,3 and 4
UPDATE unittree_unit SET id_parent=139 WHERE id_unit=111;
UPDATE unittree_unit SET label='1-2-3-4', description='1-2-3-4' WHERE id_unit=139;
UPDATE unittree_unit_sector SET id_unit=139 WHERE id_unit=126 AND id_sector=111;
DELETE FROM unittree_unit WHERE id_unit=126;