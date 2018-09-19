-- Mise à jour de la table signalement_workflow_notification_user_conf
ALTER TABLE signalement_workflow_notification_user_config DROP CONSTRAINT IF EXISTS signalement_workflow_notification_user_config_fkey;
ALTER TABLE signalement_workflow_notification_user_config DROP COLUMN IF EXISTS id_message ;
ALTER TABLE signalement_workflow_notification_user_config ADD COLUMN message text;

-- Récupération du message template
UPDATE signalement_workflow_notification_user_config SET message = (SELECT contenu FROM signalement_message_creation WHERE id_message=1);
