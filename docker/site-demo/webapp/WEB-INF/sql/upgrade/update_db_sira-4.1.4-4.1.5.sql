--PLUGIN My Lutece init 

-- WORKFLOWSIGNALEMENT 4.1.4-4.1.5
UPDATE workflow_task_comment_config
SET title='Ce commentaire est destiné à un usage interne lié au suivi du dossier, il ne sera pas vu par l''usager'
WHERE id_task IN
(SELECT id_task 
FROM workflow_task 
WHERE id_action in (14,17,40,48,52,19,23,45,29,16,21,22,41,49,53)
AND task_type_key='taskTypeComment');

ALTER TABLE ramen_jour_non_travaille DROP COLUMN IF EXISTS commentaire_demi_jour;
ALTER TABLE ramen_jour_non_travaille ADD COLUMN commentaire_demi_jour varchar(255);

DROP TABLE IF EXISTS ramen_commentaire_jour_nt;
CREATE TABLE ramen_commentaire_jour_nt
(
  commentaire character varying(255),
  commentaire_demi character varying(255),
  fk_id_unit bigint NOT NULL,
  CONSTRAINT ramen_commentaire_nt_pkey PRIMARY KEY (fk_id_unit),
  CONSTRAINT fk_id_unit FOREIGN KEY (fk_id_unit)
      REFERENCES unittree_unit (id_unit) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

INSERT INTO ramen_commentaire_jour_nt(fk_id_unit,commentaire,commentaire_demi) SELECT id_unit, 'En raison des contraintes de service, il n''y a plus de disponibilité de dépôts.','En raison des contraintes de service, tous les dépôts ne sont pas possibles.'  FROM unittree_unit;

-- Uniquement en PR7 : core-4.0.1 -> 4.1.0
DELETE FROM core_physical_file WHERE id_physical_file=125;
DELETE FROM core_physical_file WHERE id_physical_file=126;

INSERT INTO core_physical_file VALUES (125, '<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	
	<xsl:template match="users">
		<xsl:apply-templates select="user" />
	</xsl:template>
	
	<xsl:template match="user">
		<xsl:text>"</xsl:text>
		<xsl:value-of select="access_code" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="last_name" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="first_name" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="email" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="status" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="locale" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="level" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="must_change_password" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="accessibility_mode" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="password_max_valid_date" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="account_max_valid_date" />
		<xsl:text>";"</xsl:text>
		<xsl:value-of select="date_last_login" />
		<xsl:text>"</xsl:text>
		<xsl:apply-templates select="roles" />
		<xsl:apply-templates select="rights" />
		<xsl:apply-templates select="workgroups" />
		<xsl:apply-templates select="attributes" />
		<xsl:text>&#10;</xsl:text>
	</xsl:template>
	
	<xsl:template match="roles">
		<xsl:apply-templates select="role" />
	</xsl:template>
	
	<xsl:template match="role">
		<xsl:text>;"role:</xsl:text>
		<xsl:value-of select="current()" />
		<xsl:text>"</xsl:text>
	</xsl:template>
	
	<xsl:template match="rights">
		<xsl:apply-templates select="right" />
	</xsl:template>
	
	<xsl:template match="right">
		<xsl:text>;"right:</xsl:text>
		<xsl:value-of select="current()" />
		<xsl:text>"</xsl:text>
	</xsl:template>
	
	<xsl:template match="workgroups">
		<xsl:apply-templates select="workgroup" />
	</xsl:template>
	
	<xsl:template match="workgroup">
		<xsl:text>;"workgroup:</xsl:text>
		<xsl:value-of select="current()" />
		<xsl:text>"</xsl:text>
	</xsl:template>
	
	<xsl:template match="attributes">
		<xsl:apply-templates select="attribute" />
	</xsl:template>
	
	<xsl:template match="attribute">
		<xsl:text>;"</xsl:text>
		<xsl:value-of select="attribute-id" />
		<xsl:text>:</xsl:text>
		<xsl:value-of select="attribute-field-id" />
		<xsl:text>:</xsl:text>
		<xsl:value-of select="attribute-value" />
		<xsl:text>"</xsl:text>
	</xsl:template>
	
</xsl:stylesheet>');
INSERT INTO core_physical_file VALUES (126, '<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/ | @* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()" />
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>');
