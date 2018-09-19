CREATE TABLE export_unittree_unit
(
  id_unit integer NOT NULL DEFAULT 0,
  id_parent integer NOT NULL DEFAULT 0,
  label character varying(255) NOT NULL DEFAULT ''::character varying,
  description character varying(255) NOT NULL DEFAULT ''::character varying,
  profondeur integer DEFAULT 0,
  CONSTRAINT export_unittree_unit_pkey PRIMARY KEY (id_unit )
);
CREATE TABLE export_signalement_type_signalement
(
  id_type_signalement bigint NOT NULL,
  libelle character varying(255),
  actif integer,
  fk_id_type_signalement bigint,
  fk_id_unit bigint,
  ordre integer,
  image_url character varying(255),
  image_content bytea,
  image_mime_type character varying(255),
  profondeur integer DEFAULT 0,
  CONSTRAINT export_signalement_type_signalement_pkey PRIMARY KEY (id_type_signalement ),
  CONSTRAINT fk_export_id_type_signalement_fkey FOREIGN KEY (fk_id_type_signalement)
      REFERENCES export_signalement_type_signalement (id_type_signalement) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);