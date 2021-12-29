--rights / permission for admin user

INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (939, 'super_admin', 'WORKFLOW_ACTION_TYPE', '*', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (947, 'super_admin', 'WORKFLOW_STATE_TYPE', '*', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (948, 'super_admin', 'GESTION_DES_DOSSIERS', '*', '*');
INSERT INTO core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) VALUES (949, 'super_admin', 'GESTION_DES_SIGNALEMENTS', '*', '*');


-- link the root unit to admin user
INSERT INTO unittree_unit_user (id_unit, id_user) VALUES (0, 1);

-- Ramen Info Column
UPDATE formengine_ramen_right_column SET content =  '<div class=\'colonneInfo bloc1 t1\'><p>Avez-vous pensé à une 2ème vie pour vos objets ?</p></div><div class=\'colonneInfo bloc1\'>  <p>Et si au lieu d\'être jetés, vos encombrants pouvaient être réparés, transformés pour servir à d\'autres ?  </p></div><div class=\'colonneInfo bloc1\'>  <p>Vos anciens appareils et objets divers peuvent souvent être réutilisés ! Vous pouvez les déposés dans des dépôts-vente, participer à un vide grenier ou les donner à des associations.    <br />  </p></div><div class=\'colonneInfo titre\'>  <p> A SAVOIR  </p></div><div class=\'colonneInfo t2\'>  <p>Déposez vous-même vos objets  </p></div><div class=\'colonneInfo bloc2\'>  <p>Vous pouvez déposer vous-même vos encombrants dans l\'un des 6 déchetteries de la ville.  </p></div><div class=\'colonneInfo bloc2 t21\'>  <p><a src=\'http://equipement.paris.fr/D%E9chetterie_Invalides\' title=\'Déchetterie des invalides\'>Déchetteries Invalides (7ème)</a>  </p></div><div class=\'colonneInfo bloc2 t21\'>  <p><a title=\'Déchetterie dIssy les Moulineaux\'>Déchetterie Quai d\'Issy les Moulineaux (15ème)</a>  </p></div><div class=\'colonneInfo bloc2 t21\'>  <p><a title=\'Déchetterie Jessaint\'>Déchetterie Jessaint</a>  </p></div><div class=\'colonneInfo bloc2 t21\'>  <p><a title=\'Déchetterie de la Porte de la Chapelle\'>Déchetterie de la Porte de la Chapelle (18ème)</a>  </p></div><div class=\'colonneInfo bloc2 t21\'>  <p><a title=\'Déchetterie de la Porte des Lilas\'>Déchetterie de la Porte des Lilas (20ème)</a>  </p></div><div class=\'colonneInfo bloc2 t21\'>  <p><a title=\'Déchetterie Poterne\'>Déchetterie de la Poterne des peupliers (13ème)</a>  </p></div><div class=\'colonneInfo bloc3\'>  <p>Ordures, tri toutes les infos &gt;&gt;    <br />  </p></div>' WHERE id_right_column = 1;

-- adds heure_creation column to signalement_signalement table
ALTER TABLE signalement_signalement ADD COLUMN heure_creation timestamp without time zone