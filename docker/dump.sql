--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.signalement_suivi DROP CONSTRAINT suivi_signalement_fk;
ALTER TABLE ONLY public.signalement_workflow_notifuser_multi_contents_task DROP CONSTRAINT signalement_workflow_notifuser_multi_contents_config_message_fk;
ALTER TABLE ONLY public.signalement_workflow_notification_user_config DROP CONSTRAINT signalement_workflow_notification_user_config_fkey;
ALTER TABLE ONLY public.signalement_dashboard_user_preferences DROP CONSTRAINT signalement_dashboard_user_fk;
ALTER TABLE ONLY public.signalement_dashboard_user_preferences DROP CONSTRAINT signalement_dashboard_state_fk;
ALTER TABLE ONLY public.signalement_observation_rejet_signalement DROP CONSTRAINT observation_rejet_signalement_fk;
ALTER TABLE ONLY public.signalement_observation_rejet_signalement DROP CONSTRAINT observation_rejet_rejet_fk;
ALTER TABLE ONLY public.signalement_requalification DROP CONSTRAINT id_signalement_fk;
ALTER TABLE ONLY public.signalement_domaine_type_signalement DROP CONSTRAINT fk_type_signalement;
ALTER TABLE ONLY public.workflow_task DROP CONSTRAINT fk_task_id_action;
ALTER TABLE ONLY public.workflow_state DROP CONSTRAINT fk_state_id_workflow;
ALTER TABLE ONLY public.signalement_type_signalement_alias DROP CONSTRAINT fk_signalement_type_alias;
ALTER TABLE ONLY public.signalement_workflow_rac_unit DROP CONSTRAINT fk_signalement_rac_id_task;
ALTER TABLE ONLY public.signalement_unit DROP CONSTRAINT fk_signalement_id_unit;
ALTER TABLE ONLY public.signalement_domaine_conseil_quartier DROP CONSTRAINT fk_quartier;
ALTER TABLE ONLY public.signalement_workflow_notifuser_multi_contents_value DROP CONSTRAINT fk_notifuser_3contents_value_id_history;
ALTER TABLE ONLY public.signalement_workflow_notification_user_value DROP CONSTRAINT fk_notification_user_value_id_history;
ALTER TABLE ONLY public.signalement_workflow_notifuser_multi_contents_value DROP CONSTRAINT fk_notification_user_id_task;
ALTER TABLE ONLY public.signalement_workflow_notification_user_value DROP CONSTRAINT fk_notification_user_id_task;
ALTER TABLE ONLY public.signalement_domaine_unit DROP CONSTRAINT fk_id_unit;
ALTER TABLE ONLY public.unittree_unit_sector DROP CONSTRAINT fk_id_unit;
ALTER TABLE ONLY public.unittree_unit_user DROP CONSTRAINT fk_id_unit;
ALTER TABLE ONLY public.signalement_signalement DROP CONSTRAINT fk_id_type_signalement_fkey;
ALTER TABLE ONLY public.signalement_type_signalement DROP CONSTRAINT fk_id_type_signalement_fkey;
ALTER TABLE ONLY public.signalement_signaleur DROP CONSTRAINT fk_id_signalement_fkey;
ALTER TABLE ONLY public.signalement_photo DROP CONSTRAINT fk_id_signalement_fkey;
ALTER TABLE ONLY public.signalement_adresse DROP CONSTRAINT fk_id_signalement_fkey;
ALTER TABLE ONLY public.signalement_signalement DROP CONSTRAINT fk_id_sector_fkey;
ALTER TABLE ONLY public.unittree_unit_sector DROP CONSTRAINT fk_id_sector;
ALTER TABLE ONLY public.signalement_signalement DROP CONSTRAINT fk_id_priorite_fkey;
ALTER TABLE ONLY public.signalement_workflow_webservice_value DROP CONSTRAINT fk_id_history;
ALTER TABLE ONLY public.signalement_signalement DROP CONSTRAINT fk_id_arrondissement_fkey;
ALTER TABLE ONLY public.workflow_resource_history DROP CONSTRAINT fk_history_id_workflow;
ALTER TABLE ONLY public.workflow_resource_history DROP CONSTRAINT fk_history_id_action;
ALTER TABLE ONLY public.export_signalement_type_signalement DROP CONSTRAINT fk_export_id_type_signalement_fkey;
ALTER TABLE ONLY public.signalement_domaine_unit DROP CONSTRAINT fk_domaine;
ALTER TABLE ONLY public.signalement_domaine_arrondissement DROP CONSTRAINT fk_domaine;
ALTER TABLE ONLY public.signalement_domaine_conseil_quartier DROP CONSTRAINT fk_domaine;
ALTER TABLE ONLY public.signalement_domaine_type_signalement DROP CONSTRAINT fk_domaine;
ALTER TABLE ONLY public.workflow_resource_workflow DROP CONSTRAINT fk_document_id_workflow;
ALTER TABLE ONLY public.workflow_resource_workflow DROP CONSTRAINT fk_document_id_state;
ALTER TABLE ONLY public.workflow_task_comment_value DROP CONSTRAINT fk_comment_value_id_task;
ALTER TABLE ONLY public.workflow_task_comment_value DROP CONSTRAINT fk_comment_value_id_history;
ALTER TABLE ONLY public.workflow_assignment_history DROP CONSTRAINT fk_assignment_id_task;
ALTER TABLE ONLY public.workflow_assignment_history DROP CONSTRAINT fk_assignment_id_history;
ALTER TABLE ONLY public.signalement_domaine_arrondissement DROP CONSTRAINT fk_arrondissement;
ALTER TABLE ONLY public.workflow_action DROP CONSTRAINT fk_action_id_workflow;
ALTER TABLE ONLY public.workflow_action DROP CONSTRAINT fk_action_id_state_before;
ALTER TABLE ONLY public.workflow_action DROP CONSTRAINT fk_action_id_state_after;
ALTER TABLE ONLY public.workflow_action DROP CONSTRAINT fk_action_id_icon;
DROP INDEX public.workflow_resource_workgroup_resource_type_fk;
DROP INDEX public.workflow_resource_workgroup_id_workflow_fk;
DROP INDEX public.workflow_resource_workgroup_id_resource_fk;
DROP INDEX public.workflow_resource_workflow_resource_type_fk;
DROP INDEX public.workflow_resource_workflow_id_workflow_fk;
DROP INDEX public.workflow_resource_workflow_id_resource_fk;
DROP INDEX public.unittree_sector_geom_gist;
DROP INDEX public.task_id_action_fk;
DROP INDEX public.signalement_signaleur_sign_fk;
DROP INDEX public.signalement_photo_fk;
DROP INDEX public.signalement_conseil_quartier_geom_idx;
DROP INDEX public.signalement_adresse_fk;
DROP INDEX public.is_locked_core_mail_queue;
DROP INDEX public.index_user_right;
DROP INDEX public.index_user_preferences;
DROP INDEX public.index_style_mode_stylesheet;
DROP INDEX public.index_style;
DROP INDEX public.index_right;
DROP INDEX public.index_portlet;
DROP INDEX public.index_page;
DROP INDEX public.index_connections_log;
DROP INDEX public.index_childpage;
DROP INDEX public.index_admin_user_preferences;
DROP INDEX public.import_sector_geom_gist;
DROP INDEX public.idx_numero_signalement;
DROP INDEX public.history_id_workflow_fk;
DROP INDEX public.history_id_action_fk;
DROP INDEX public.core_admin_user_field_idx_file;
DROP INDEX public.comment_value_id_task_fk;
DROP INDEX public.comment_value_id_history_fk;
DROP INDEX public.assignment_id_task_fk;
DROP INDEX public.assignment_id_history_fk;
DROP INDEX public.action_id_workflow_fk;
DROP INDEX public.action_id_state_before_fk;
DROP INDEX public.action_id_state_after_fk;
DROP INDEX public.action_id_icon_fk;
ALTER TABLE ONLY public.workflow_workgroup_cf DROP CONSTRAINT workflow_workgroup_cf_pkey;
ALTER TABLE ONLY public.workflow_workflow DROP CONSTRAINT workflow_workflow_pkey;
ALTER TABLE ONLY public.workflow_task DROP CONSTRAINT workflow_task_pkey;
ALTER TABLE ONLY public.workflow_task_notify_gru_history DROP CONSTRAINT workflow_task_notify_gru_history_pkey;
ALTER TABLE ONLY public.workflow_task_notify_gru_cf DROP CONSTRAINT workflow_task_notify_gru_cf_pkey;
ALTER TABLE ONLY public.workflow_task_notification_cf DROP CONSTRAINT workflow_task_notification_cf_pkey;
ALTER TABLE ONLY public.workflow_task_comment_value DROP CONSTRAINT workflow_task_comment_value_pkey;
ALTER TABLE ONLY public.workflow_task_comment_config DROP CONSTRAINT workflow_task_comment_config_pkey;
ALTER TABLE ONLY public.workflow_task_assignment_cf DROP CONSTRAINT workflow_task_assignment_cf_pkey;
ALTER TABLE ONLY public.workflow_state DROP CONSTRAINT workflow_state_pkey;
ALTER TABLE ONLY public.workflow_resource_workflow DROP CONSTRAINT workflow_resource_workflow_pkey;
ALTER TABLE ONLY public.workflow_resource_history DROP CONSTRAINT workflow_resource_history_pkey;
ALTER TABLE ONLY public.workflow_prerequisite DROP CONSTRAINT workflow_prerequisite_pkey;
ALTER TABLE ONLY public.workflow_prerequisite_duration_cf DROP CONSTRAINT workflow_prerequisite_duration_cf_pkey;
ALTER TABLE ONLY public.workflow_icon DROP CONSTRAINT workflow_icon_pkey;
ALTER TABLE ONLY public.workflow_assignment_history DROP CONSTRAINT workflow_assignment_history_pkey;
ALTER TABLE ONLY public.workflow_action DROP CONSTRAINT workflow_action_pkey;
ALTER TABLE ONLY public.workflow_action_action DROP CONSTRAINT workflow_action_action_pkey;
ALTER TABLE ONLY public.sira_user DROP CONSTRAINT user_guid_pk;
ALTER TABLE ONLY public.unittree_unit_user DROP CONSTRAINT unittree_unit_user_pkey;
ALTER TABLE ONLY public.unittree_unit_sector DROP CONSTRAINT unittree_unit_sector_pkey;
ALTER TABLE ONLY public.unittree_unit DROP CONSTRAINT unittree_unit_pkey;
ALTER TABLE ONLY public.unittree_sector DROP CONSTRAINT unittree_sector_pkey;
ALTER TABLE ONLY public.unittree_action DROP CONSTRAINT unittree_action_pkey;
ALTER TABLE ONLY public.signalement_suivi DROP CONSTRAINT suivi_pk;
ALTER TABLE ONLY public.signalement_workflow_webservice_value DROP CONSTRAINT signalement_workflow_webservice_value_pkey;
ALTER TABLE ONLY public.signalement_workflow_webservice_config DROP CONSTRAINT signalement_workflow_webservice_config_pkey;
ALTER TABLE ONLY public.signalement_workflow_rac_unit DROP CONSTRAINT signalement_workflow_rac_unit_pkey;
ALTER TABLE ONLY public.signalement_workflow_notifuser_multi_contents_value DROP CONSTRAINT signalement_workflow_notifuser_3contents_value_pkey;
ALTER TABLE ONLY public.signalement_workflow_notification_user_value DROP CONSTRAINT signalement_workflow_notification_user_value_pkey;
ALTER TABLE ONLY public.signalement_workflow_notification_user_config DROP CONSTRAINT signalement_workflow_notification_user_config_pkey;
ALTER TABLE ONLY public.signalement_workflow_notification_config_unit DROP CONSTRAINT signalement_workflow_notification_config_unit_pkey;
ALTER TABLE ONLY public.signalement_workflow_notification_config DROP CONSTRAINT signalement_workflow_notification_config_pkey;
ALTER TABLE ONLY public.signalement_type_signalement_version DROP CONSTRAINT signalement_type_signalement_version_pkey;
ALTER TABLE ONLY public.signalement_type_signalement DROP CONSTRAINT signalement_type_signalement_pkey;
ALTER TABLE ONLY public.signalement_type_signalement_alias DROP CONSTRAINT signalement_type_signalement_alias_pk;
ALTER TABLE ONLY public.signalement_signaleur DROP CONSTRAINT signalement_signaleur_pkey;
ALTER TABLE ONLY public.signalement_signalement DROP CONSTRAINT signalement_signalement_pkey;
ALTER TABLE ONLY public.signalement_priorite DROP CONSTRAINT signalement_priorite_pkey;
ALTER TABLE ONLY public.signalement_photo DROP CONSTRAINT signalement_photo_pkey;
ALTER TABLE ONLY public.signalement_observation_rejet DROP CONSTRAINT signalement_observation_rejet_pkey;
ALTER TABLE ONLY public.signalement_numero_signalement DROP CONSTRAINT signalement_numero_signalement_pkey;
ALTER TABLE ONLY public.signalement_message_creation DROP CONSTRAINT signalement_message_creation_pkey;
ALTER TABLE ONLY public.signalement_dashboard_user_preferences DROP CONSTRAINT signalement_dashboard_user_preferences_pk;
ALTER TABLE ONLY public.signalement_dashboard_period DROP CONSTRAINT signalement_dashboard_period_pk;
ALTER TABLE ONLY public.signalement_conseil_quartier DROP CONSTRAINT signalement_conseil_quartier_pkey;
ALTER TABLE ONLY public.signalement_arrondissement DROP CONSTRAINT signalement_arrondissement_pkey;
ALTER TABLE ONLY public.signalement_adresse DROP CONSTRAINT signalement_adresse_pkey;
ALTER TABLE ONLY public.profile_workgroup DROP CONSTRAINT profile_workgroup_pkey;
ALTER TABLE ONLY public.profile_view_profile DROP CONSTRAINT profile_view_profile_pkey;
ALTER TABLE ONLY public.profile_view DROP CONSTRAINT profile_view_pkey;
ALTER TABLE ONLY public.profile_view_dashboard DROP CONSTRAINT profile_view_dashboard_pkey;
ALTER TABLE ONLY public.profile_view_action DROP CONSTRAINT profile_view_action_pkey;
ALTER TABLE ONLY public.profile_user DROP CONSTRAINT profile_user_pkey;
ALTER TABLE ONLY public.profile_role DROP CONSTRAINT profile_role_pkey;
ALTER TABLE ONLY public.profile_right DROP CONSTRAINT profile_right_pkey;
ALTER TABLE ONLY public.profile_profile DROP CONSTRAINT profile_profile_pkey;
ALTER TABLE ONLY public.profile_action DROP CONSTRAINT profile_action_pkey;
ALTER TABLE ONLY public.signalement_unit DROP CONSTRAINT pk_signalement_id_unit;
ALTER TABLE ONLY public.signalement_domaine_unit DROP CONSTRAINT pk_domaine_type_unit;
ALTER TABLE ONLY public.signalement_domaine_type_signalement DROP CONSTRAINT pk_domaine_type_signalement;
ALTER TABLE ONLY public.signalement_domaine_conseil_quartier DROP CONSTRAINT pk_domaine_quartier;
ALTER TABLE ONLY public.signalement_domaine_fonctionnel DROP CONSTRAINT pk_domaine_fonctionnel;
ALTER TABLE ONLY public.signalement_domaine_arrondissement DROP CONSTRAINT pk_domaine_arrondissement;
ALTER TABLE ONLY public.signalement_observation_rejet_signalement DROP CONSTRAINT observation_rejet_signalement_pk;
ALTER TABLE ONLY public.mylutece_user_field DROP CONSTRAINT mylutece_user_field_pkey;
ALTER TABLE ONLY public.mylutece_user_anonymize_field DROP CONSTRAINT mylutece_user_anonymize_field_pkey;
ALTER TABLE ONLY public.mylutece_attribute DROP CONSTRAINT mylutece_attribute_pkey;
ALTER TABLE ONLY public.mylutece_attribute_field DROP CONSTRAINT mylutece_attribute_field_pkey;
ALTER TABLE ONLY public.import_sector DROP CONSTRAINT import_sector_pkey;
ALTER TABLE ONLY public.signalement_workflow DROP CONSTRAINT id_workflow_pkey;
ALTER TABLE ONLY public.signalement_workflow_notifuser_multi_contents_config DROP CONSTRAINT id_message_pk;
ALTER TABLE ONLY public.formengine_stylesheet DROP CONSTRAINT formengine_stylesheet_pkey;
ALTER TABLE ONLY public.formengine_signalement_right_column DROP CONSTRAINT formengine_signalement_right_column_pkey;
ALTER TABLE ONLY public.formengine_notice DROP CONSTRAINT formengine_notice_pkey;
ALTER TABLE ONLY public.formengine_id_generator DROP CONSTRAINT formengine_id_generator_pkey;
ALTER TABLE ONLY public.formengine_group_notice DROP CONSTRAINT formengine_group_notice_pkey;
ALTER TABLE ONLY public.formengine_formengine_parameter DROP CONSTRAINT formengine_formengine_parameter_pkey;
ALTER TABLE ONLY public.export_unittree_unit DROP CONSTRAINT export_unittree_unit_pkey;
ALTER TABLE ONLY public.export_signalement_type_signalement DROP CONSTRAINT export_signalement_type_signalement_pkey;
ALTER TABLE ONLY public.core_xsl_export DROP CONSTRAINT core_xsl_export_pkey;
ALTER TABLE ONLY public.core_user_role DROP CONSTRAINT core_user_role_pkey;
ALTER TABLE ONLY public.core_user_right DROP CONSTRAINT core_user_right_pkey;
ALTER TABLE ONLY public.core_user_preferences DROP CONSTRAINT core_user_preferences_pkey;
ALTER TABLE ONLY public.core_user_password_history DROP CONSTRAINT core_user_password_history_pkey;
ALTER TABLE ONLY public.core_text_editor DROP CONSTRAINT core_text_editor_pkey;
ALTER TABLE ONLY public.core_template DROP CONSTRAINT core_template_pkey;
ALTER TABLE ONLY public.core_stylesheet DROP CONSTRAINT core_stylesheet_pkey;
ALTER TABLE ONLY public.core_style DROP CONSTRAINT core_style_pkey;
ALTER TABLE ONLY public.core_style_mode_stylesheet DROP CONSTRAINT core_style_mode_stylesheet_pkey;
ALTER TABLE ONLY public.core_search_parameter DROP CONSTRAINT core_search_parameter_pkey;
ALTER TABLE ONLY public.core_role DROP CONSTRAINT core_role_pkey;
ALTER TABLE ONLY public.core_portlet_type DROP CONSTRAINT core_portlet_type_pkey;
ALTER TABLE ONLY public.core_portlet DROP CONSTRAINT core_portlet_pkey;
ALTER TABLE ONLY public.core_portlet_alias DROP CONSTRAINT core_portlet_alias_pkey;
ALTER TABLE ONLY public.core_portal_component DROP CONSTRAINT core_portal_component_pkey;
ALTER TABLE ONLY public.core_physical_file DROP CONSTRAINT core_physical_file_pkey;
ALTER TABLE ONLY public.core_page_template DROP CONSTRAINT core_page_template_pkey;
ALTER TABLE ONLY public.core_page DROP CONSTRAINT core_page_pkey;
ALTER TABLE ONLY public.core_mode DROP CONSTRAINT core_mode_pkey;
ALTER TABLE ONLY public.core_mail_queue DROP CONSTRAINT core_mail_queue_pkey;
ALTER TABLE ONLY public.core_mail_item DROP CONSTRAINT core_mail_item_pkey;
ALTER TABLE ONLY public.core_level_right DROP CONSTRAINT core_level_right_pkey;
ALTER TABLE ONLY public.core_indexer_action DROP CONSTRAINT core_indexer_action_pkey;
ALTER TABLE ONLY public.core_id_generator DROP CONSTRAINT core_id_generator_pkey;
ALTER TABLE ONLY public.core_file DROP CONSTRAINT core_file_pkey;
ALTER TABLE ONLY public.core_feature_group DROP CONSTRAINT core_feature_group_pkey;
ALTER TABLE ONLY public.core_datastore DROP CONSTRAINT core_datastore_pkey;
ALTER TABLE ONLY public.core_dashboard DROP CONSTRAINT core_dashboard_pkey;
ALTER TABLE ONLY public.core_attribute DROP CONSTRAINT core_attribute_pkey;
ALTER TABLE ONLY public.core_attribute_field DROP CONSTRAINT core_attribute_field_pkey;
ALTER TABLE ONLY public.core_admin_workgroup_user DROP CONSTRAINT core_admin_workgroup_user_pkey;
ALTER TABLE ONLY public.core_admin_workgroup DROP CONSTRAINT core_admin_workgroup_pkey;
ALTER TABLE ONLY public.core_admin_user_preferences DROP CONSTRAINT core_admin_user_preferences_pkey;
ALTER TABLE ONLY public.core_admin_user DROP CONSTRAINT core_admin_user_pkey;
ALTER TABLE ONLY public.core_admin_user_field DROP CONSTRAINT core_admin_user_field_pkey;
ALTER TABLE ONLY public.core_admin_user_anonymize_field DROP CONSTRAINT core_admin_user_anonymize_field_pkey;
ALTER TABLE ONLY public.core_admin_role_resource DROP CONSTRAINT core_admin_role_resource_pkey;
ALTER TABLE ONLY public.core_admin_role DROP CONSTRAINT core_admin_role_pkey;
ALTER TABLE ONLY public.core_admin_right DROP CONSTRAINT core_admin_right_pkey;
ALTER TABLE ONLY public.core_admin_mailinglist DROP CONSTRAINT core_admin_mailinglist_pkey;
ALTER TABLE ONLY public.core_admin_mailinglist_filter DROP CONSTRAINT core_admin_mailinglist_filter_pkey;
ALTER TABLE ONLY public.core_admin_dashboard DROP CONSTRAINT core_admin_dashboard_pkey;
SET search_path = topology, pg_catalog;

SET search_path = public, pg_catalog;

ALTER TABLE public.workflow_workflow ALTER COLUMN id_workflow DROP DEFAULT;
ALTER TABLE public.workflow_task ALTER COLUMN id_task DROP DEFAULT;
ALTER TABLE public.workflow_state ALTER COLUMN id_state DROP DEFAULT;
ALTER TABLE public.workflow_resource_history ALTER COLUMN id_history DROP DEFAULT;
ALTER TABLE public.workflow_icon ALTER COLUMN id_icon DROP DEFAULT;
ALTER TABLE public.workflow_action ALTER COLUMN id_action DROP DEFAULT;
ALTER TABLE public.signalement_numero_signalement ALTER COLUMN id_signalement_numero_signalement DROP DEFAULT;
ALTER TABLE public.signalement_conseil_quartier ALTER COLUMN id_consqrt DROP DEFAULT;
ALTER TABLE public.core_mail_queue ALTER COLUMN id_mail_queue DROP DEFAULT;
DROP TABLE public.workflow_workgroup_cf;
DROP TABLE public.workflow_task_notify_gru_history;
DROP TABLE public.workflow_task_notify_gru_cf;
DROP TABLE public.workflow_task_notification_cf;
DROP TABLE public.workflow_task_comment_value;
DROP TABLE public.workflow_task_comment_config;
DROP TABLE public.workflow_task_assignment_cf;
DROP TABLE public.workflow_resource_workgroup;
DROP TABLE public.workflow_resource_workflow;
DROP TABLE public.workflow_prerequisite_duration_cf;
DROP TABLE public.workflow_prerequisite;
DROP TABLE public.workflow_assignment_history;
DROP TABLE public.workflow_action_action;
DROP MATERIALIZED VIEW public.v_signalement_type_signalement_with_parents_links;
DROP TABLE public.unittree_unit_user;
DROP TABLE public.unittree_unit_sector;
DROP TABLE public.unittree_unit;
DROP TABLE public.unittree_sector;
DROP TABLE public.unittree_action;
DROP TABLE public.sira_user;
DROP TABLE public.signalement_workflow_webservice_value;
DROP TABLE public.signalement_workflow_webservice_config_unit;
DROP TABLE public.signalement_workflow_webservice_config;
DROP TABLE public.signalement_workflow_rac_unit;
DROP TABLE public.signalement_workflow_notifuser_multi_contents_value;
DROP TABLE public.signalement_workflow_notifuser_multi_contents_task;
DROP TABLE public.signalement_workflow_notifuser_multi_contents_config;
DROP TABLE public.signalement_workflow_notification_user_value;
DROP TABLE public.signalement_workflow_notification_user_config;
DROP TABLE public.signalement_workflow_notification_config_unit;
DROP TABLE public.signalement_workflow_notification_config;
DROP TABLE public.signalement_workflow;
DROP TABLE public.signalement_unit;
DROP TABLE public.signalement_type_signalement_version;
DROP TABLE public.signalement_type_signalement_alias;
DROP TABLE public.signalement_type_signalement;
DROP TABLE public.signalement_suivi;
DROP TABLE public.signalement_signaleur;
DROP TABLE public.signalement_signalement;
DROP TABLE public.signalement_requalification;
DROP TABLE public.signalement_priorite;
DROP TABLE public.signalement_photo;
DROP TABLE public.signalement_observation_rejet_signalement;
DROP TABLE public.signalement_observation_rejet;
DROP SEQUENCE public.signalement_numero_signalemen_id_signalement_numero_signale_seq;
DROP TABLE public.signalement_numero_signalement;
DROP TABLE public.signalement_message_creation;
DROP TABLE public.signalement_domaine_unit;
DROP TABLE public.signalement_domaine_type_signalement;
DROP TABLE public.signalement_domaine_fonctionnel;
DROP TABLE public.signalement_domaine_conseil_quartier;
DROP TABLE public.signalement_domaine_arrondissement;
DROP TABLE public.signalement_dashboard_user_preferences;
DROP TABLE public.signalement_dashboard_period;
DROP SEQUENCE public.signalement_conseil_quartier_id_consqrt_seq;
DROP SEQUENCE public.signalement_conseil_quartier_gid_seq;
DROP TABLE public.signalement_conseil_quartier;
DROP TABLE public.signalement_arrondissement;
DROP TABLE public.signalement_adresse;
DROP SEQUENCE public.seq_workflow_workflow;
DROP TABLE public.workflow_workflow;
DROP SEQUENCE public.seq_workflow_task;
DROP TABLE public.workflow_task;
DROP SEQUENCE public.seq_workflow_state;
DROP TABLE public.workflow_state;
DROP SEQUENCE public.seq_workflow_resource_history;
DROP TABLE public.workflow_resource_history;
DROP SEQUENCE public.seq_workflow_icon;
DROP TABLE public.workflow_icon;
DROP SEQUENCE public.seq_workflow_action;
DROP TABLE public.workflow_action;
DROP SEQUENCE public.seq_sira_user_id;
DROP SEQUENCE public.seq_signalement_workflow_notifuser_multi_contents_config;
DROP SEQUENCE public.seq_signalement_type_signalement_id_type_signalement;
DROP SEQUENCE public.seq_signalement_suivi_id;
DROP SEQUENCE public.seq_signalement_signaleur_id_signaleur;
DROP SEQUENCE public.seq_signalement_signalement_id_signalement;
DROP SEQUENCE public.seq_signalement_priorite_id_priorite;
DROP SEQUENCE public.seq_signalement_photo_id_photo;
DROP SEQUENCE public.seq_signalement_observation_rejet_id_observation_rejet;
DROP SEQUENCE public.seq_signalement_numero_signalement;
DROP SEQUENCE public.seq_signalement_domaine_fonctionnel;
DROP SEQUENCE public.seq_signalement_dashboard_period_id;
DROP SEQUENCE public.seq_signalement_adresse_id_adresse;
DROP SEQUENCE public.seq_observation_rejet_signalement;
DROP TABLE public.profile_workgroup;
DROP TABLE public.profile_view_profile;
DROP TABLE public.profile_view_dashboard;
DROP TABLE public.profile_view_action;
DROP TABLE public.profile_view;
DROP TABLE public.profile_user;
DROP TABLE public.profile_role;
DROP TABLE public.profile_right;
DROP TABLE public.profile_profile;
DROP TABLE public.profile_action;
DROP TABLE public.mylutece_user_field;
DROP TABLE public.mylutece_user_anonymize_field;
DROP TABLE public.mylutece_connections_log;
DROP TABLE public.mylutece_attribute_field;
DROP TABLE public.mylutece_attribute;
DROP TABLE public.import_sector;
DROP TABLE public.formengine_stylesheet;
DROP TABLE public.formengine_signalement_right_column;
DROP TABLE public.formengine_notice;
DROP TABLE public.formengine_id_generator;
DROP TABLE public.formengine_group_notice;
DROP TABLE public.formengine_formengine_parameter;
DROP TABLE public.export_unittree_unit;
DROP TABLE public.export_signalement_type_signalement;
DROP TABLE public.core_xsl_export;
DROP TABLE public.core_user_role;
DROP TABLE public.core_user_right;
DROP TABLE public.core_user_preferences;
DROP TABLE public.core_user_password_history;
DROP TABLE public.core_text_editor;
DROP TABLE public.core_template;
DROP TABLE public.core_stylesheet;
DROP TABLE public.core_style_mode_stylesheet;
DROP TABLE public.core_style;
DROP TABLE public.core_search_parameter;
DROP TABLE public.core_role;
DROP TABLE public.core_portlet_type;
DROP TABLE public.core_portlet_alias;
DROP TABLE public.core_portlet;
DROP TABLE public.core_portal_component;
DROP TABLE public.core_physical_file;
DROP TABLE public.core_page_template;
DROP TABLE public.core_page;
DROP TABLE public.core_mode;
DROP SEQUENCE public.core_mail_queue_id_mail_queue_seq;
DROP TABLE public.core_mail_queue;
DROP TABLE public.core_mail_item;
DROP TABLE public.core_level_right;
DROP TABLE public.core_indexer_action;
DROP TABLE public.core_id_generator;
DROP TABLE public.core_file;
DROP TABLE public.core_feature_group;
DROP TABLE public.core_datastore;
DROP TABLE public.core_dashboard;
DROP TABLE public.core_connections_log;
DROP TABLE public.core_attribute_field;
DROP TABLE public.core_attribute;
DROP TABLE public.core_admin_workgroup_user;
DROP TABLE public.core_admin_workgroup;
DROP TABLE public.core_admin_user_preferences;
DROP TABLE public.core_admin_user_field;
DROP TABLE public.core_admin_user_anonymize_field;
DROP TABLE public.core_admin_user;
DROP TABLE public.core_admin_role_resource;
DROP TABLE public.core_admin_role;
DROP TABLE public.core_admin_right;
DROP TABLE public.core_admin_mailinglist_filter;
DROP TABLE public.core_admin_mailinglist;
DROP TABLE public.core_admin_dashboard;
DROP FUNCTION public.signalementgettypesignalementhierarchy(OUT id_type_signalement bigint, OUT id_parent bigint, OUT actif integer, OUT is_parent_a_category integer);
DROP EXTENSION postgis_topology;
DROP EXTENSION postgis;
DROP EXTENSION plpgsql;
DROP SCHEMA topology;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres_app
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres_app;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres_app
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: topology; Type: SCHEMA; Schema: -; Owner: postgres_app
--

CREATE SCHEMA topology;


ALTER SCHEMA topology OWNER TO postgres_app;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


--
-- Name: postgis_topology; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;


--
-- Name: EXTENSION postgis_topology; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';


SET search_path = public, pg_catalog;

--
-- Name: signalementgettypesignalementhierarchy(); Type: FUNCTION; Schema: public; Owner: postgres_app
--

CREATE FUNCTION signalementgettypesignalementhierarchy(OUT id_type_signalement bigint, OUT id_parent bigint, OUT actif integer, OUT is_parent_a_category integer) RETURNS SETOF record
    LANGUAGE plpgsql
    AS $$
DECLARE
	r signalement_type_signalement%rowtype;
BEGIN
	FOR r IN SELECT * FROM signalement_type_signalement WHERE (fk_id_unit > 0 AND fk_id_unit is not null)
	LOOP
		RETURN QUERY WITH RECURSIVE parents(id_type_signalement,fk_id_type_signalement)
		AS (
		SELECT sts.id_type_signalement, sts.fk_id_type_signalement FROM signalement_type_signalement sts WHERE sts.id_type_signalement = r.id_type_signalement
		UNION ALL
		SELECT type.id_type_signalement, type.fk_id_type_signalement FROM parents p JOIN signalement_type_signalement type ON p.fk_id_type_signalement = type.id_type_signalement
		)
		SELECT r.id_type_signalement AS id_type_sig, p.id_type_signalement as id_ancestor, r.actif,
		case when (p.fk_id_type_signalement is null) then 1 else 0 end as is_parent_a_category from parents p;
	END LOOP;
	RETURN;
END;
$$;


ALTER FUNCTION public.signalementgettypesignalementhierarchy(OUT id_type_signalement bigint, OUT id_parent bigint, OUT actif integer, OUT is_parent_a_category integer) OWNER TO postgres_app;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: core_admin_dashboard; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_dashboard (
    dashboard_name character varying(100) NOT NULL,
    dashboard_column integer NOT NULL,
    dashboard_order integer NOT NULL
);


ALTER TABLE core_admin_dashboard OWNER TO postgres_app;

--
-- Name: core_admin_mailinglist; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_mailinglist (
    id_mailinglist integer DEFAULT 0 NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(255) NOT NULL,
    workgroup character varying(50) NOT NULL
);


ALTER TABLE core_admin_mailinglist OWNER TO postgres_app;

--
-- Name: core_admin_mailinglist_filter; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_mailinglist_filter (
    id_mailinglist integer DEFAULT 0 NOT NULL,
    workgroup character varying(50) NOT NULL,
    role character varying(50) NOT NULL
);


ALTER TABLE core_admin_mailinglist_filter OWNER TO postgres_app;

--
-- Name: core_admin_right; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_right (
    id_right character varying(255) DEFAULT ''::character varying NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    level_right smallint,
    admin_url character varying(255) DEFAULT NULL::character varying,
    description character varying(255) DEFAULT NULL::character varying,
    is_updatable integer DEFAULT 0 NOT NULL,
    plugin_name character varying(50) DEFAULT NULL::character varying,
    id_feature_group character varying(50) DEFAULT NULL::character varying,
    icon_url character varying(255) DEFAULT NULL::character varying,
    documentation_url character varying(255) DEFAULT NULL::character varying,
    id_order integer,
    is_external_feature smallint DEFAULT 0
);


ALTER TABLE core_admin_right OWNER TO postgres_app;

--
-- Name: core_admin_role; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_role (
    role_key character varying(50) DEFAULT ''::character varying NOT NULL,
    role_description character varying(100) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE core_admin_role OWNER TO postgres_app;

--
-- Name: core_admin_role_resource; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_role_resource (
    rbac_id integer DEFAULT 0 NOT NULL,
    role_key character varying(50) DEFAULT ''::character varying NOT NULL,
    resource_type character varying(50) DEFAULT ''::character varying NOT NULL,
    resource_id character varying(50) DEFAULT ''::character varying NOT NULL,
    permission character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE core_admin_role_resource OWNER TO postgres_app;

--
-- Name: core_admin_user; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_user (
    id_user integer DEFAULT 0 NOT NULL,
    access_code character varying(100) DEFAULT ''::character varying NOT NULL,
    last_name character varying(100) DEFAULT ''::character varying NOT NULL,
    first_name character varying(100) DEFAULT ''::character varying NOT NULL,
    email character varying(256) DEFAULT '0'::character varying NOT NULL,
    status smallint DEFAULT 0 NOT NULL,
    password text,
    locale character varying(10) DEFAULT 'fr'::character varying NOT NULL,
    level_user smallint DEFAULT 0 NOT NULL,
    reset_password smallint DEFAULT 0 NOT NULL,
    accessibility_mode smallint DEFAULT 0 NOT NULL,
    password_max_valid_date timestamp without time zone,
    account_max_valid_date bigint,
    nb_alerts_sent integer DEFAULT 0 NOT NULL,
    last_login timestamp without time zone DEFAULT '1980-01-01 00:00:00'::timestamp without time zone,
    workgroup_key character varying(50) DEFAULT 'all'::character varying
);


ALTER TABLE core_admin_user OWNER TO postgres_app;

--
-- Name: core_admin_user_anonymize_field; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_user_anonymize_field (
    field_name character varying(100) NOT NULL,
    anonymize smallint NOT NULL
);


ALTER TABLE core_admin_user_anonymize_field OWNER TO postgres_app;

--
-- Name: core_admin_user_field; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_user_field (
    id_user_field integer DEFAULT 0 NOT NULL,
    id_user integer,
    id_attribute integer,
    id_field integer,
    id_file integer,
    user_field_value text
);


ALTER TABLE core_admin_user_field OWNER TO postgres_app;

--
-- Name: core_admin_user_preferences; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_user_preferences (
    id_user character varying(100) NOT NULL,
    pref_key character varying(100) NOT NULL,
    pref_value text
);


ALTER TABLE core_admin_user_preferences OWNER TO postgres_app;

--
-- Name: core_admin_workgroup; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_workgroup (
    workgroup_key character varying(50) NOT NULL,
    workgroup_description character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE core_admin_workgroup OWNER TO postgres_app;

--
-- Name: core_admin_workgroup_user; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_admin_workgroup_user (
    workgroup_key character varying(50) NOT NULL,
    id_user integer NOT NULL
);


ALTER TABLE core_admin_workgroup_user OWNER TO postgres_app;

--
-- Name: core_attribute; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_attribute (
    id_attribute integer DEFAULT 0 NOT NULL,
    type_class_name character varying(255) DEFAULT NULL::character varying,
    title text,
    help_message text,
    is_mandatory smallint DEFAULT 0,
    is_shown_in_search smallint DEFAULT 0,
    is_shown_in_result_list smallint DEFAULT 0,
    is_field_in_line smallint DEFAULT 0,
    attribute_position integer DEFAULT 0,
    plugin_name character varying(255) DEFAULT NULL::character varying,
    anonymize smallint
);


ALTER TABLE core_attribute OWNER TO postgres_app;

--
-- Name: core_attribute_field; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_attribute_field (
    id_field integer DEFAULT 0 NOT NULL,
    id_attribute integer,
    title character varying(255) DEFAULT NULL::character varying,
    default_value text,
    is_default_value smallint DEFAULT 0,
    height integer,
    width integer,
    max_size_enter integer,
    is_multiple smallint DEFAULT 0,
    field_position integer
);


ALTER TABLE core_attribute_field OWNER TO postgres_app;

--
-- Name: core_connections_log; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_connections_log (
    access_code character varying(100) DEFAULT NULL::character varying,
    ip_address character varying(63) DEFAULT NULL::character varying,
    date_login timestamp without time zone DEFAULT now() NOT NULL,
    login_status integer
);


ALTER TABLE core_connections_log OWNER TO postgres_app;

--
-- Name: core_dashboard; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_dashboard (
    dashboard_name character varying(100) NOT NULL,
    dashboard_column integer NOT NULL,
    dashboard_order integer NOT NULL
);


ALTER TABLE core_dashboard OWNER TO postgres_app;

--
-- Name: core_datastore; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_datastore (
    entity_key character varying(255) NOT NULL,
    entity_value text
);


ALTER TABLE core_datastore OWNER TO postgres_app;

--
-- Name: core_feature_group; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_feature_group (
    id_feature_group character varying(50) DEFAULT ''::character varying NOT NULL,
    feature_group_description character varying(255) DEFAULT NULL::character varying,
    feature_group_label character varying(100) DEFAULT NULL::character varying,
    feature_group_order integer
);


ALTER TABLE core_feature_group OWNER TO postgres_app;

--
-- Name: core_file; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_file (
    id_file integer DEFAULT 0 NOT NULL,
    title text,
    id_physical_file integer,
    file_size integer,
    mime_type character varying(255) DEFAULT NULL::character varying,
    date_creation timestamp without time zone
);


ALTER TABLE core_file OWNER TO postgres_app;

--
-- Name: core_id_generator; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_id_generator (
    class_name character varying(250) DEFAULT ''::character varying NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE core_id_generator OWNER TO postgres_app;

--
-- Name: core_indexer_action; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_indexer_action (
    id_action integer DEFAULT 0 NOT NULL,
    id_document character varying(255) NOT NULL,
    id_task integer DEFAULT 0 NOT NULL,
    indexer_name character varying(255) NOT NULL,
    id_portlet integer DEFAULT 0 NOT NULL
);


ALTER TABLE core_indexer_action OWNER TO postgres_app;

--
-- Name: core_level_right; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_level_right (
    id_level smallint DEFAULT 0 NOT NULL,
    name character varying(80) DEFAULT NULL::character varying
);


ALTER TABLE core_level_right OWNER TO postgres_app;

--
-- Name: core_mail_item; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_mail_item (
    id_mail_queue integer DEFAULT 0 NOT NULL,
    mail_item bytea
);


ALTER TABLE core_mail_item OWNER TO postgres_app;

--
-- Name: core_mail_queue; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_mail_queue (
    id_mail_queue integer NOT NULL,
    is_locked smallint DEFAULT 0
);


ALTER TABLE core_mail_queue OWNER TO postgres_app;

--
-- Name: core_mail_queue_id_mail_queue_seq; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE core_mail_queue_id_mail_queue_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE core_mail_queue_id_mail_queue_seq OWNER TO postgres_app;

--
-- Name: core_mail_queue_id_mail_queue_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres_app
--

ALTER SEQUENCE core_mail_queue_id_mail_queue_seq OWNED BY core_mail_queue.id_mail_queue;


--
-- Name: core_mode; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_mode (
    id_mode integer DEFAULT 0 NOT NULL,
    description_mode character varying(255),
    path character varying(50) DEFAULT ''::character varying NOT NULL,
    output_xsl_method character varying(50) DEFAULT NULL::character varying,
    output_xsl_version character varying(50) DEFAULT NULL::character varying,
    output_xsl_media_type character varying(50) DEFAULT NULL::character varying,
    output_xsl_encoding character varying(50) DEFAULT NULL::character varying,
    output_xsl_indent character varying(50) DEFAULT NULL::character varying,
    output_xsl_omit_xml_dec character varying(50) DEFAULT NULL::character varying,
    output_xsl_standalone character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE core_mode OWNER TO postgres_app;

--
-- Name: core_page; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_page (
    id_page integer DEFAULT 0 NOT NULL,
    id_parent integer DEFAULT 0,
    name character varying(50) DEFAULT ''::character varying NOT NULL,
    description text,
    date_update timestamp without time zone DEFAULT now() NOT NULL,
    status smallint,
    page_order integer DEFAULT 0,
    id_template integer,
    date_creation timestamp without time zone,
    role character varying(50) DEFAULT NULL::character varying,
    code_theme character varying(80) DEFAULT NULL::character varying,
    node_status smallint DEFAULT 1 NOT NULL,
    image_content bytea,
    mime_type character varying(255) DEFAULT 'NULL'::character varying,
    meta_keywords character varying(255) DEFAULT NULL::character varying,
    meta_description character varying(255) DEFAULT NULL::character varying,
    id_authorization_node integer,
    display_date_update smallint DEFAULT 0 NOT NULL,
    is_manual_date_update smallint DEFAULT 0 NOT NULL
);


ALTER TABLE core_page OWNER TO postgres_app;

--
-- Name: core_page_template; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_page_template (
    id_template integer DEFAULT 0 NOT NULL,
    description character varying(50) DEFAULT NULL::character varying,
    file_name character varying(100) DEFAULT NULL::character varying,
    picture character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE core_page_template OWNER TO postgres_app;

--
-- Name: core_physical_file; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_physical_file (
    id_physical_file integer DEFAULT 0 NOT NULL,
    file_value bytea
);


ALTER TABLE core_physical_file OWNER TO postgres_app;

--
-- Name: core_portal_component; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_portal_component (
    id_portal_component integer DEFAULT 0 NOT NULL,
    name character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE core_portal_component OWNER TO postgres_app;

--
-- Name: core_portlet; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_portlet (
    id_portlet integer DEFAULT 0 NOT NULL,
    id_portlet_type character varying(50) DEFAULT NULL::character varying,
    id_page integer,
    name character varying(70) DEFAULT NULL::character varying,
    date_update timestamp without time zone DEFAULT now() NOT NULL,
    status smallint DEFAULT 0 NOT NULL,
    portlet_order integer,
    column_no integer,
    id_style integer,
    accept_alias smallint,
    date_creation timestamp without time zone,
    display_portlet_title integer DEFAULT 0 NOT NULL,
    role character varying(50) DEFAULT NULL::character varying,
    device_display_flags integer DEFAULT 15 NOT NULL
);


ALTER TABLE core_portlet OWNER TO postgres_app;

--
-- Name: core_portlet_alias; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_portlet_alias (
    id_portlet integer DEFAULT 0 NOT NULL,
    id_alias integer DEFAULT 0 NOT NULL
);


ALTER TABLE core_portlet_alias OWNER TO postgres_app;

--
-- Name: core_portlet_type; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_portlet_type (
    id_portlet_type character varying(50) DEFAULT '0'::character varying NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    url_creation character varying(255) DEFAULT NULL::character varying,
    url_update character varying(255) DEFAULT NULL::character varying,
    home_class character varying(255) DEFAULT NULL::character varying,
    plugin_name character varying(50) DEFAULT NULL::character varying,
    url_docreate character varying(255) DEFAULT NULL::character varying,
    create_script character varying(255) DEFAULT NULL::character varying,
    create_specific character varying(255) DEFAULT NULL::character varying,
    create_specific_form character varying(255) DEFAULT NULL::character varying,
    url_domodify character varying(255) DEFAULT NULL::character varying,
    modify_script character varying(255) DEFAULT NULL::character varying,
    modify_specific character varying(255) DEFAULT NULL::character varying,
    modify_specific_form character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE core_portlet_type OWNER TO postgres_app;

--
-- Name: core_role; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_role (
    role character varying(50) DEFAULT ''::character varying NOT NULL,
    role_description character varying(255) DEFAULT NULL::character varying,
    workgroup_key character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE core_role OWNER TO postgres_app;

--
-- Name: core_search_parameter; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_search_parameter (
    parameter_key character varying(100) NOT NULL,
    parameter_value text
);


ALTER TABLE core_search_parameter OWNER TO postgres_app;

--
-- Name: core_style; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_style (
    id_style integer DEFAULT 0 NOT NULL,
    description_style character varying(100) DEFAULT ''::character varying NOT NULL,
    id_portlet_type character varying(50) DEFAULT NULL::character varying,
    id_portal_component integer DEFAULT 0 NOT NULL
);


ALTER TABLE core_style OWNER TO postgres_app;

--
-- Name: core_style_mode_stylesheet; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_style_mode_stylesheet (
    id_style integer DEFAULT 0 NOT NULL,
    id_mode integer DEFAULT 0 NOT NULL,
    id_stylesheet integer DEFAULT 0 NOT NULL
);


ALTER TABLE core_style_mode_stylesheet OWNER TO postgres_app;

--
-- Name: core_stylesheet; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_stylesheet (
    id_stylesheet integer DEFAULT 0 NOT NULL,
    description character varying(255),
    file_name character varying(255),
    source bytea
);


ALTER TABLE core_stylesheet OWNER TO postgres_app;

--
-- Name: core_template; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_template (
    template_name character varying(100) NOT NULL,
    template_value text
);


ALTER TABLE core_template OWNER TO postgres_app;

--
-- Name: core_text_editor; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_text_editor (
    editor_name character varying(255) NOT NULL,
    editor_description character varying(255) NOT NULL,
    backoffice smallint NOT NULL
);


ALTER TABLE core_text_editor OWNER TO postgres_app;

--
-- Name: core_user_password_history; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_user_password_history (
    id_user integer NOT NULL,
    password text NOT NULL,
    date_password_change timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE core_user_password_history OWNER TO postgres_app;

--
-- Name: core_user_preferences; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_user_preferences (
    id_user character varying(100) NOT NULL,
    pref_key character varying(100) NOT NULL,
    pref_value text
);


ALTER TABLE core_user_preferences OWNER TO postgres_app;

--
-- Name: core_user_right; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_user_right (
    id_right character varying(255) DEFAULT ''::character varying NOT NULL,
    id_user integer DEFAULT 0 NOT NULL
);


ALTER TABLE core_user_right OWNER TO postgres_app;

--
-- Name: core_user_role; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_user_role (
    role_key character varying(50) DEFAULT ''::character varying NOT NULL,
    id_user integer DEFAULT 0 NOT NULL
);


ALTER TABLE core_user_role OWNER TO postgres_app;

--
-- Name: core_xsl_export; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE core_xsl_export (
    id_xsl_export integer NOT NULL,
    title character varying(255) DEFAULT NULL::character varying,
    description character varying(255) DEFAULT NULL::character varying,
    extension character varying(255) DEFAULT NULL::character varying,
    id_file integer,
    plugin character varying(255) DEFAULT ''::character varying
);


ALTER TABLE core_xsl_export OWNER TO postgres_app;

--
-- Name: export_signalement_type_signalement; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE export_signalement_type_signalement (
    id_type_signalement bigint NOT NULL,
    libelle character varying(255),
    actif integer,
    fk_id_type_signalement bigint,
    fk_id_unit bigint,
    ordre integer,
    image_url character varying(255),
    image_content bytea,
    image_mime_type character varying(255),
    profondeur integer DEFAULT 0
);


ALTER TABLE export_signalement_type_signalement OWNER TO postgres_app;

--
-- Name: export_unittree_unit; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE export_unittree_unit (
    id_unit integer DEFAULT 0 NOT NULL,
    id_parent integer DEFAULT 0 NOT NULL,
    label character varying(255) DEFAULT ''::character varying NOT NULL,
    description character varying(255) DEFAULT ''::character varying NOT NULL,
    profondeur integer DEFAULT 0
);


ALTER TABLE export_unittree_unit OWNER TO postgres_app;

--
-- Name: formengine_formengine_parameter; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE formengine_formengine_parameter (
    parameter_key character varying(100) NOT NULL,
    parameter_value character varying(100) NOT NULL
);


ALTER TABLE formengine_formengine_parameter OWNER TO postgres_app;

--
-- Name: formengine_group_notice; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE formengine_group_notice (
    id_group_notice integer DEFAULT 0 NOT NULL,
    title character varying(255) NOT NULL,
    id_form character varying(255) DEFAULT NULL::character varying,
    is_enabled integer DEFAULT 0,
    workgroup_key character varying(255) NOT NULL
);


ALTER TABLE formengine_group_notice OWNER TO postgres_app;

--
-- Name: formengine_id_generator; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE formengine_id_generator (
    id_form character varying(255) NOT NULL,
    current_transaction_id character varying(255) DEFAULT ''::character varying
);


ALTER TABLE formengine_id_generator OWNER TO postgres_app;

--
-- Name: formengine_notice; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE formengine_notice (
    id_notice integer DEFAULT 0 NOT NULL,
    title character varying(255) DEFAULT NULL::character varying,
    message text,
    workgroup_key character varying(255) DEFAULT NULL::character varying,
    date_debut timestamp without time zone,
    date_fin timestamp without time zone,
    id_diffusion integer DEFAULT (-1) NOT NULL,
    is_enabled integer DEFAULT 0,
    id_notification integer DEFAULT 0,
    notice_order integer DEFAULT 0,
    id_notice_group integer DEFAULT (-1) NOT NULL
);


ALTER TABLE formengine_notice OWNER TO postgres_app;

--
-- Name: formengine_signalement_right_column; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE formengine_signalement_right_column (
    id_right_column bigint NOT NULL,
    content character varying(6550)
);


ALTER TABLE formengine_signalement_right_column OWNER TO postgres_app;

--
-- Name: formengine_stylesheet; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE formengine_stylesheet (
    id_stylesheet integer DEFAULT 0 NOT NULL,
    description character varying(255) NOT NULL,
    file_name character varying(255) DEFAULT NULL::character varying,
    form character varying(255) DEFAULT NULL::character varying,
    xsl_mode character varying(255) NOT NULL
);


ALTER TABLE formengine_stylesheet OWNER TO postgres_app;

--
-- Name: import_sector; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE import_sector (
    id_sector integer DEFAULT 0 NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    number_sector character varying(20) DEFAULT ''::character varying NOT NULL,
    geom geometry(MultiPolygon,4326)
);


ALTER TABLE import_sector OWNER TO postgres_app;

--
-- Name: mylutece_attribute; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE mylutece_attribute (
    id_attribute integer DEFAULT 0 NOT NULL,
    type_class_name character varying(255) DEFAULT NULL::character varying,
    title text,
    help_message text,
    is_mandatory smallint DEFAULT 0,
    is_shown_in_search smallint DEFAULT 0,
    attribute_position integer DEFAULT 0,
    plugin_name character varying(255) DEFAULT NULL::character varying,
    anonymize smallint
);


ALTER TABLE mylutece_attribute OWNER TO postgres_app;

--
-- Name: mylutece_attribute_field; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE mylutece_attribute_field (
    id_field integer DEFAULT 0 NOT NULL,
    id_attribute integer,
    title character varying(255) DEFAULT NULL::character varying,
    default_value text,
    is_default_value smallint DEFAULT 0,
    height integer,
    width integer,
    max_size_enter integer,
    is_multiple smallint DEFAULT 0,
    field_position integer
);


ALTER TABLE mylutece_attribute_field OWNER TO postgres_app;

--
-- Name: mylutece_connections_log; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE mylutece_connections_log (
    ip_address character varying(63) DEFAULT NULL::character varying,
    date_login timestamp without time zone DEFAULT now() NOT NULL,
    login_status integer
);


ALTER TABLE mylutece_connections_log OWNER TO postgres_app;

--
-- Name: mylutece_user_anonymize_field; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE mylutece_user_anonymize_field (
    field_name character varying(100) NOT NULL,
    anonymize smallint NOT NULL
);


ALTER TABLE mylutece_user_anonymize_field OWNER TO postgres_app;

--
-- Name: mylutece_user_field; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE mylutece_user_field (
    id_user_field integer DEFAULT 0 NOT NULL,
    id_user integer,
    id_attribute integer,
    id_field integer,
    user_field_value text
);


ALTER TABLE mylutece_user_field OWNER TO postgres_app;

--
-- Name: profile_action; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_action (
    id_action integer DEFAULT 0 NOT NULL,
    name_key character varying(100) DEFAULT NULL::character varying,
    description_key character varying(100) DEFAULT NULL::character varying,
    action_url character varying(255) DEFAULT NULL::character varying,
    icon_url character varying(255) DEFAULT NULL::character varying,
    action_permission character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE profile_action OWNER TO postgres_app;

--
-- Name: profile_profile; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_profile (
    profile_key character varying(50) DEFAULT ''::character varying NOT NULL,
    profile_description character varying(255)
);


ALTER TABLE profile_profile OWNER TO postgres_app;

--
-- Name: profile_right; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_right (
    profile_key character varying(50) DEFAULT ''::character varying NOT NULL,
    id_right character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE profile_right OWNER TO postgres_app;

--
-- Name: profile_role; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_role (
    profile_key character varying(50) DEFAULT ''::character varying NOT NULL,
    role_key character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE profile_role OWNER TO postgres_app;

--
-- Name: profile_user; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_user (
    profile_key character varying(50) DEFAULT ''::character varying NOT NULL,
    id_user integer DEFAULT 0 NOT NULL
);


ALTER TABLE profile_user OWNER TO postgres_app;

--
-- Name: profile_view; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_view (
    view_key character varying(50) DEFAULT ''::character varying NOT NULL,
    view_description character varying(255)
);


ALTER TABLE profile_view OWNER TO postgres_app;

--
-- Name: profile_view_action; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_view_action (
    id_action integer DEFAULT 0 NOT NULL,
    name_key character varying(100) DEFAULT NULL::character varying,
    description_key character varying(100) DEFAULT NULL::character varying,
    action_url character varying(255) DEFAULT NULL::character varying,
    icon_url character varying(255) DEFAULT NULL::character varying,
    action_permission character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE profile_view_action OWNER TO postgres_app;

--
-- Name: profile_view_dashboard; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_view_dashboard (
    view_key character varying(50) DEFAULT ''::character varying NOT NULL,
    dashboard_name character varying(100) NOT NULL,
    dashboard_column integer NOT NULL,
    dashboard_order integer NOT NULL
);


ALTER TABLE profile_view_dashboard OWNER TO postgres_app;

--
-- Name: profile_view_profile; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_view_profile (
    view_key character varying(50) DEFAULT ''::character varying NOT NULL,
    profile_key character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE profile_view_profile OWNER TO postgres_app;

--
-- Name: profile_workgroup; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE profile_workgroup (
    profile_key character varying(50) DEFAULT ''::character varying NOT NULL,
    workgroup_key character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE profile_workgroup OWNER TO postgres_app;

--
-- Name: seq_observation_rejet_signalement; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_observation_rejet_signalement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_observation_rejet_signalement OWNER TO postgres_app;

--
-- Name: seq_signalement_adresse_id_adresse; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_adresse_id_adresse
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_adresse_id_adresse OWNER TO postgres_app;

--
-- Name: seq_signalement_dashboard_period_id; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_dashboard_period_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_dashboard_period_id OWNER TO postgres_app;

--
-- Name: seq_signalement_domaine_fonctionnel; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_domaine_fonctionnel
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_domaine_fonctionnel OWNER TO postgres_app;

--
-- Name: seq_signalement_numero_signalement; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_numero_signalement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_numero_signalement OWNER TO postgres_app;

--
-- Name: seq_signalement_observation_rejet_id_observation_rejet; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_observation_rejet_id_observation_rejet
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_observation_rejet_id_observation_rejet OWNER TO postgres_app;

--
-- Name: seq_signalement_photo_id_photo; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_photo_id_photo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_photo_id_photo OWNER TO postgres_app;

--
-- Name: seq_signalement_priorite_id_priorite; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_priorite_id_priorite
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_priorite_id_priorite OWNER TO postgres_app;

--
-- Name: seq_signalement_signalement_id_signalement; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_signalement_id_signalement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_signalement_id_signalement OWNER TO postgres_app;

--
-- Name: seq_signalement_signaleur_id_signaleur; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_signaleur_id_signaleur
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_signaleur_id_signaleur OWNER TO postgres_app;

--
-- Name: seq_signalement_suivi_id; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_suivi_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_suivi_id OWNER TO postgres_app;

--
-- Name: seq_signalement_type_signalement_id_type_signalement; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_type_signalement_id_type_signalement
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_type_signalement_id_type_signalement OWNER TO postgres_app;

--
-- Name: seq_signalement_workflow_notifuser_multi_contents_config; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_signalement_workflow_notifuser_multi_contents_config
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_signalement_workflow_notifuser_multi_contents_config OWNER TO postgres_app;

--
-- Name: seq_sira_user_id; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_sira_user_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_sira_user_id OWNER TO postgres_app;

--
-- Name: workflow_action; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_action (
    id_action integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    description text,
    id_workflow integer,
    id_state_before integer,
    id_state_after integer,
    id_icon integer,
    is_automatic smallint DEFAULT 0,
    is_mass_action smallint DEFAULT 0,
    display_order integer DEFAULT 0,
    is_automatic_reflexive_action smallint DEFAULT 0
);


ALTER TABLE workflow_action OWNER TO postgres_app;

--
-- Name: seq_workflow_action; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_workflow_action
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_workflow_action OWNER TO postgres_app;

--
-- Name: seq_workflow_action; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres_app
--

ALTER SEQUENCE seq_workflow_action OWNED BY workflow_action.id_action;


--
-- Name: workflow_icon; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_icon (
    id_icon integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    mime_type character varying(50) DEFAULT NULL::character varying,
    file_value bytea,
    width integer,
    height integer
);


ALTER TABLE workflow_icon OWNER TO postgres_app;

--
-- Name: seq_workflow_icon; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_workflow_icon
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_workflow_icon OWNER TO postgres_app;

--
-- Name: seq_workflow_icon; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres_app
--

ALTER SEQUENCE seq_workflow_icon OWNED BY workflow_icon.id_icon;


--
-- Name: workflow_resource_history; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_resource_history (
    id_history integer NOT NULL,
    id_resource integer,
    resource_type character varying(255) DEFAULT NULL::character varying,
    id_workflow integer,
    id_action integer,
    creation_date timestamp without time zone DEFAULT now() NOT NULL,
    user_access_code character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE workflow_resource_history OWNER TO postgres_app;

--
-- Name: seq_workflow_resource_history; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_workflow_resource_history
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_workflow_resource_history OWNER TO postgres_app;

--
-- Name: seq_workflow_resource_history; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres_app
--

ALTER SEQUENCE seq_workflow_resource_history OWNED BY workflow_resource_history.id_history;


--
-- Name: workflow_state; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_state (
    id_state integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    description text,
    id_workflow integer,
    is_initial_state smallint DEFAULT 0,
    is_required_workgroup_assigned smallint DEFAULT 0,
    id_icon integer,
    display_order integer DEFAULT 0
);


ALTER TABLE workflow_state OWNER TO postgres_app;

--
-- Name: seq_workflow_state; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_workflow_state
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_workflow_state OWNER TO postgres_app;

--
-- Name: seq_workflow_state; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres_app
--

ALTER SEQUENCE seq_workflow_state OWNED BY workflow_state.id_state;


--
-- Name: workflow_task; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_task (
    id_task integer NOT NULL,
    task_type_key character varying(50) DEFAULT NULL::character varying,
    id_action integer DEFAULT 0 NOT NULL,
    display_order integer DEFAULT 0
);


ALTER TABLE workflow_task OWNER TO postgres_app;

--
-- Name: seq_workflow_task; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_workflow_task
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_workflow_task OWNER TO postgres_app;

--
-- Name: seq_workflow_task; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres_app
--

ALTER SEQUENCE seq_workflow_task OWNED BY workflow_task.id_task;


--
-- Name: workflow_workflow; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_workflow (
    id_workflow integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying,
    description text,
    creation_date timestamp without time zone DEFAULT now() NOT NULL,
    is_enabled smallint DEFAULT 0,
    workgroup_key character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE workflow_workflow OWNER TO postgres_app;

--
-- Name: seq_workflow_workflow; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE seq_workflow_workflow
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seq_workflow_workflow OWNER TO postgres_app;

--
-- Name: seq_workflow_workflow; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres_app
--

ALTER SEQUENCE seq_workflow_workflow OWNED BY workflow_workflow.id_workflow;


--
-- Name: signalement_adresse; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_adresse (
    id_adresse bigint NOT NULL,
    adresse character varying(255),
    precision_localisation character varying(255),
    fk_id_signalement bigint,
    geom geometry(Point,4326)
);


ALTER TABLE signalement_adresse OWNER TO postgres_app;

--
-- Name: signalement_arrondissement; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_arrondissement (
    id_arrondissement bigint NOT NULL,
    numero_arrondissement character varying(255),
    actif integer,
    geom geometry(MultiPolygon)
);


ALTER TABLE signalement_arrondissement OWNER TO postgres_app;

--
-- Name: signalement_conseil_quartier; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_conseil_quartier (
    id_consqrt integer NOT NULL,
    numero_consqrt character varying(3),
    surface numeric,
    nom_consqrt character varying(55),
    numero_arrondissement numeric(10,0),
    geom geometry
);


ALTER TABLE signalement_conseil_quartier OWNER TO postgres_app;

--
-- Name: signalement_conseil_quartier_gid_seq; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE signalement_conseil_quartier_gid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE signalement_conseil_quartier_gid_seq OWNER TO postgres_app;

--
-- Name: signalement_conseil_quartier_id_consqrt_seq; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE signalement_conseil_quartier_id_consqrt_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE signalement_conseil_quartier_id_consqrt_seq OWNER TO postgres_app;

--
-- Name: signalement_conseil_quartier_id_consqrt_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres_app
--

ALTER SEQUENCE signalement_conseil_quartier_id_consqrt_seq OWNED BY signalement_conseil_quartier.id_consqrt;


--
-- Name: signalement_dashboard_period; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_dashboard_period (
    id_period bigint NOT NULL,
    libelle character varying(255) NOT NULL,
    lower_bound integer,
    higher_bound integer,
    unit character varying(50) NOT NULL,
    category character varying(100),
    ordre integer
);


ALTER TABLE signalement_dashboard_period OWNER TO postgres_app;

--
-- Name: signalement_dashboard_user_preferences; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_dashboard_user_preferences (
    fk_id_user integer NOT NULL,
    fk_id_state integer NOT NULL
);


ALTER TABLE signalement_dashboard_user_preferences OWNER TO postgres_app;

--
-- Name: signalement_domaine_arrondissement; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_domaine_arrondissement (
    fk_id_domaine_fonctionnel integer NOT NULL,
    fk_id_arrondissement integer NOT NULL
);


ALTER TABLE signalement_domaine_arrondissement OWNER TO postgres_app;

--
-- Name: signalement_domaine_conseil_quartier; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_domaine_conseil_quartier (
    fk_id_domaine_fonctionnel integer NOT NULL,
    fk_id_quartier integer NOT NULL
);


ALTER TABLE signalement_domaine_conseil_quartier OWNER TO postgres_app;

--
-- Name: signalement_domaine_fonctionnel; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_domaine_fonctionnel (
    id_domaine_fonctionnel integer NOT NULL,
    libelle character varying(255) NOT NULL,
    actif integer NOT NULL
);


ALTER TABLE signalement_domaine_fonctionnel OWNER TO postgres_app;

--
-- Name: signalement_domaine_type_signalement; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_domaine_type_signalement (
    fk_id_domaine_fonctionnel integer NOT NULL,
    fk_id_type_signalement integer NOT NULL
);


ALTER TABLE signalement_domaine_type_signalement OWNER TO postgres_app;

--
-- Name: signalement_domaine_unit; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_domaine_unit (
    fk_id_domaine_fonctionnel integer NOT NULL,
    fk_id_unit integer NOT NULL
);


ALTER TABLE signalement_domaine_unit OWNER TO postgres_app;

--
-- Name: signalement_message_creation; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_message_creation (
    id_message integer NOT NULL,
    contenu text
);


ALTER TABLE signalement_message_creation OWNER TO postgres_app;

--
-- Name: signalement_numero_signalement; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_numero_signalement (
    id_signalement_numero_signalement bigint NOT NULL,
    mois character varying(1),
    annee integer,
    numero bigint
);


ALTER TABLE signalement_numero_signalement OWNER TO postgres_app;

--
-- Name: signalement_numero_signalemen_id_signalement_numero_signale_seq; Type: SEQUENCE; Schema: public; Owner: postgres_app
--

CREATE SEQUENCE signalement_numero_signalemen_id_signalement_numero_signale_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE signalement_numero_signalemen_id_signalement_numero_signale_seq OWNER TO postgres_app;

--
-- Name: signalement_numero_signalemen_id_signalement_numero_signale_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres_app
--

ALTER SEQUENCE signalement_numero_signalemen_id_signalement_numero_signale_seq OWNED BY signalement_numero_signalement.id_signalement_numero_signalement;


--
-- Name: signalement_observation_rejet; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_observation_rejet (
    id_observation_rejet bigint NOT NULL,
    libelle text,
    actif integer,
    ordre integer
);


ALTER TABLE signalement_observation_rejet OWNER TO postgres_app;

--
-- Name: signalement_observation_rejet_signalement; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_observation_rejet_signalement (
    id_observation_rejet_signalement bigint NOT NULL,
    fk_id_signalement bigint,
    fk_id_observation_rejet bigint,
    observation_rejet_comment text
);


ALTER TABLE signalement_observation_rejet_signalement OWNER TO postgres_app;

--
-- Name: signalement_photo; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_photo (
    id_photo bigint NOT NULL,
    image_url character varying(255),
    image_content bytea,
    image_thumbnail bytea,
    image_mime_type character varying(255),
    fk_id_signalement bigint,
    vue_photo integer,
    date_photo timestamp without time zone
);


ALTER TABLE signalement_photo OWNER TO postgres_app;

--
-- Name: signalement_priorite; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_priorite (
    id_priorite bigint NOT NULL,
    libelle character varying(255),
    ordre_priorite integer
);


ALTER TABLE signalement_priorite OWNER TO postgres_app;

--
-- Name: signalement_requalification; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_requalification (
    id_signalement bigint NOT NULL,
    id_type_signalement bigint,
    adresse character varying(255),
    id_sector bigint,
    date_requalification timestamp without time zone,
    id_task bigint,
    id_history bigint
);


ALTER TABLE signalement_requalification OWNER TO postgres_app;

--
-- Name: signalement_signalement; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_signalement (
    id_signalement bigint NOT NULL,
    suivi integer,
    date_creation timestamp without time zone,
    date_prevue_traitement timestamp without time zone,
    commentaire character varying(255),
    annee integer,
    mois character varying(2),
    numero integer,
    prefix character varying(2),
    fk_id_priorite bigint,
    fk_id_arrondissement bigint,
    fk_id_type_signalement bigint,
    fk_id_sector bigint,
    heure_creation timestamp without time zone,
    is_doublon smallint DEFAULT 0 NOT NULL,
    token character varying(32),
    service_fait_date_passage timestamp without time zone,
    felicitations integer DEFAULT 0,
    date_mise_surveillance timestamp without time zone,
    date_rejet timestamp without time zone,
    courriel_destinataire character varying(255),
    courriel_expediteur character varying(255),
    courriel_date timestamp without time zone,
    is_send_ws smallint DEFAULT 0 NOT NULL
);


ALTER TABLE signalement_signalement OWNER TO postgres_app;

--
-- Name: signalement_signaleur; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_signaleur (
    id_signaleur bigint NOT NULL,
    mail character varying(255),
    fk_id_signalement bigint,
    id_telephone character varying(41),
    guid character varying(255)
);


ALTER TABLE signalement_signaleur OWNER TO postgres_app;

--
-- Name: signalement_suivi; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_suivi (
    id_suivi bigint NOT NULL,
    fk_id_signalement bigint,
    fk_user_guid character varying(255)
);


ALTER TABLE signalement_suivi OWNER TO postgres_app;

--
-- Name: signalement_type_signalement; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_type_signalement (
    id_type_signalement bigint NOT NULL,
    libelle character varying(255),
    actif integer,
    fk_id_type_signalement bigint,
    fk_id_unit bigint,
    ordre integer,
    image_url character varying(255),
    image_content bytea,
    image_mime_type character varying(255)
);


ALTER TABLE signalement_type_signalement OWNER TO postgres_app;

--
-- Name: signalement_type_signalement_alias; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_type_signalement_alias (
    fk_id_type_signalement bigint NOT NULL,
    alias character varying(255),
    alias_mobile character varying(255)
);


ALTER TABLE signalement_type_signalement_alias OWNER TO postgres_app;

--
-- Name: signalement_type_signalement_version; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_type_signalement_version (
    version real NOT NULL
);


ALTER TABLE signalement_type_signalement_version OWNER TO postgres_app;

--
-- Name: signalement_unit; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_unit (
    fk_id_unit integer NOT NULL,
    visible integer
);


ALTER TABLE signalement_unit OWNER TO postgres_app;

--
-- Name: signalement_workflow; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow (
    id_workflow integer NOT NULL
);


ALTER TABLE signalement_workflow OWNER TO postgres_app;

--
-- Name: signalement_workflow_notification_config; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_notification_config (
    id_task integer NOT NULL,
    subject character varying(255),
    message text,
    sender character varying(255)
);


ALTER TABLE signalement_workflow_notification_config OWNER TO postgres_app;

--
-- Name: signalement_workflow_notification_config_unit; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_notification_config_unit (
    id_task integer NOT NULL,
    destinataires character varying(255),
    id_unit bigint NOT NULL
);


ALTER TABLE signalement_workflow_notification_config_unit OWNER TO postgres_app;

--
-- Name: signalement_workflow_notification_user_config; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_notification_user_config (
    id_task integer NOT NULL,
    subject character varying(255),
    sender character varying(255),
    title character varying(255),
    id_message integer
);


ALTER TABLE signalement_workflow_notification_user_config OWNER TO postgres_app;

--
-- Name: signalement_workflow_notification_user_value; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_notification_user_value (
    id_history integer DEFAULT 0 NOT NULL,
    id_task integer NOT NULL,
    notification_value text
);


ALTER TABLE signalement_workflow_notification_user_value OWNER TO postgres_app;

--
-- Name: signalement_workflow_notifuser_multi_contents_config; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_notifuser_multi_contents_config (
    id_message bigint NOT NULL,
    subject character varying(255),
    sender character varying(255),
    title character varying(255),
    message text
);


ALTER TABLE signalement_workflow_notifuser_multi_contents_config OWNER TO postgres_app;

--
-- Name: signalement_workflow_notifuser_multi_contents_task; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_notifuser_multi_contents_task (
    id_task bigint NOT NULL,
    id_message bigint NOT NULL
);


ALTER TABLE signalement_workflow_notifuser_multi_contents_task OWNER TO postgres_app;

--
-- Name: signalement_workflow_notifuser_multi_contents_value; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_notifuser_multi_contents_value (
    id_history integer DEFAULT 0 NOT NULL,
    id_task integer NOT NULL,
    notification_value text,
    id_message bigint
);


ALTER TABLE signalement_workflow_notifuser_multi_contents_value OWNER TO postgres_app;

--
-- Name: signalement_workflow_rac_unit; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_rac_unit (
    id_config_unit integer NOT NULL,
    id_task integer NOT NULL,
    id_unit_source integer NOT NULL,
    id_type_signalement integer NOT NULL,
    id_unit_target integer NOT NULL,
    id_state_after integer NOT NULL
);


ALTER TABLE signalement_workflow_rac_unit OWNER TO postgres_app;

--
-- Name: signalement_workflow_webservice_config; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_webservice_config (
    id_task integer NOT NULL,
    id_state_withws_success integer,
    id_state_withws_failure integer,
    id_state_withoutws integer
);


ALTER TABLE signalement_workflow_webservice_config OWNER TO postgres_app;

--
-- Name: signalement_workflow_webservice_config_unit; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_webservice_config_unit (
    id_task integer NOT NULL,
    id_unit integer NOT NULL,
    prestatairesansws character varying(8),
    urlprestataire character varying(255)
);


ALTER TABLE signalement_workflow_webservice_config_unit OWNER TO postgres_app;

--
-- Name: signalement_workflow_webservice_value; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE signalement_workflow_webservice_value (
    id_history integer NOT NULL,
    id_task integer NOT NULL,
    webservice_value text
);


ALTER TABLE signalement_workflow_webservice_value OWNER TO postgres_app;

--
-- Name: sira_user; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE sira_user (
    id_sira_user bigint NOT NULL,
    user_guid character varying(255),
    user_udid character varying(255),
    user_device character varying(255),
    user_email character varying(255),
    user_token character varying(255)
);


ALTER TABLE sira_user OWNER TO postgres_app;

--
-- Name: unittree_action; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE unittree_action (
    id_action integer DEFAULT 0 NOT NULL,
    name_key character varying(100) DEFAULT ''::character varying NOT NULL,
    description_key character varying(100) DEFAULT ''::character varying NOT NULL,
    action_url character varying(255) DEFAULT ''::character varying NOT NULL,
    icon_url character varying(255) DEFAULT ''::character varying NOT NULL,
    action_permission character varying(50) DEFAULT ''::character varying NOT NULL,
    action_type character varying(50) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE unittree_action OWNER TO postgres_app;

--
-- Name: unittree_sector; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE unittree_sector (
    id_sector bigint NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    number_sector character varying(20) DEFAULT ''::character varying NOT NULL,
    geom geometry(MultiPolygon)
);


ALTER TABLE unittree_sector OWNER TO postgres_app;

--
-- Name: unittree_unit; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE unittree_unit (
    id_unit integer DEFAULT 0 NOT NULL,
    id_parent integer DEFAULT 0 NOT NULL,
    label character varying(255) DEFAULT ''::character varying NOT NULL,
    description character varying(255) DEFAULT ''::character varying NOT NULL
);


ALTER TABLE unittree_unit OWNER TO postgres_app;

--
-- Name: unittree_unit_sector; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE unittree_unit_sector (
    id_unit integer DEFAULT 0 NOT NULL,
    id_sector integer DEFAULT 0 NOT NULL
);


ALTER TABLE unittree_unit_sector OWNER TO postgres_app;

--
-- Name: unittree_unit_user; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE unittree_unit_user (
    id_unit integer DEFAULT 0 NOT NULL,
    id_user integer DEFAULT 0 NOT NULL
);


ALTER TABLE unittree_unit_user OWNER TO postgres_app;

--
-- Name: v_signalement_type_signalement_with_parents_links; Type: MATERIALIZED VIEW; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE MATERIALIZED VIEW v_signalement_type_signalement_with_parents_links AS
 SELECT liens_signalement.id_type_signalement,
    liens_signalement.id_parent,
    liens_signalement.is_parent_a_category,
    liens_signalement.actif
   FROM signalementgettypesignalementhierarchy() liens_signalement(id_type_signalement, id_parent, actif, is_parent_a_category)
  WITH NO DATA;


ALTER TABLE v_signalement_type_signalement_with_parents_links OWNER TO postgres_app;

--
-- Name: workflow_action_action; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_action_action (
    id_action integer DEFAULT 0 NOT NULL,
    id_linked_action integer DEFAULT 0 NOT NULL
);


ALTER TABLE workflow_action_action OWNER TO postgres_app;

--
-- Name: workflow_assignment_history; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_assignment_history (
    id_history integer DEFAULT 0 NOT NULL,
    id_task integer NOT NULL,
    workgroup_key character varying(255) NOT NULL
);


ALTER TABLE workflow_assignment_history OWNER TO postgres_app;

--
-- Name: workflow_prerequisite; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_prerequisite (
    id_prerequisite integer NOT NULL,
    id_action integer NOT NULL,
    prerequisite_type character varying(255) NOT NULL
);


ALTER TABLE workflow_prerequisite OWNER TO postgres_app;

--
-- Name: workflow_prerequisite_duration_cf; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_prerequisite_duration_cf (
    id_prerequisite integer NOT NULL,
    duration integer NOT NULL
);


ALTER TABLE workflow_prerequisite_duration_cf OWNER TO postgres_app;

--
-- Name: workflow_resource_workflow; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_resource_workflow (
    id_resource integer DEFAULT 0 NOT NULL,
    resource_type character varying(255) NOT NULL,
    id_state integer,
    id_workflow integer NOT NULL,
    id_external_parent integer,
    is_associated_workgroups smallint DEFAULT 0
);


ALTER TABLE workflow_resource_workflow OWNER TO postgres_app;

--
-- Name: workflow_resource_workgroup; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_resource_workgroup (
    id_resource integer DEFAULT 0 NOT NULL,
    resource_type character varying(255) DEFAULT NULL::character varying,
    id_workflow integer,
    workgroup_key character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE workflow_resource_workgroup OWNER TO postgres_app;

--
-- Name: workflow_task_assignment_cf; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_task_assignment_cf (
    id_task integer DEFAULT 0 NOT NULL,
    title character varying(255) DEFAULT NULL::character varying,
    is_multiple_owner smallint DEFAULT 0,
    is_notify smallint DEFAULT 0,
    message character varying(255) DEFAULT NULL::character varying,
    subject character varying(45) DEFAULT NULL::character varying,
    is_use_user_name smallint DEFAULT 0
);


ALTER TABLE workflow_task_assignment_cf OWNER TO postgres_app;

--
-- Name: workflow_task_comment_config; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_task_comment_config (
    id_task integer DEFAULT 0 NOT NULL,
    title character varying(255) DEFAULT NULL::character varying,
    is_mandatory smallint DEFAULT 0,
    is_richtext smallint DEFAULT 0
);


ALTER TABLE workflow_task_comment_config OWNER TO postgres_app;

--
-- Name: workflow_task_comment_value; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_task_comment_value (
    id_history integer DEFAULT 0 NOT NULL,
    id_task integer NOT NULL,
    comment_value text
);


ALTER TABLE workflow_task_comment_value OWNER TO postgres_app;

--
-- Name: workflow_task_notification_cf; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_task_notification_cf (
    id_task integer DEFAULT 0 NOT NULL,
    id_mailing_list integer,
    sender_name character varying(255) DEFAULT NULL::character varying,
    subject character varying(255) DEFAULT NULL::character varying,
    message text
);


ALTER TABLE workflow_task_notification_cf OWNER TO postgres_app;

--
-- Name: workflow_task_notify_gru_cf; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_task_notify_gru_cf (
    id_task integer NOT NULL,
    id_spring_provider character varying(255) DEFAULT NULL::character varying,
    marker_provider_ids character varying(1000),
    demand_status integer,
    crm_status_id integer DEFAULT 1,
    set_onglet smallint,
    message_guichet text,
    status_text_guichet character varying(255) DEFAULT NULL::character varying,
    sender_name_guichet character varying(255) DEFAULT NULL::character varying,
    subject_guichet character varying(255) DEFAULT NULL::character varying,
    demand_max_step_guichet smallint DEFAULT 1,
    demand_user_current_step_guichet smallint DEFAULT 1,
    is_active_onglet_guichet smallint DEFAULT 0,
    status_text_agent character varying(255) DEFAULT NULL::character varying,
    message_agent text,
    is_active_onglet_agent smallint DEFAULT 0 NOT NULL,
    subject_email character varying(255) DEFAULT NULL::character varying,
    message_email text,
    sender_name_email character varying(255) DEFAULT NULL::character varying,
    recipients_cc_email character varying(255) DEFAULT NULL::character varying,
    recipients_cci_email character varying(255) DEFAULT NULL::character varying,
    is_active_onglet_email smallint DEFAULT 0,
    message_sms text,
    billing_account_sms character varying(255) DEFAULT NULL::character varying,
    billing_group_sms character varying(255) DEFAULT NULL::character varying,
    is_active_onglet_sms smallint DEFAULT 0 NOT NULL,
    id_mailing_list_broadcast integer,
    email_broadcast character varying(255) DEFAULT NULL::character varying,
    sender_name_broadcast character varying(255) DEFAULT NULL::character varying,
    subject_broadcast character varying(255) DEFAULT NULL::character varying,
    message_broadcast text,
    recipients_cc_broadcast character varying(255) DEFAULT NULL::character varying,
    recipients_cci_broadcast character varying(255) DEFAULT NULL::character varying,
    is_active_onglet_broadcast smallint DEFAULT 0
);


ALTER TABLE workflow_task_notify_gru_cf OWNER TO postgres_app;

--
-- Name: workflow_task_notify_gru_history; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_task_notify_gru_history (
    id_history integer NOT NULL,
    id_task integer NOT NULL,
    crm_status_id integer DEFAULT 1,
    message_guichet text,
    status_text_guichet character varying(255) DEFAULT NULL::character varying,
    sender_name_guichet character varying(255) DEFAULT NULL::character varying,
    subject_guichet character varying(255) DEFAULT NULL::character varying,
    demand_max_step_guichet smallint DEFAULT 1,
    demand_user_current_step_guichet smallint DEFAULT 1,
    is_active_onglet_guichet smallint DEFAULT 0,
    status_text_agent character varying(255) DEFAULT NULL::character varying,
    message_agent text,
    is_active_onglet_agent smallint DEFAULT 0 NOT NULL,
    subject_email character varying(255) DEFAULT NULL::character varying,
    message_email text,
    sender_name_email character varying(255) DEFAULT NULL::character varying,
    recipients_cc_email character varying(255) DEFAULT NULL::character varying,
    recipients_cci_email character varying(255) DEFAULT NULL::character varying,
    is_active_onglet_email smallint DEFAULT 0,
    message_sms text,
    billing_account_sms character varying(255) DEFAULT NULL::character varying,
    billing_group_sms character varying(255) DEFAULT NULL::character varying,
    is_active_onglet_sms smallint DEFAULT 0 NOT NULL,
    id_mailing_list_broadcast integer,
    email_broadcast character varying(255) DEFAULT NULL::character varying,
    sender_name_broadcast character varying(255) DEFAULT NULL::character varying,
    subject_broadcast character varying(255) DEFAULT NULL::character varying,
    message_broadcast text,
    recipients_cc_broadcast character varying(255) DEFAULT NULL::character varying,
    recipients_cci_broadcast character varying(255) DEFAULT NULL::character varying,
    is_active_onglet_broadcast smallint DEFAULT 0
);


ALTER TABLE workflow_task_notify_gru_history OWNER TO postgres_app;

--
-- Name: workflow_workgroup_cf; Type: TABLE; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE TABLE workflow_workgroup_cf (
    id_task integer DEFAULT 0 NOT NULL,
    workgroup_key character varying(255) NOT NULL,
    id_mailing_list integer
);


ALTER TABLE workflow_workgroup_cf OWNER TO postgres_app;

--
-- Name: id_mail_queue; Type: DEFAULT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY core_mail_queue ALTER COLUMN id_mail_queue SET DEFAULT nextval('core_mail_queue_id_mail_queue_seq'::regclass);


--
-- Name: id_consqrt; Type: DEFAULT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_conseil_quartier ALTER COLUMN id_consqrt SET DEFAULT nextval('signalement_conseil_quartier_id_consqrt_seq'::regclass);


--
-- Name: id_signalement_numero_signalement; Type: DEFAULT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_numero_signalement ALTER COLUMN id_signalement_numero_signalement SET DEFAULT nextval('signalement_numero_signalemen_id_signalement_numero_signale_seq'::regclass);


--
-- Name: id_action; Type: DEFAULT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_action ALTER COLUMN id_action SET DEFAULT nextval('seq_workflow_action'::regclass);


--
-- Name: id_icon; Type: DEFAULT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_icon ALTER COLUMN id_icon SET DEFAULT nextval('seq_workflow_icon'::regclass);


--
-- Name: id_history; Type: DEFAULT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_resource_history ALTER COLUMN id_history SET DEFAULT nextval('seq_workflow_resource_history'::regclass);


--
-- Name: id_state; Type: DEFAULT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_state ALTER COLUMN id_state SET DEFAULT nextval('seq_workflow_state'::regclass);


--
-- Name: id_task; Type: DEFAULT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_task ALTER COLUMN id_task SET DEFAULT nextval('seq_workflow_task'::regclass);


--
-- Name: id_workflow; Type: DEFAULT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_workflow ALTER COLUMN id_workflow SET DEFAULT nextval('seq_workflow_workflow'::regclass);


--
-- Data for Name: core_admin_dashboard; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_dashboard (dashboard_name, dashboard_column, dashboard_order) FROM stdin;
usersAdminDashboardComponent	1	1
searchAdminDashboardComponent	1	2
formEngineAdminDashboardComponent	1	1
workflowAdminDashboardComponent	1	1
myluteceAuthenticationFilterAdminDashboardComponent	1	3
\.


--
-- Data for Name: core_admin_mailinglist; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_mailinglist (id_mailinglist, name, description, workgroup) FROM stdin;
1	admin	admin	all
\.


--
-- Data for Name: core_admin_mailinglist_filter; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_mailinglist_filter (id_mailinglist, workgroup, role) FROM stdin;
1	all	super_admin
\.


--
-- Data for Name: core_admin_right; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_right (id_right, name, level_right, admin_url, description, is_updatable, plugin_name, id_feature_group, icon_url, documentation_url, id_order, is_external_feature) FROM stdin;
SIGNALEMENT_DASHBOARD	dansmarue.adminFeature.signalementDashboard.name	2	jsp/admin/plugins/signalement/ManageSignalementDashboard.jsp	dansmarue.adminFeature.signalementDashboard.description	0	signalement	SIGNALEMENT	\N	\N	4	0
CORE_ADMIN_SITE	portal.site.adminFeature.admin_site.name	2	jsp/admin/site/AdminSite.jsp	portal.site.adminFeature.admin_site.description	1	\N	SITE	images/admin/skin/features/admin_site.png	jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-site	1	0
CORE_CACHE_MANAGEMENT	portal.system.adminFeature.cache_management.name	0	jsp/admin/system/ManageCaches.jsp	portal.system.adminFeature.cache_management.description	1	\N	SYSTEM	images/admin/skin/features/manage_caches.png	\N	1	0
CORE_SEARCH_INDEXATION	portal.search.adminFeature.indexer.name	0	jsp/admin/search/ManageSearchIndexation.jsp	portal.search.adminFeature.indexer.description	0	\N	SYSTEM	\N	\N	2	0
CORE_SEARCH_MANAGEMENT	portal.search.adminFeature.search_management.name	0	jsp/admin/search/ManageSearch.jsp	portal.search.adminFeature.search_management.description	0	\N	SYSTEM	\N	\N	3	0
CORE_LOGS_VISUALISATION	portal.system.adminFeature.logs_visualisation.name	0	jsp/admin/system/ManageFilesSystem.jsp	portal.system.adminFeature.logs_visualisation.description	1	\N	SYSTEM	images/admin/skin/features/view_logs.png	\N	4	0
CORE_MODES_MANAGEMENT	portal.style.adminFeature.modes_management.name	0	jsp/admin/style/ManageModes.jsp	portal.style.adminFeature.modes_management.description	1	\N	STYLE	images/admin/skin/features/manage_modes.png	\N	1	0
CORE_PAGE_TEMPLATE_MANAGEMENT	portal.style.adminFeature.page_template_management.name	0	jsp/admin/style/ManagePageTemplates.jsp	portal.style.adminFeature.page_template_management.description	0	\N	STYLE	images/admin/skin/features/manage_page_templates.png	\N	2	0
CORE_PLUGINS_MANAGEMENT	portal.system.adminFeature.plugins_management.name	0	jsp/admin/system/ManagePlugins.jsp	portal.system.adminFeature.plugins_management.description	1	\N	SYSTEM	images/admin/skin/features/manage_plugins.png	\N	5	0
CORE_PROPERTIES_MANAGEMENT	portal.site.adminFeature.properties_management.name	2	jsp/admin/ManageProperties.jsp	portal.site.adminFeature.properties_management.description	0	\N	SITE	\N	jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-properties	2	0
CORE_STYLESHEET_MANAGEMENT	portal.style.adminFeature.stylesheet_management.name	0	jsp/admin/style/ManageStyleSheets.jsp	portal.style.adminFeature.stylesheet_management.description	1	\N	STYLE	images/admin/skin/features/manage_stylesheets.png	\N	3	0
CORE_STYLES_MANAGEMENT	portal.style.adminFeature.styles_management.name	0	jsp/admin/style/ManageStyles.jsp	portal.style.adminFeature.styles_management.description	1	\N	STYLE	images/admin/skin/features/manage_styles.png	\N	4	0
CORE_USERS_MANAGEMENT	portal.users.adminFeature.users_management.name	2	jsp/admin/user/ManageUsers.jsp	portal.users.adminFeature.users_management.description	1		MANAGERS	images/admin/skin/features/manage_users.png	\N	1	0
CORE_RBAC_MANAGEMENT	portal.rbac.adminFeature.rbac_management.name	0	jsp/admin/rbac/ManageRoles.jsp	portal.rbac.adminFeature.rbac_management.description	0		MANAGERS	images/admin/skin/features/manage_rbac.png	\N	2	0
CORE_DAEMONS_MANAGEMENT	portal.system.adminFeature.daemons_management.name	0	jsp/admin/system/ManageDaemons.jsp	portal.system.adminFeature.daemons_management.description	0	\N	SYSTEM	\N	\N	7	0
CORE_WORKGROUPS_MANAGEMENT	portal.workgroup.adminFeature.workgroups_management.name	2	jsp/admin/workgroup/ManageWorkgroups.jsp	portal.workgroup.adminFeature.workgroups_management.description	0	\N	MANAGERS	images/admin/skin/features/manage_workgroups.png	\N	3	0
CORE_ROLES_MANAGEMENT	portal.role.adminFeature.roles_management.name	2	jsp/admin/role/ManagePageRole.jsp	portal.role.adminFeature.roles_management.description	0	\N	USERS	images/admin/skin/features/manage_roles.png	\N	1	0
CORE_MAILINGLISTS_MANAGEMENT	portal.mailinglist.adminFeature.mailinglists_management.name	2	jsp/admin/mailinglist/ManageMailingLists.jsp	portal.mailinglist.adminFeature.mailinglists_management.description	0	\N	MANAGERS	images/admin/skin/features/manage_mailinglists.png	\N	4	0
CORE_LEVEL_RIGHT_MANAGEMENT	portal.users.adminFeature.level_right_management.name	2	jsp/admin/features/ManageLevels.jsp	portal.users.adminFeature.level_right_management.description	0	\N	MANAGERS	images/admin/skin/features/manage_rights_levels.png	\N	5	0
CORE_LINK_SERVICE_MANAGEMENT	portal.insert.adminFeature.linkService_management.name	2	\N	portal.insert.adminFeature.linkService_management.description	0	\N	\N	\N	\N	1	0
CORE_RIGHT_MANAGEMENT	portal.users.adminFeature.right_management.name	0	jsp/admin/features/ManageRights.jsp	portal.users.adminFeature.right_management.description	0	\N	MANAGERS	images/admin/skin/features/manage_rights_levels.png	\N	5	0
CORE_DASHBOARD_MANAGEMENT	portal.dashboard.adminFeature.dashboard_management.name	0	jsp/admin/dashboard/ManageDashboards.jsp	portal.dashboard.adminFeature.dashboard_management.description	0	\N	SYSTEM	images/admin/skin/features/manage_dashboards.png	\N	9	0
PROFILES_MANAGEMENT	profiles.adminFeature.profiles_management.name	0	jsp/admin/plugins/profiles/ManageProfiles.jsp	profiles.adminFeature.profiles_management.description	0	profiles	MANAGERS	images/admin/skin/plugins/profiles/profiles.png	\N	\N	0
PROFILES_VIEWS_MANAGEMENT	profiles.adminFeature.views_management.name	0	jsp/admin/plugins/profiles/ManageViews.jsp	profiles.adminFeature.views_management.description	0	profiles	MANAGERS	images/admin/skin/plugins/profiles/views.png	\N	\N	0
UNITS_MANAGEMENT	unittree.adminFeature.unitsManagement.name	2	jsp/admin/plugins/unittree/ManageUnits.jsp	unittree.adminFeature.unitsManagement.description	0	unittree	MANAGERS	images/admin/skin/plugins/unittree/unittree.png		\N	0
WORKFLOW_MANAGEMENT	workflow.adminFeature.workflow_management.name	2	jsp/admin/plugins/workflow/ManageWorkflow.jsp	workflow.adminFeature.workflow_management.description	0	workflow	APPLICATIONS	images/admin/skin/plugins/workflow/workflow.png	jsp/admin/documentation/AdminDocumentation.jsp?doc=admin-workflow	\N	0
CORE_XSL_EXPORT_MANAGEMENT	portal.xsl.adminFeature.xsl_export_management.name	2	jsp/admin/xsl/ManageXslExport.jsp	portal.xsl.adminFeature.xsl_export_management.description	1	\N	SYSTEM	\N	\N	10	0
CORE_ADMINDASHBOARD_MANAGEMENT	portal.admindashboard.adminFeature.right_management.name	0	jsp/admin/admindashboard/ManageAdminDashboards.jsp	portal.admindashboard.adminFeature.right_management.description	0	\N	SIGNALEMENT	images/admin/skin/features/manage_admindashboards.png	\N	8	0
CORE_GLOBAL_MANAGEMENT	portal.globalmanagement.adminFeature.global_management.name	2	jsp/admin/globalmanagement/GetGlobalManagement.jsp	portal.globalmanagement.adminFeature.global_management.description	1	\N	SYSTEM	\N	\N	10	0
CORE_FEATURES_MANAGEMENT	portal.admin.adminFeature.features_management.name	0	jsp/admin/features/DispatchFeatures.jsp	portal.admin.adminFeature.features_management.description	0	\N	SYSTEM	images/admin/skin/features/manage_features.png	\N	6	0
MESSAGE_TRACKING_MANAGEMENT	module.workflow.dansmarue.adminFeature.messageTrackingManagement.name	2	jsp/admin/plugins/workflow/modules/signalement/GetMessageTrackingManagement.jsp	module.workflow.signalement.adminFeature.messageTrackingManagement.description	0	signalement	SIGNALEMENT	\N	\N	1	0
MYLUTECE_MANAGEMENT	mylutece.adminFeature.mylutece_management.name	2	jsp/admin/plugins/mylutece/attribute/ManageAttributes.jsp	mylutece.adminFeature.mylutece_management.description	0	mylutece	USERS	\N	\N	\N	0
MYLUTECE_MANAGE_AUTHENTICATION_FILTER	mylutece.adminFeature.mylutece_management_authentication_filter.name	2	jsp/admin/plugins/mylutece/security/ManageAuthenticationFilter.jsp	mylutece.adminFeature.mylutece_management_authentication_filter.description	0	mylutece	USERS	\N	\N	\N	0
REFERENTIEL_MANAGEMENT_SIGNALEMENT	dansmarue.adminFeature.referentielmanagement.name	2	jsp/admin/plugins/signalement/ManageReferentiel.jsp	dansmarue.adminFeature.referentielmanagement.description	0	signalement	SIGNALEMENT	\N	\N	2	0
SIGNALEMENT_MANAGEMENT	dansmarue.adminFeature.signalementManagement.name	2	jsp/admin/plugins/signalement/ManageSignalement.jsp	dansmarue.adminFeature.signalementManagement.description	0	signalement	SIGNALEMENT	\N	\N	1	0
PIWIK_MANAGEMENT	piwik.adminFeature.ManagePiwik.name	2	jsp/admin/plugins/piwik/Piwik.jsp	piwik.adminFeature.ManagePiwik.description	0	piwik	\N	\N	\N	2	0
CORE_EXTERNAL_FEATURES_MANAGEMENT	portal.system.adminFeature.external_features_management.name	1	jsp/admin/features/ManageExternalFeatures.jsp	portal.system.adminFeature.external_features_management.description	1	\N	SYSTEM	\N	\N	11	0
SIGNALEMENT_DISPLAY	dansmarue.adminFeature.signalementdisplay.name	2	jsp/admin/plugins/signalement/DisplaySignalement.jsp	dansmarue.adminFeature.signalementdisplay.description	0	signalement	SIGNALEMENT	\N	\N	3	0
SITELABELS_MANAGEMENT	sitelabels.adminFeature.ManageSiteLabels.name	0	jsp/admin/plugins/sitelabels/ManageLabels.jsp	sitelabels.adminFeature.ManageSiteLabels.description	0	sitelabels	SITE	\N	\N	3	0
ELASTICDATA_MANAGEMENT	elasticdata.adminFeature.ManageElasticData.name	0	jsp/admin/plugins/elasticdata/ManageElasticData.jsp	elasticdata.adminFeature.ManageElasticData.description	0	elasticdata	\N	\N	\N	3	0
\.


--
-- Data for Name: core_admin_role; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_role (role_key, role_description) FROM stdin;
all_site_manager	Site Manager
super_admin	Super Administrateur
profiles_manager	Profiles management
profiles_views_manager	Profiles Views management
unittree_management	Gestion des entités
workflow_manager	Workflow management
DEVE_CODIR	Chef de division, son adjoint ou représentant
DPE_CELLULETECHNIQUE	Cellule technique de la DPE
DPE_CODIR	Chef de division, son adjoint ou représentant
DPE_OBSERVATEUR	Observateur DPE (ne peut rien faire mais voit tout)
DPE_STANDARD	Standardiste d'une division de la DPE
DVD_CHEFDESECTEUR	Chef de secteur de la DVD
OBSERVATEUR_MAIRIES	observateur mairie d'arrondissement
ADMIN_Projet	ADMIN_Projet
DPE_FONCTIONNELLE	GESTION_DES_GRAFFITIS_DES_AFFICHAGES
Observateur_12eme	Observateur_12eme
OBSERVATEUR_MAIRIE_1er	OBSERVATEUR_MAIRIE_1er
OBSERVATEUR_MAIRIE_2	OBSERVATEUR_MAIRIE_2
OBSERVATEUR_MAIRIE_3	OBSERVATEUR_MAIRIE_3
OBSERVATEUR_MAIRIE_4	OBSERVATEUR_MAIRIE_4
OBSERVATEUR_MAIRIE_5	OBSERVATEUR_MAIRIE_5
OBSERVATEUR_MAIRIE_6	OBSERVATEUR_MAIRIE_6
OBSERVATEUR_MAIRIE_7	OBSERVATEUR_MAIRIE_7
OBSERVATEUR_MAIRIE_8	OBSERVATEUR_MAIRIE_8
OBSERVATEUR_MAIRIE_9	OBSERVATEUR_MAIRIE_6
OBSERVATEUR_MAIRIE_10	OBSERVATEUR_MAIRIE_10
OBSERVATEUR_MAIRIE_11	OBSERVATEUR_MAIRIE_11
OBSERVATEUR_MAIRIE_12	OBSERVATEUR_MAIRIE_12
OBSERVATEUR_MAIRIE_13	OBSERVATEUR_MAIRIE_13
OBSERVATEUR_MAIRIE_14	OBSERVATEUR_MAIRIE_14
OBSERVATEUR_MAIRIE_15	OBSERVATEUR_MAIRIE_15
OBSERVATEUR_MAIRIE_16	OBSERVATEUR_MAIRIE_16
OBSERVATEUR_MAIRIE_17	OBSERVATEUR_MAIRIE_17
OBSERVATEUR_MAIRIE_18	OBSERVATEUR_MAIRIE_18
OBSERVATEUR_MAIRIE_19	OBSERVATEUR_MAIRIE_19
OBSERVATEUR_MAIRIE_20	OBSERVATEUR_MAIRIE_20
DEVE_VEGETALISATION1	DEVE_VEGETALISATION
SUPP_VEGE	SUPP_VEGE
SUPPR_VEGETALISATION	SUPPR_VEGETALISATION
DPE_GRAF_ALL	DPE_GRAF_ALL
DVD_PRESTA	DVD_PRESTA
test	test
test_jpc	test_jpc
assign_roles	Assigner des roles aux utilisateurs
assign_groups	Assigner des groupes aux utilisateurs
mylutece_manager	Gérer les paramètres avancés Mylutece
DVD_CODIR	Chef de division, son adjoint ou représentant
PRESTATAIRE	Prestataire
Consultation_DVD	Consultation des anomalies pour DVD
Consultation_DPE	Consultation des anomalies pour DPE
testx	testx yyu
Consultation_DVD_agent	Consultation pour agent de la DVD
Consultation_DVD_CENTRE	Consultation_DVD_CENTRE
Consultation_DVD_NORD_EST	Consultation_DVD_NORD_EST
Consultation_DVD_NORD_OUEST	Consultation_DVD_NORD_OUEST
Consultation_DVD_SUD	Consultation_DVD_SUD
Consultation_DVD_SUD_EST	Consultation_DVD_SUD_EST
Consultation_DVD_SUD_OUEST	Consultation_DVD_SUD_OUEST
Consultation_DEVE	Consultation des anomalies pour DEVE sur tout Paris
DEVE_Admin_User	Gestion des utilisateurs de la DEVE
DPE_Admin_User	Administration des utilisateurs de la DPE
DAJ_Gestionnaire	Gestionnaire de la DAJ
\.


--
-- Data for Name: core_admin_role_resource; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_role_resource (rbac_id, role_key, resource_type, resource_id, permission) FROM stdin;
57	all_site_manager	PAGE	*	VIEW
58	all_site_manager	PAGE	*	MANAGE
77	super_admin	INSERT_SERVICE	*	*
101	all_site_manager	PORTLET_TYPE	*	*
111	all_site_manager	ADMIN_USER	*	*
137	all_site_manager	SEARCH_SERVICE	*	*
233	formengine_manager	FORMENGINE	*	*
150	profiles_manager	PROFILES	*	*
151	profiles_views_manager	PROFILES_VIEWS	*	*
1637	DAJ_Gestionnaire	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
950	DVD_CODIR	WORKFLOW_ACTION_TYPE	*	*
951	DVD_CODIR	WORKFLOW_STATE_TYPE	*	*
1638	DAJ_Gestionnaire	GESTION_DES_SIGNALEMENTS	*	MODIFICATION_SIGNALEMENT
954	DPE_CODIR	WORKFLOW_STATE_TYPE	*	*
1639	DAJ_Gestionnaire	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
957	DPE_STANDARD	GESTION_DES_SIGNALEMENTS	*	MODIFICATION_SIGNALEMENT
958	DPE_STANDARD	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
959	DPE_STANDARD	WORKFLOW_ACTION_TYPE	*	*
960	DPE_STANDARD	WORKFLOW_STATE_TYPE	*	*
1640	DAJ_Gestionnaire	GESTION_DES_SIGNALEMENTS	*	CREATION_SIGNALEMENT
1641	DAJ_Gestionnaire	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
970	DPE_CELLULETECHNIQUE	WORKFLOW_STATE_TYPE	*	*
976	DPE_OBSERVATEUR	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
977	DPE_OBSERVATEUR	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
979	DPE_OBSERVATEUR	WORKFLOW_STATE_TYPE	*	*
980	DVD_CHEFDESECTEUR	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
981	DVD_CHEFDESECTEUR	GESTION_DES_SIGNALEMENTS	*	MODIFICATION_SIGNALEMENT
982	DVD_CHEFDESECTEUR	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
984	DVD_CHEFDESECTEUR	WORKFLOW_STATE_TYPE	*	*
985	DEVE_CODIR	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
988	DEVE_CODIR	WORKFLOW_ACTION_TYPE	*	*
989	DEVE_CODIR	WORKFLOW_STATE_TYPE	*	*
991	DPE_CODIR	GESTION_DES_SIGNALEMENTS	*	MODIFICATION_SIGNALEMENT
992	DPE_CODIR	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
994	DVD_CODIR	GESTION_DES_SIGNALEMENTS	*	MODIFICATION_SIGNALEMENT
1002	DPE_CODIR	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1005	DPE_CODIR	GESTION_DES_SIGNALEMENTS	*	CREATION_SIGNALEMENT
1014	DPE_STANDARD	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1017	DPE_STANDARD	GESTION_DES_SIGNALEMENTS	*	CREATION_SIGNALEMENT
1642	DAJ_Gestionnaire	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1643	DAJ_Gestionnaire	GESTION_DES_SIGNALEMENTS	*	TRAITEMENT_MASSE
1644	DAJ_Gestionnaire	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1646	DAJ_Gestionnaire	WORKFLOW_ACTION_TYPE	*	*
1647	DAJ_Gestionnaire	SIGNALEMENT_ARRONDISSEMENT	*	*
1648	DAJ_Gestionnaire	TYPE_SIGNALEMENT	*	*
1649	DAJ_Gestionnaire	TYPE_SIGNALEMENT	12006	*
1081	DPE_CELLULETECHNIQUE	WORKFLOW_ACTION_TYPE	*	*
1085	DVD_CHEFDESECTEUR	WORKFLOW_ACTION_TYPE	*	*
1650	Consultation_DEVE	SIGNALEMENT_DOMAINE_FONCTIONNEL	23	*
949	super_admin	GESTION_DES_SIGNALEMENTS	*	*
1651	Consultation_DEVE	SIGNALEMENT_DOMAINE_FONCTIONNEL	24	*
1652	Consultation_DEVE	SIGNALEMENT_DOMAINE_FONCTIONNEL	25	*
1013	DVD_CODIR	GESTION_DES_SIGNALEMENTS	*	CREATION_SIGNALEMENT
210	unittree_management	UNIT_TYPE	*	*
912	workflow_manager	WORKFLOW_ACTION_TYPE	*	*
923	workflow_manager	WORKFLOW_STATE_TYPE	*	*
939	super_admin	WORKFLOW_ACTION_TYPE	*	*
947	super_admin	WORKFLOW_STATE_TYPE	*	*
1041	DEVE_CODIR	GESTION_DES_SIGNALEMENTS	*	MODIFICATION_SIGNALEMENT
1042	DEVE_CODIR	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1043	DEVE_CODIR	GESTION_DES_SIGNALEMENTS	*	CREATION_SIGNALEMENT
1044	DVD_CODIR	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1046	DVD_CODIR	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1048	DPE_CODIR	WORKFLOW_ACTION_TYPE	*	*
1078	DPE_CELLULETECHNIQUE	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1080	DPE_CELLULETECHNIQUE	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1146	DPE_CODIR	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1147	DEVE_CODIR	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1148	DVD_CODIR	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1149	DVD_CHEFDESECTEUR	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1150	DPE_STANDARD	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1156	DPE_CELLULETECHNIQUE	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1213	OBSERVATEUR_MAIRIES	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1214	OBSERVATEUR_MAIRIES	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1200	super_admin	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1249	ADMIN_Projet	WORKFLOW_ACTION_TYPE	*	*
1250	ADMIN_Projet	WORKFLOW_STATE_TYPE	*	*
1251	ADMIN_Projet	GESTION_DES_SIGNALEMENTS	*	*
1253	ADMIN_Projet	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1254	DPE_FONCTIONNELLE	WORKFLOW_ACTION_TYPE	*	*
1255	DPE_FONCTIONNELLE	WORKFLOW_STATE_TYPE	*	*
1257	DPE_FONCTIONNELLE	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1258	DPE_FONCTIONNELLE	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1259	DPE_FONCTIONNELLE	GESTION_DES_SIGNALEMENTS	*	MODIFICATION_SIGNALEMENT
1260	DPE_FONCTIONNELLE	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1261	DVD_CODIR	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1262	DEVE_CODIR	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1263	DPE_CELLULETECHNIQUE	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1265	DPE_CODIR	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1267	DPE_FONCTIONNELLE	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1268	DPE_OBSERVATEUR	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1269	DPE_STANDARD	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1270	DVD_CHEFDESECTEUR	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1271	OBSERVATEUR_MAIRIES	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1275	Observateur_12eme	SIGNALEMENT_ARRONDISSEMENT	12	VIEW_ARRONDISSEMENT_SIGNALEMENT
1276	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	7	*
1277	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	8	*
1278	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	9	*
1279	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	10	*
1280	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	11	*
1281	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	12	*
1282	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	13	*
1283	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	14	*
1284	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	15	*
1285	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	16	*
1286	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	17	*
1287	OBSERVATEUR_MAIRIES	WORKFLOW_STATE_TYPE	18	*
1288	OBSERVATEUR_MAIRIE_1er	SIGNALEMENT_ARRONDISSEMENT	1	VIEW_ARRONDISSEMENT_SIGNALEMENT
1289	OBSERVATEUR_MAIRIE_2	SIGNALEMENT_ARRONDISSEMENT	2	VIEW_ARRONDISSEMENT_SIGNALEMENT
1290	OBSERVATEUR_MAIRIE_3	SIGNALEMENT_ARRONDISSEMENT	3	VIEW_ARRONDISSEMENT_SIGNALEMENT
1291	OBSERVATEUR_MAIRIE_4	SIGNALEMENT_ARRONDISSEMENT	4	VIEW_ARRONDISSEMENT_SIGNALEMENT
1292	OBSERVATEUR_MAIRIE_5	SIGNALEMENT_ARRONDISSEMENT	5	VIEW_ARRONDISSEMENT_SIGNALEMENT
1293	OBSERVATEUR_MAIRIE_6	SIGNALEMENT_ARRONDISSEMENT	6	VIEW_ARRONDISSEMENT_SIGNALEMENT
1294	OBSERVATEUR_MAIRIE_7	SIGNALEMENT_ARRONDISSEMENT	7	VIEW_ARRONDISSEMENT_SIGNALEMENT
1295	OBSERVATEUR_MAIRIE_8	SIGNALEMENT_ARRONDISSEMENT	8	VIEW_ARRONDISSEMENT_SIGNALEMENT
1296	OBSERVATEUR_MAIRIE_8	SIGNALEMENT_ARRONDISSEMENT	8	VIEW_ARRONDISSEMENT_SIGNALEMENT
1297	OBSERVATEUR_MAIRIE_9	SIGNALEMENT_ARRONDISSEMENT	9	VIEW_ARRONDISSEMENT_SIGNALEMENT
1298	OBSERVATEUR_MAIRIE_10	SIGNALEMENT_ARRONDISSEMENT	10	VIEW_ARRONDISSEMENT_SIGNALEMENT
1300	OBSERVATEUR_MAIRIE_12	SIGNALEMENT_ARRONDISSEMENT	12	VIEW_ARRONDISSEMENT_SIGNALEMENT
1301	OBSERVATEUR_MAIRIE_13	SIGNALEMENT_ARRONDISSEMENT	13	VIEW_ARRONDISSEMENT_SIGNALEMENT
1302	OBSERVATEUR_MAIRIE_14	SIGNALEMENT_ARRONDISSEMENT	14	VIEW_ARRONDISSEMENT_SIGNALEMENT
1303	OBSERVATEUR_MAIRIE_15	SIGNALEMENT_ARRONDISSEMENT	15	VIEW_ARRONDISSEMENT_SIGNALEMENT
1304	OBSERVATEUR_MAIRIE_16	SIGNALEMENT_ARRONDISSEMENT	16	VIEW_ARRONDISSEMENT_SIGNALEMENT
1305	OBSERVATEUR_MAIRIE_17	SIGNALEMENT_ARRONDISSEMENT	17	VIEW_ARRONDISSEMENT_SIGNALEMENT
1306	OBSERVATEUR_MAIRIE_18	SIGNALEMENT_ARRONDISSEMENT	18	VIEW_ARRONDISSEMENT_SIGNALEMENT
1307	OBSERVATEUR_MAIRIE_19	SIGNALEMENT_ARRONDISSEMENT	19	VIEW_ARRONDISSEMENT_SIGNALEMENT
1308	OBSERVATEUR_MAIRIE_20	SIGNALEMENT_ARRONDISSEMENT	20	VIEW_ARRONDISSEMENT_SIGNALEMENT
1309	OBSERVATEUR_MAIRIE_11	SIGNALEMENT_ARRONDISSEMENT	11	VIEW_ARRONDISSEMENT_SIGNALEMENT
1389	DEVE_VEGETALISATION1	WORKFLOW_STATE_TYPE	*	*
1390	DEVE_VEGETALISATION1	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1391	DEVE_VEGETALISATION1	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1392	DEVE_VEGETALISATION1	GESTION_DES_SIGNALEMENTS	*	MODIFICATION_SIGNALEMENT
1393	DEVE_VEGETALISATION1	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1394	DEVE_VEGETALISATION1	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1395	DEVE_VEGETALISATION1	SIGNALEMENT_ARRONDISSEMENT	*	*
1396	DEVE_VEGETALISATION1	TYPE_SIGNALEMENT	10612	*
1397	DEVE_VEGETALISATION1	TYPE_SIGNALEMENT	10613	*
1398	DEVE_VEGETALISATION1	TYPE_SIGNALEMENT	10614	*
1399	DEVE_VEGETALISATION1	TYPE_SIGNALEMENT	10615	*
1400	DEVE_VEGETALISATION1	TYPE_SIGNALEMENT	10616	*
1401	DEVE_VEGETALISATION1	TYPE_SIGNALEMENT	10617	*
1408	SUPP_VEGE	WORKFLOW_STATE_TYPE	*	*
1410	SUPPR_VEGETALISATION	WORKFLOW_STATE_TYPE	7	*
1411	SUPPR_VEGETALISATION	WORKFLOW_STATE_TYPE	8	*
1412	SUPPR_VEGETALISATION	WORKFLOW_ACTION_TYPE	1	*
1413	SUPPR_VEGETALISATION	GESTION_DES_SIGNALEMENTS	*	SUPPRESSION_SIGNALEMENT
1414	SUPPR_VEGETALISATION	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1415	SUPPR_VEGETALISATION	GESTION_DES_SIGNALEMENTS	*	TRAITEMENT_MASSE
1416	SUPP_VEGE	GESTION_DES_SIGNALEMENTS	*	SUPPRESSION_SIGNALEMENT
1417	SUPP_VEGE	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1418	SUPP_VEGE	GESTION_DES_SIGNALEMENTS	*	TRAITEMENT_MASSE
1419	SUPP_VEGE	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1420	SUPP_VEGE	TYPE_SIGNALEMENT	10612	*
1421	SUPP_VEGE	TYPE_SIGNALEMENT	10613	*
1422	SUPP_VEGE	TYPE_SIGNALEMENT	10614	*
1423	SUPP_VEGE	TYPE_SIGNALEMENT	10615	*
1424	SUPP_VEGE	TYPE_SIGNALEMENT	10616	*
1425	SUPP_VEGE	TYPE_SIGNALEMENT	10617	*
1427	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	7	*
1428	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	8	*
1429	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	9	*
1430	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	10	*
1431	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	11	*
1432	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	12	*
1433	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	13	*
1434	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	15	*
1435	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	16	*
1436	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	17	*
1437	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	18	*
1438	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	19	*
1439	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	20	*
1440	DPE_GRAF_ALL	WORKFLOW_STATE_TYPE	21	*
1453	DVD_PRESTA	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1454	DVD_PRESTA	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1455	DVD_PRESTA	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1456	DVD_PRESTA	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1457	DVD_PRESTA	WORKFLOW_STATE_TYPE	*	*
1458	DVD_PRESTA	TYPE_SIGNALEMENT	6010	*
1459	DVD_PRESTA	TYPE_SIGNALEMENT	6020	*
1460	DVD_PRESTA	TYPE_SIGNALEMENT	6030	*
1461	DVD_PRESTA	TYPE_SIGNALEMENT	6040	*
1489	DPE_Admin_User	PROFILES_VIEWS	*	*
1491	DPE_Admin_User	GESTION_DES_SIGNALEMENTS	*	*
1503	DVD_PRESTA	SIGNALEMENT_ARRONDISSEMENT	*	*
1504	DPE_GRAF_ALL	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1505	DPE_GRAF_ALL	GESTION_DES_SIGNALEMENTS	*	ENVOI_MAIL_SIGNALEMENT
1506	DPE_GRAF_ALL	GESTION_DES_SIGNALEMENTS	*	MODIFICATION_SIGNALEMENT
1507	DPE_GRAF_ALL	GESTION_DES_SIGNALEMENTS	*	TRAITEMENT_MASSE
1508	DPE_GRAF_ALL	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1510	DPE_GRAF_ALL	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1511	DPE_GRAF_ALL	GESTION_DES_SIGNALEMENTS	*	CREATION_SIGNALEMENT
164	all_site_manager	XSL_EXPORT	*	*
205	assign_roles	ROLE_TYPE	*	ASSIGN_ROLE
206	assign_groups	GROUP_TYPE	*	ASSIGN_GROUP
207	mylutece_manager	MYLUTECE	*	*
1512	DVD_CODIR	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1513	PRESTATAIRE	WORKFLOW_STATE_TYPE	*	*
1514	PRESTATAIRE	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1515	PRESTATAIRE	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1516	PRESTATAIRE	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1544	Consultation_DVD	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1545	Consultation_DVD	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1546	Consultation_DVD	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1549	Consultation_DVD	SIGNALEMENT_DOMAINE_FONCTIONNEL	4	*
1553	Consultation_DPE	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1554	Consultation_DPE	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1555	Consultation_DPE	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1557	PRESTATAIRE	WORKFLOW_ACTION_TYPE	62	*
1558	PRESTATAIRE	WORKFLOW_ACTION_TYPE	64	*
1559	PRESTATAIRE	WORKFLOW_ACTION_TYPE	71	*
1560	PRESTATAIRE	WORKFLOW_ACTION_TYPE	73	*
1561	PRESTATAIRE	WORKFLOW_ACTION_TYPE	70	*
1562	PRESTATAIRE	WORKFLOW_ACTION_TYPE	72	*
1563	PRESTATAIRE	WORKFLOW_ACTION_TYPE	68	*
1564	PRESTATAIRE	WORKFLOW_ACTION_TYPE	63	*
1565	Consultation_DVD_agent	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1566	Consultation_DVD_agent	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1567	Consultation_DVD_agent	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1569	Consultation_DVD_CENTRE	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1570	Consultation_DVD_CENTRE	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1571	Consultation_DVD_CENTRE	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1574	Consultation_DVD_NORD_EST	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1575	Consultation_DVD_NORD_EST	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1576	Consultation_DVD_NORD_EST	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1578	Consultation_DVD_NORD_OUEST	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1579	Consultation_DVD_NORD_OUEST	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1580	Consultation_DVD_NORD_OUEST	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1582	Consultation_DVD_SUD	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1583	Consultation_DVD_SUD	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1584	Consultation_DVD_SUD	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1586	Consultation_DVD_SUD_EST	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1587	Consultation_DVD_SUD_EST	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1588	Consultation_DVD_SUD_EST	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1590	Consultation_DVD_SUD_OUEST	GESTION_DES_SIGNALEMENTS	*	RECHERCHER_SIGNALEMENT
1591	Consultation_DVD_SUD_OUEST	GESTION_DES_SIGNALEMENTS	*	EXPORTER_SIGNALEMENT
1592	Consultation_DVD_SUD_OUEST	GESTION_DES_SIGNALEMENTS	*	CONSULTATION_SIGNALEMENT
1595	DEVE_Admin_User	GESTION_DES_SIGNALEMENTS	*	*
1596	DEVE_Admin_User	PROFILES	DEVE_CODIR	*
1597	DEVE_Admin_User	PROFILES	DEVE_VEGETALISATION	*
1598	DEVE_Admin_User	PROFILES_VIEWS	*	*
1599	DEVE_Admin_User	SIGNALEMENT_ARRONDISSEMENT	*	*
1600	DEVE_Admin_User	TYPE_SIGNALEMENT	*	*
1601	DEVE_Admin_User	WORKFLOW_STATE_TYPE	*	*
1602	DEVE_Admin_User	WORKFLOW_ACTION_TYPE	*	*
1603	DEVE_Admin_User	PROFILES	DEVE_Admin_User	*
1604	DEVE_Admin_User	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1615	DPE_Admin_User	PROFILES	Consultation_anomalies_DPE	*
1616	DPE_Admin_User	PROFILES	DPE_Admin_User	*
1617	DPE_Admin_User	GESTION_SUIVI_DES_MESSAGES_DANSMARUE	*	*
1618	DPE_Admin_User	WORKFLOW_ACTION_TYPE	*	*
1619	DPE_Admin_User	WORKFLOW_STATE_TYPE	*	*
1620	DPE_Admin_User	SIGNALEMENT_ARRONDISSEMENT	*	*
1621	DPE_Admin_User	TYPE_SIGNALEMENT	*	*
1622	DPE_Admin_User	SIGNALEMENT_DOMAINE_FONCTIONNEL	*	*
1623	Consultation_DVD_NORD_OUEST	WORKFLOW_STATE_TYPE	*	*
1632	PRESTATAIRE	WORKFLOW_ACTION_TYPE	79	*
1636	PRESTATAIRE	WORKFLOW_ACTION_TYPE	78	*
\.


--
-- Data for Name: core_admin_user; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_user (id_user, access_code, last_name, first_name, email, status, password, locale, level_user, reset_password, accessibility_mode, password_max_valid_date, account_max_valid_date, nb_alerts_sent, last_login, workgroup_key) FROM stdin;
2	lutece	Lutèce	lutece	lutece@lutece.fr	1	PLAINTEXT:adminadmin	fr	1	0	0	1980-01-01 00:00:00	\N	0	1980-01-01 00:00:00	all
3	redac	redac	redac	redac@lutece.fr	1	PLAINTEXT:adminadmin	fr	2	0	0	1980-01-01 00:00:00	\N	0	1980-01-01 00:00:00	all
4	valid	valid	valid	valid@lutece.fr	1	PLAINTEXT:adminadmin	fr	3	0	0	1980-01-01 00:00:00	\N	0	1980-01-01 00:00:00	all
1	admin	Admin	admin	admin@lutece.fr	0	PBKDF2WITHHMACSHA512:40000:ebef6173c49caf367af008139fc7e235:0a1f770019af0785678697e4b59277db2e6321d944f3bf00ac6b47537a9f54ab879c3e678c2e6789ecced0432f0b4207b63b9c9eadd0b567e2650d40542bbc9df83941ba6fb26e114b0e01e4c21aa4c6325117a787ecd2fb2087b053489f2a1848f3ca71295ae1cc9df37c61ad24f1d38852e6185a0510a2e1fc6c1087b94956	fr	0	0	0	\N	1568375718197	0	2018-09-13 13:55:18.846	all
\.


--
-- Data for Name: core_admin_user_anonymize_field; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_user_anonymize_field (field_name, anonymize) FROM stdin;
access_code	1
last_name	1
first_name	1
email	1
\.


--
-- Data for Name: core_admin_user_field; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_user_field (id_user_field, id_user, id_attribute, id_field, id_file, user_field_value) FROM stdin;
3	4	1	10	\N	DEVE_CODIR
8	11	1	2	\N	DPE_CODIR
44	46	1	10	\N	DEVE_CODIR
45	49	1	10	\N	DEVE_CODIR
46	48	1	10	\N	DEVE_CODIR
47	45	1	10	\N	DEVE_CODIR
48	47	1	10	\N	DEVE_CODIR
49	50	1	10	\N	DEVE_CODIR
50	51	1	10	\N	DEVE_CODIR
51	58	1	10	\N	DEVE_CODIR
52	52	1	10	\N	DEVE_CODIR
56	54	1	10	\N	DEVE_CODIR
58	55	1	10	\N	DEVE_CODIR
59	56	1	10	\N	DEVE_CODIR
84	181	1	2	\N	DPE_CODIR
86	150	1	3	\N	DPE_STANDARD
89	153	1	2	\N	DPE_CODIR
90	154	1	2	\N	DPE_CODIR
92	157	1	2	\N	DPE_CODIR
3353	1175	1	11	\N	ADMIN
3354	1450	1	30	\N	DAJ_Gestionnaire
103	85	1	3	\N	DPE_STANDARD
105	87	1	3	\N	DPE_STANDARD
108	90	1	3	\N	DPE_STANDARD
111	93	1	3	\N	DPE_STANDARD
116	105	1	3	\N	DPE_STANDARD
135	179	1	3	\N	DPE_STANDARD
145	143	1	5	\N	DPE_CELLULETECHNIQUE
149	187	1	5	\N	DPE_CELLULETECHNIQUE
151	189	1	5	\N	DPE_CELLULETECHNIQUE
153	191	1	5	\N	DPE_CELLULETECHNIQUE
3355	867	1	2	\N	DPE_CODIR
263	275	1	10	\N	DEVE_CODIR
303	344	1	10	\N	DEVE_CODIR
304	345	1	10	\N	DEVE_CODIR
355	397	1	10	\N	DEVE_CODIR
356	396	1	10	\N	DEVE_CODIR
358	311	1	10	\N	DEVE_CODIR
359	309	1	10	\N	DEVE_CODIR
360	310	1	10	\N	DEVE_CODIR
362	314	1	10	\N	DEVE_CODIR
363	312	1	10	\N	DEVE_CODIR
364	297	1	10	\N	DEVE_CODIR
365	298	1	10	\N	DEVE_CODIR
366	299	1	10	\N	DEVE_CODIR
367	300	1	10	\N	DEVE_CODIR
368	301	1	10	\N	DEVE_CODIR
369	302	1	10	\N	DEVE_CODIR
370	304	1	10	\N	DEVE_CODIR
371	303	1	10	\N	DEVE_CODIR
372	306	1	10	\N	DEVE_CODIR
373	308	1	10	\N	DEVE_CODIR
374	305	1	10	\N	DEVE_CODIR
375	307	1	10	\N	DEVE_CODIR
407	401	1	5	\N	DPE_CELLULETECHNIQUE
408	402	1	5	\N	DPE_CELLULETECHNIQUE
412	406	1	5	\N	DPE_CELLULETECHNIQUE
142	135	1	5	\N	DPE_CELLULETECHNIQUE
143	137	1	5	\N	DPE_CELLULETECHNIQUE
144	139	1	5	\N	DPE_CELLULETECHNIQUE
146	145	1	5	\N	DPE_CELLULETECHNIQUE
154	192	1	5	\N	DPE_CELLULETECHNIQUE
156	194	1	5	\N	DPE_CELLULETECHNIQUE
648	196	1	5	\N	DPE_CELLULETECHNIQUE
160	198	1	5	\N	DPE_CELLULETECHNIQUE
161	199	1	5	\N	DPE_CELLULETECHNIQUE
164	204	1	5	\N	DPE_CELLULETECHNIQUE
3356	1470	1	3	\N	DPE_STANDARD
179	159	1	5	\N	DPE_CELLULETECHNIQUE
182	162	1	5	\N	DPE_CELLULETECHNIQUE
183	163	1	5	\N	DPE_CELLULETECHNIQUE
184	164	1	5	\N	DPE_CELLULETECHNIQUE
185	165	1	5	\N	DPE_CELLULETECHNIQUE
652	104	1	5	\N	DPE_CELLULETECHNIQUE
188	168	1	5	\N	DPE_CELLULETECHNIQUE
189	169	1	5	\N	DPE_CELLULETECHNIQUE
653	102	1	5	\N	DPE_CELLULETECHNIQUE
657	99	1	5	\N	DPE_CELLULETECHNIQUE
264	277	1	10	\N	DEVE_CODIR
265	276	1	10	\N	DEVE_CODIR
266	274	1	10	\N	DEVE_CODIR
346	389	1	10	\N	DEVE_CODIR
348	388	1	10	\N	DEVE_CODIR
349	390	1	10	\N	DEVE_CODIR
353	395	1	10	\N	DEVE_CODIR
415	409	1	5	\N	DPE_CELLULETECHNIQUE
418	412	1	5	\N	DPE_CELLULETECHNIQUE
437	243	1	5	\N	DPE_CELLULETECHNIQUE
438	244	1	5	\N	DPE_CELLULETECHNIQUE
440	246	1	5	\N	DPE_CELLULETECHNIQUE
443	249	1	5	\N	DPE_CELLULETECHNIQUE
446	252	1	5	\N	DPE_CELLULETECHNIQUE
448	254	1	5	\N	DPE_CELLULETECHNIQUE
457	263	1	3	\N	DPE_STANDARD
460	266	1	2	\N	DPE_CODIR
465	220	1	5	\N	DPE_CELLULETECHNIQUE
466	221	1	5	\N	DPE_CELLULETECHNIQUE
468	223	1	5	\N	DPE_CELLULETECHNIQUE
469	225	1	5	\N	DPE_CELLULETECHNIQUE
470	226	1	5	\N	DPE_CELLULETECHNIQUE
471	227	1	5	\N	DPE_CELLULETECHNIQUE
472	228	1	5	\N	DPE_CELLULETECHNIQUE
474	230	1	5	\N	DPE_CELLULETECHNIQUE
482	236	1	2	\N	DPE_CODIR
486	240	1	3	\N	DPE_STANDARD
490	219	1	5	\N	DPE_CELLULETECHNIQUE
501	279	1	10	\N	DEVE_CODIR
502	280	1	10	\N	DEVE_CODIR
512	521	1	5	\N	DPE_CELLULETECHNIQUE
513	519	1	5	\N	DPE_CELLULETECHNIQUE
516	523	1	5	\N	DPE_CELLULETECHNIQUE
517	518	1	5	\N	DPE_CELLULETECHNIQUE
521	512	1	5	\N	DPE_CELLULETECHNIQUE
524	524	1	5	\N	DPE_CELLULETECHNIQUE
525	525	1	5	\N	DPE_CELLULETECHNIQUE
527	520	1	5	\N	DPE_CELLULETECHNIQUE
528	511	1	5	\N	DPE_CELLULETECHNIQUE
540	491	1	5	\N	DPE_CELLULETECHNIQUE
543	490	1	5	\N	DPE_CELLULETECHNIQUE
659	313	1	10	\N	DEVE_CODIR
561	468	1	5	\N	DPE_CELLULETECHNIQUE
562	466	1	5	\N	DPE_CELLULETECHNIQUE
567	480	1	3	\N	DPE_STANDARD
568	483	1	2	\N	DPE_CODIR
570	482	1	2	\N	DPE_CODIR
572	486	1	3	\N	DPE_STANDARD
574	446	1	5	\N	DPE_CELLULETECHNIQUE
578	449	1	5	\N	DPE_CELLULETECHNIQUE
579	447	1	5	\N	DPE_CELLULETECHNIQUE
581	452	1	5	\N	DPE_CELLULETECHNIQUE
582	448	1	5	\N	DPE_CELLULETECHNIQUE
587	459	1	3	\N	DPE_STANDARD
590	462	1	3	\N	DPE_STANDARD
591	463	1	3	\N	DPE_STANDARD
593	444	1	3	\N	DPE_STANDARD
607	504	1	2	\N	DPE_CODIR
611	484	1	3	\N	DPE_STANDARD
614	467	1	2	\N	DPE_CODIR
620	536	1	10	\N	DEVE_CODIR
621	537	1	10	\N	DEVE_CODIR
624	540	1	3	\N	DPE_STANDARD
641	503	1	2	\N	DPE_CODIR
667	556	1	3	\N	DPE_STANDARD
896	241	1	3	\N	DPE_STANDARD
901	645	1	5	\N	DPE_CELLULETECHNIQUE
920	649	1	11	\N	ADMIN
983	695	1	3	\N	DPE_STANDARD
1014	426	1	3	\N	DPE_STANDARD
1055	766	1	5	\N	DPE_CELLULETECHNIQUE
1063	211	1	2	\N	DPE_CODIR
1087	549	1	3	\N	DPE_STANDARD
1089	550	1	3	\N	DPE_STANDARD
1106	551	1	3	\N	DPE_STANDARD
1124	151	1	3	\N	DPE_STANDARD
1134	201	1	5	\N	DPE_CELLULETECHNIQUE
1147	173	1	3	\N	DPE_STANDARD
1148	175	1	3	\N	DPE_STANDARD
1149	826	1	10	\N	DEVE_CODIR
1153	83	1	2	\N	DPE_CODIR
1161	86	1	3	\N	DPE_STANDARD
1162	669	1	3	\N	DPE_STANDARD
1169	103	1	5	\N	DPE_CELLULETECHNIQUE
1171	92	1	5	\N	DPE_CELLULETECHNIQUE
1173	82	1	2	\N	DPE_CODIR
1181	97	1	3	\N	DPE_STANDARD
1182	95	1	3	\N	DPE_STANDARD
1185	831	1	3	\N	DPE_STANDARD
1211	108	1	2	\N	DPE_CODIR
1212	183	1	2	\N	DPE_CODIR
1216	116	1	5	\N	DPE_CELLULETECHNIQUE
1221	124	1	5	\N	DPE_CELLULETECHNIQUE
1223	125	1	5	\N	DPE_CELLULETECHNIQUE
1228	115	1	3	\N	DPE_STANDARD
1234	106	1	2	\N	DPE_CODIR
1235	127	1	5	\N	DPE_CELLULETECHNIQUE
1236	120	1	5	\N	DPE_CELLULETECHNIQUE
1256	37	1	5	\N	DPE_CELLULETECHNIQUE
1263	24	1	2	\N	DPE_CODIR
1265	28	1	3	\N	DPE_STANDARD
1300	126	1	5	\N	DPE_CELLULETECHNIQUE
1314	413	1	3	\N	DPE_STANDARD
1316	416	1	3	\N	DPE_STANDARD
1321	849	1	10	\N	DEVE_CODIR
1322	851	1	5	\N	DPE_CELLULETECHNIQUE
1325	853	1	13	\N	DPE_FONCTIONNELLE
1326	854	1	13	\N	DPE_FONCTIONNELLE
1328	855	1	13	\N	DPE_FONCTIONNELLE
1331	856	1	5	\N	DPE_CELLULETECHNIQUE
1351	445	1	3	\N	DPE_STANDARD
1369	253	1	3	\N	DPE_STANDARD
1379	506	1	2	\N	DPE_CODIR
1382	877	1	7	\N	DPE_OBSERVATEUR
1384	686	1	3	\N	DPE_STANDARD
1385	508	1	3	\N	DPE_STANDARD
1386	31	1	3	\N	DPE_STANDARD
1387	30	1	3	\N	DPE_STANDARD
1396	850	1	10	\N	DEVE_CODIR
3128	1039	1	22	\N	DVD_Consultation_Agent
1403	824	1	7	\N	DPE_OBSERVATEUR
1407	852	1	13	\N	DPE_FONCTIONNELLE
1408	871	1	3	\N	DPE_STANDARD
1411	889	1	5	\N	DPE_CELLULETECHNIQUE
1465	932	1	7	\N	DPE_OBSERVATEUR
1471	934	1	10	\N	DEVE_CODIR
1474	415	1	5	\N	DPE_CELLULETECHNIQUE
1483	10	1	2	\N	DPE_CODIR
1514	879	1	5	\N	DPE_CELLULETECHNIQUE
1515	432	1	3	\N	DPE_STANDARD
1517	949	1	3	\N	DPE_STANDARD
1539	953	1	5	\N	DPE_CELLULETECHNIQUE
1540	160	1	5	\N	DPE_CELLULETECHNIQUE
1542	510	1	5	\N	DPE_CELLULETECHNIQUE
1544	907	1	5	\N	DPE_CELLULETECHNIQUE
1548	956	1	3	\N	DPE_STANDARD
1553	676	1	5	\N	DPE_CELLULETECHNIQUE
1560	229	1	5	\N	DPE_CELLULETECHNIQUE
1564	958	1	5	\N	DPE_CELLULETECHNIQUE
1591	964	1	12	\N	OBSERVATEUR_MAIRIES
1580	960	1	12	\N	OBSERVATEUR_MAIRIES
1581	959	1	12	\N	OBSERVATEUR_MAIRIES
1583	963	1	12	\N	OBSERVATEUR_MAIRIES
1578	976	1	12	\N	OBSERVATEUR_MAIRIES
1574	977	1	12	\N	OBSERVATEUR_MAIRIES
1582	971	1	12	\N	OBSERVATEUR_MAIRIES
1588	967	1	12	\N	OBSERVATEUR_MAIRIES
1589	966	1	12	\N	OBSERVATEUR_MAIRIES
1590	978	1	12	\N	OBSERVATEUR_MAIRIES
1592	965	1	12	\N	OBSERVATEUR_MAIRIES
1593	968	1	12	\N	OBSERVATEUR_MAIRIES
1573	961	1	12	\N	OBSERVATEUR_MAIRIES
1579	974	1	12	\N	OBSERVATEUR_MAIRIES
1584	973	1	12	\N	OBSERVATEUR_MAIRIES
1594	979	1	12	\N	OBSERVATEUR_MAIRIES
1597	535	1	5	\N	DPE_CELLULETECHNIQUE
1598	980	1	12	\N	OBSERVATEUR_MAIRIES
1599	962	1	12	\N	OBSERVATEUR_MAIRIES
1600	981	1	12	\N	OBSERVATEUR_MAIRIES
1610	985	1	10	\N	DEVE_CODIR
1611	986	1	10	\N	DEVE_CODIR
1612	987	1	10	\N	DEVE_CODIR
1614	990	1	10	\N	DEVE_CODIR
1615	989	1	10	\N	DEVE_CODIR
1617	992	1	10	\N	DEVE_CODIR
1618	991	1	10	\N	DEVE_CODIR
1619	993	1	10	\N	DEVE_CODIR
1620	995	1	10	\N	DEVE_CODIR
1621	994	1	10	\N	DEVE_CODIR
1623	997	1	10	\N	DEVE_CODIR
1624	998	1	10	\N	DEVE_CODIR
1625	999	1	10	\N	DEVE_CODIR
1626	25	1	2	\N	DPE_CODIR
1627	1000	1	12	\N	OBSERVATEUR_MAIRIES
1628	267	1	3	\N	DPE_STANDARD
1631	327	1	10	\N	DEVE_CODIR
1633	393	1	10	\N	DEVE_CODIR
1635	156	1	2	\N	DPE_CODIR
1636	461	1	2	\N	DPE_CODIR
1644	1003	1	12	\N	OBSERVATEUR_MAIRIES
1648	970	1	12	\N	OBSERVATEUR_MAIRIES
1649	969	1	12	\N	OBSERVATEUR_MAIRIES
1653	1010	1	10	\N	DEVE_CODIR
1712	430	1	3	\N	DPE_STANDARD
1732	1041	1	3	\N	DPE_STANDARD
1734	1043	1	3	\N	DPE_STANDARD
1736	27	1	3	\N	DPE_STANDARD
1746	834	1	11	\N	ADMIN
1749	1051	1	7	\N	DPE_OBSERVATEUR
1758	411	1	3	\N	DPE_STANDARD
1759	1055	1	2	\N	DPE_CODIR
1760	407	1	5	\N	DPE_CELLULETECHNIQUE
1762	876	1	7	\N	DPE_OBSERVATEUR
1769	1057	1	8	\N	DVD_CODIR
1777	1058	1	8	\N	DVD_CODIR
1780	1036	1	10	\N	DEVE_CODIR
1813	1061	1	8	\N	DVD_CODIR
1816	1063	1	8	\N	DVD_CODIR
1862	1069	1	8	\N	DVD_CODIR
1863	1070	1	8	\N	DVD_CODIR
1926	1082	1	7	\N	DPE_OBSERVATEUR
1929	429	1	3	\N	DPE_STANDARD
1961	176	1	5	\N	DPE_CELLULETECHNIQUE
1969	1089	1	7	\N	DPE_OBSERVATEUR
1970	1086	1	7	\N	DPE_OBSERVATEUR
1973	1087	1	7	\N	DPE_OBSERVATEUR
1975	1090	1	7	\N	DPE_OBSERVATEUR
1976	1091	1	14	\N	DEVE_VEGETALISATION
1979	1094	1	15	\N	Admin_users_metiers
1980	1095	1	15	\N	Admin_users_metiers
1981	1092	1	15	\N	Admin_users_metiers
1982	1096	1	10	\N	DEVE_CODIR
1984	494	1	5	\N	DPE_CELLULETECHNIQUE
1985	488	1	5	\N	DPE_CELLULETECHNIQUE
1986	507	1	3	\N	DPE_STANDARD
1988	548	1	3	\N	DPE_STANDARD
3129	1063	1	22	\N	DVD_Consultation_Agent
1996	328	1	10	\N	DEVE_CODIR
1999	1105	1	3	\N	DPE_STANDARD
2001	1107	1	5	\N	DPE_CELLULETECHNIQUE
2005	1004	1	11	\N	ADMIN
2006	1049	1	11	\N	ADMIN
2016	408	1	3	\N	DPE_STANDARD
2017	400	1	3	\N	DPE_STANDARD
2023	325	1	10	\N	DEVE_CODIR
2024	996	1	10	\N	DEVE_CODIR
2031	988	1	10	\N	DEVE_CODIR
2042	1115	1	10	\N	DEVE_CODIR
2043	278	1	10	\N	DEVE_CODIR
2044	237	1	10	\N	DEVE_CODIR
2047	1103	1	10	\N	DEVE_CODIR
2048	1117	1	10	\N	DEVE_CODIR
2049	1118	1	14	\N	DEVE_VEGETALISATION
2050	391	1	10	\N	DEVE_CODIR
2051	1119	1	10	\N	DEVE_CODIR
2052	1120	1	8	\N	DVD_CODIR
2126	1128	1	10	\N	DEVE_CODIR
2127	1129	1	10	\N	DEVE_CODIR
2128	1130	1	3	\N	DPE_STANDARD
2134	1131	1	3	\N	DPE_STANDARD
2145	1141	1	7	\N	DPE_OBSERVATEUR
2158	1151	1	2	\N	DPE_CODIR
2189	1169	1	2	\N	DPE_CODIR
2200	1176	1	10	\N	DEVE_CODIR
2204	235	1	3	\N	DPE_STANDARD
2208	1093	1	15	\N	Admin_users_metiers
2209	1179	1	10	\N	DEVE_CODIR
2232	1193	1	3	\N	DPE_STANDARD
2234	91	1	5	\N	DPE_CELLULETECHNIQUE
2275	1156	1	3	\N	DPE_STANDARD
2276	268	1	3	\N	DPE_STANDARD
2280	1202	1	3	\N	DPE_STANDARD
2281	1215	1	7	\N	DPE_OBSERVATEUR
2295	1219	1	7	\N	DPE_OBSERVATEUR
2296	1085	1	7	\N	DPE_OBSERVATEUR
2299	1005	1	2	\N	DPE_CODIR
2305	155	1	2	\N	DPE_CODIR
2309	1143	1	12	\N	OBSERVATEUR_MAIRIES
2317	955	1	3	\N	DPE_STANDARD
2318	1084	1	3	\N	DPE_STANDARD
2319	522	1	3	\N	DPE_STANDARD
2320	1139	1	7	\N	DPE_OBSERVATEUR
2326	984	1	2	\N	DPE_CODIR
2346	1232	1	11	\N	ADMIN
2347	423	1	8	\N	DVD_CODIR
2348	1233	1	8	\N	DVD_CODIR
2355	532	1	3	\N	DPE_STANDARD
2356	680	1	5	\N	DPE_CELLULETECHNIQUE
2357	683	1	5	\N	DPE_CELLULETECHNIQUE
2367	239	1	3	\N	DPE_STANDARD
2369	425	1	2	\N	DPE_CODIR
2370	1240	1	8	\N	DVD_CODIR
2371	1241	1	8	\N	DVD_CODIR
2372	514	1	5	\N	DPE_CELLULETECHNIQUE
3131	1385	1	24	\N	DVD_NORD_EST_Consultation_Agent
2376	1243	1	8	\N	DVD_CODIR
2387	860	1	11	\N	ADMIN
2395	1253	1	5	\N	DPE_CELLULETECHNIQUE
2398	975	1	12	\N	OBSERVATEUR_MAIRIES
2412	1261	1	10	\N	DEVE_CODIR
2413	1262	1	3	\N	DPE_STANDARD
2414	1252	1	3	\N	DPE_STANDARD
2416	1263	1	5	\N	DPE_CELLULETECHNIQUE
2417	915	1	5	\N	DPE_CELLULETECHNIQUE
2428	862	1	11	\N	ADMIN
2429	1270	1	11	\N	ADMIN
2434	1271	1	3	\N	DPE_STANDARD
2435	1218	1	2	\N	DPE_CODIR
2448	1172	1	16	\N	DPE_Graf_all
2460	1148	1	3	\N	DPE_STANDARD
2462	1282	1	3	\N	DPE_STANDARD
2468	417	1	3	\N	DPE_STANDARD
3132	282	1	24	\N	DVD_NORD_EST_Consultation_Agent
2486	607	1	8	\N	DVD_CODIR
3133	621	1	24	\N	DVD_NORD_EST_Consultation_Agent
3134	612	1	24	\N	DVD_NORD_EST_Consultation_Agent
3136	1421	1	24	\N	DVD_NORD_EST_Consultation_Agent
3137	269	1	24	\N	DVD_NORD_EST_Consultation_Agent
3139	1217	1	24	\N	DVD_NORD_EST_Consultation_Agent
3140	617	1	24	\N	DVD_NORD_EST_Consultation_Agent
3141	1123	1	24	\N	DVD_NORD_EST_Consultation_Agent
3142	281	1	24	\N	DVD_NORD_EST_Consultation_Agent
3143	1283	1	24	\N	DVD_NORD_EST_Consultation_Agent
3144	1420	1	24	\N	DVD_NORD_EST_Consultation_Agent
3145	1378	1	24	\N	DVD_NORD_EST_Consultation_Agent
3146	332	1	24	\N	DVD_NORD_EST_Consultation_Agent
3147	618	1	24	\N	DVD_NORD_EST_Consultation_Agent
3148	1301	1	24	\N	DVD_NORD_EST_Consultation_Agent
3149	270	1	24	\N	DVD_NORD_EST_Consultation_Agent
3150	1222	1	24	\N	DVD_NORD_EST_Consultation_Agent
3152	1008	1	24	\N	DVD_NORD_EST_Consultation_Agent
3153	609	1	24	\N	DVD_NORD_EST_Consultation_Agent
3154	286	1	24	\N	DVD_NORD_EST_Consultation_Agent
3155	287	1	24	\N	DVD_NORD_EST_Consultation_Agent
3156	1302	1	24	\N	DVD_NORD_EST_Consultation_Agent
3157	619	1	24	\N	DVD_NORD_EST_Consultation_Agent
3158	611	1	24	\N	DVD_NORD_EST_Consultation_Agent
3159	1395	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
2541	1060	1	8	\N	DVD_CODIR
3160	76	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3161	77	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3162	600	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3163	334	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3164	1011	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3165	73	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
2552	291	1	8	\N	DVD_CODIR
3166	74	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3167	1236	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3168	335	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3169	1278	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3170	336	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3171	1224	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3172	1394	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3173	383	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3174	597	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3176	1080	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3177	384	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3178	1259	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3179	1198	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3180	1275	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3181	385	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3182	640	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
2582	1024	1	8	\N	DVD_CODIR
3256	1408	1	19	\N	PRESTATAIRE
2621	71	1	8	\N	DVD_CODIR
2576	1018	1	8	\N	DVD_CODIR
2590	1127	1	8	\N	DVD_CODIR
2602	331	1	8	\N	DVD_CODIR
2632	599	1	8	\N	DVD_CODIR
2648	1053	1	8	\N	DVD_CODIR
2650	1075	1	8	\N	DVD_CODIR
2653	1122	1	8	\N	DVD_CODIR
2661	1029	1	8	\N	DVD_CODIR
2672	1267	1	11	\N	ADMIN
2688	1304	1	3	\N	DPE_STANDARD
2689	414	1	3	\N	DPE_STANDARD
2690	410	1	3	\N	DPE_STANDARD
2691	1256	1	3	\N	DPE_STANDARD
2693	1113	1	5	\N	DPE_CELLULETECHNIQUE
2696	152	1	5	\N	DPE_CELLULETECHNIQUE
2698	259	1	2	\N	DPE_CODIR
2701	213	1	7	\N	DPE_OBSERVATEUR
2703	1186	1	2	\N	DPE_CODIR
2707	1308	1	5	\N	DPE_CELLULETECHNIQUE
2708	1309	1	5	\N	DPE_CELLULETECHNIQUE
2709	1310	1	5	\N	DPE_CELLULETECHNIQUE
2710	130	1	7	\N	DPE_OBSERVATEUR
2712	180	1	2	\N	DPE_CODIR
2713	1311	1	5	\N	DPE_CELLULETECHNIQUE
2715	1239	1	2	\N	DPE_CODIR
2724	1320	1	5	\N	DPE_CELLULETECHNIQUE
2725	1321	1	5	\N	DPE_CELLULETECHNIQUE
2727	1323	1	2	\N	DPE_CODIR
2728	1324	1	5	\N	DPE_CELLULETECHNIQUE
2730	1325	1	5	\N	DPE_CELLULETECHNIQUE
2731	1326	1	5	\N	DPE_CELLULETECHNIQUE
2732	1327	1	5	\N	DPE_CELLULETECHNIQUE
2733	1328	1	5	\N	DPE_CELLULETECHNIQUE
2735	1330	1	5	\N	DPE_CELLULETECHNIQUE
2736	1088	1	5	\N	DPE_CELLULETECHNIQUE
2737	1334	1	5	\N	DPE_CELLULETECHNIQUE
2739	1332	1	5	\N	DPE_CELLULETECHNIQUE
2740	1333	1	5	\N	DPE_CELLULETECHNIQUE
2741	1335	1	5	\N	DPE_CELLULETECHNIQUE
2742	1336	1	2	\N	DPE_CODIR
2769	1357	1	5	\N	DPE_CELLULETECHNIQUE
2768	1355	1	5	\N	DPE_CELLULETECHNIQUE
2764	1353	1	5	\N	DPE_CELLULETECHNIQUE
2766	1221	1	2	\N	DPE_CODIR
2775	1361	1	2	\N	DPE_CODIR
2776	1362	1	2	\N	DPE_CODIR
2779	1364	1	5	\N	DPE_CELLULETECHNIQUE
2780	1365	1	5	\N	DPE_CELLULETECHNIQUE
2781	250	1	5	\N	DPE_CELLULETECHNIQUE
2790	1366	1	7	\N	DPE_OBSERVATEUR
2791	205	1	7	\N	DPE_OBSERVATEUR
2799	1372	1	5	\N	DPE_CELLULETECHNIQUE
2800	1312	1	5	\N	DPE_CELLULETECHNIQUE
2802	1374	1	5	\N	DPE_CELLULETECHNIQUE
2803	1375	1	5	\N	DPE_CELLULETECHNIQUE
3183	595	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3184	1195	1	26	\N	DVD_SUD_Consultation_Agent
2823	1048	1	8	\N	DVD_CODIR
3185	579	1	26	\N	DVD_SUD_Consultation_Agent
2832	13	1	3	\N	DPE_STANDARD
2834	1382	1	8	\N	DVD_CODIR
2835	1384	1	8	\N	DVD_CODIR
3186	568	1	26	\N	DVD_SUD_Consultation_Agent
3187	353	1	26	\N	DVD_SUD_Consultation_Agent
2839	65	1	5	\N	DPE_CELLULETECHNIQUE
2840	1386	1	5	\N	DPE_CELLULETECHNIQUE
2841	38	1	5	\N	DPE_CELLULETECHNIQUE
2843	29	1	5	\N	DPE_CELLULETECHNIQUE
2850	1387	1	5	\N	DPE_CELLULETECHNIQUE
2851	1388	1	5	\N	DPE_CELLULETECHNIQUE
2852	1389	1	5	\N	DPE_CELLULETECHNIQUE
2854	1284	1	2	\N	DPE_CODIR
3188	1269	1	26	\N	DVD_SUD_Consultation_Agent
2858	873	1	7	\N	DPE_OBSERVATEUR
3190	1104	1	26	\N	DVD_SUD_Consultation_Agent
3191	330	1	26	\N	DVD_SUD_Consultation_Agent
3192	354	1	26	\N	DVD_SUD_Consultation_Agent
3193	381	1	26	\N	DVD_SUD_Consultation_Agent
2877	1400	1	3	\N	DPE_STANDARD
2878	1401	1	5	\N	DPE_CELLULETECHNIQUE
2880	516	1	5	\N	DPE_CELLULETECHNIQUE
3194	1279	1	26	\N	DVD_SUD_Consultation_Agent
3195	1403	1	26	\N	DVD_SUD_Consultation_Agent
3196	1078	1	26	\N	DVD_SUD_Consultation_Agent
3257	1411	1	19	\N	PRESTATAIRE
2890	1181	1	3	\N	DPE_STANDARD
2893	1410	1	19	\N	PRESTATAIRE
2895	1412	1	19	\N	PRESTATAIRE
2897	1414	1	19	\N	PRESTATAIRE
2898	1415	1	19	\N	PRESTATAIRE
3260	1432	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3261	1422	1	24	\N	DVD_NORD_EST_Consultation_Agent
3262	1433	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3263	1434	1	8	\N	DVD_CODIR
3264	1434	1	27	\N	DVD_SUD_EST_Consultation_Agent
3266	1203	1	10	\N	DEVE_CODIR
3270	1137	1	10	\N	DEVE_CODIR
3271	1359	1	2	\N	DPE_CODIR
3272	1416	1	19	\N	PRESTATAIRE
3273	1417	1	19	\N	PRESTATAIRE
3276	1418	1	19	\N	PRESTATAIRE
3277	1223	1	2	\N	DPE_CODIR
3283	427	1	3	\N	DPE_STANDARD
3284	1443	1	3	\N	DPE_STANDARD
3286	284	1	24	\N	DVD_NORD_EST_Consultation_Agent
3287	1439	1	24	\N	DVD_NORD_EST_Consultation_Agent
3288	1444	1	8	\N	DVD_CODIR
3291	1446	1	5	\N	DPE_CELLULETECHNIQUE
3293	1447	1	5	\N	DPE_CELLULETECHNIQUE
3294	563	1	9	\N	DVD_CHEFDESECTEUR
3295	1413	1	19	\N	PRESTATAIRE
3298	1449	1	11	\N	ADMIN
3302	1053	1	22	\N	DVD_Consultation_Agent
3303	1029	1	22	\N	DVD_Consultation_Agent
3304	563	1	23	\N	DVD_CENTRE_Consultation_Agent
3305	284	1	8	\N	DVD_CODIR
3306	1422	1	8	\N	DVD_CODIR
3308	1392	1	8	\N	DVD_CODIR
3309	1392	1	8	\N	DVD_CODIR
3310	1452	1	8	\N	DVD_CODIR
3311	583	1	26	\N	DVD_SUD_Consultation_Agent
3197	1425	1	26	\N	DVD_SUD_Consultation_Agent
3198	379	1	26	\N	DVD_SUD_Consultation_Agent
3199	1019	1	26	\N	DVD_SUD_Consultation_Agent
3200	1211	1	26	\N	DVD_SUD_Consultation_Agent
3201	1212	1	26	\N	DVD_SUD_Consultation_Agent
3202	1196	1	26	\N	DVD_SUD_Consultation_Agent
3203	358	1	26	\N	DVD_SUD_Consultation_Agent
3204	1035	1	26	\N	DVD_SUD_Consultation_Agent
3205	1023	1	26	\N	DVD_SUD_Consultation_Agent
3206	1214	1	26	\N	DVD_SUD_Consultation_Agent
3207	359	1	26	\N	DVD_SUD_Consultation_Agent
3208	333	1	26	\N	DVD_SUD_Consultation_Agent
3209	380	1	26	\N	DVD_SUD_Consultation_Agent
3210	578	1	26	\N	DVD_SUD_Consultation_Agent
3289	1379	1	3	\N	DPE_STANDARD
3075	1120	1	22	\N	DVD_Consultation_Agent
3076	1057	1	22	\N	DVD_Consultation_Agent
3078	1240	1	22	\N	DVD_Consultation_Agent
3080	423	1	22	\N	DVD_Consultation_Agent
3081	1241	1	22	\N	DVD_Consultation_Agent
3082	834	1	22	\N	DVD_Consultation_Agent
3084	1069	1	22	\N	DVD_Consultation_Agent
3085	1070	1	22	\N	DVD_Consultation_Agent
3086	1243	1	22	\N	DVD_Consultation_Agent
3087	1058	1	22	\N	DVD_Consultation_Agent
3088	1061	1	22	\N	DVD_Consultation_Agent
3089	1048	1	22	\N	DVD_Consultation_Agent
3212	289	1	27	\N	DVD_SUD_EST_Consultation_Agent
3110	607	1	23	\N	DVD_CENTRE_Consultation_Agent
3213	1424	1	27	\N	DVD_SUD_EST_Consultation_Agent
3214	631	1	27	\N	DVD_SUD_EST_Consultation_Agent
3215	633	1	27	\N	DVD_SUD_EST_Consultation_Agent
3216	346	1	27	\N	DVD_SUD_EST_Consultation_Agent
3217	1185	1	27	\N	DVD_SUD_EST_Consultation_Agent
3218	1030	1	27	\N	DVD_SUD_EST_Consultation_Agent
3219	1066	1	27	\N	DVD_SUD_EST_Consultation_Agent
3220	68	1	27	\N	DVD_SUD_EST_Consultation_Agent
3221	635	1	27	\N	DVD_SUD_EST_Consultation_Agent
3222	1190	1	27	\N	DVD_SUD_EST_Consultation_Agent
3125	1384	1	22	\N	DVD_Consultation_Agent
3127	1242	1	22	\N	DVD_Consultation_Agent
3224	1201	1	27	\N	DVD_SUD_EST_Consultation_Agent
3225	1268	1	27	\N	DVD_SUD_EST_Consultation_Agent
3226	1138	1	27	\N	DVD_SUD_EST_Consultation_Agent
3227	351	1	27	\N	DVD_SUD_EST_Consultation_Agent
3228	1272	1	27	\N	DVD_SUD_EST_Consultation_Agent
3229	1292	1	27	\N	DVD_SUD_EST_Consultation_Agent
3230	639	1	27	\N	DVD_SUD_EST_Consultation_Agent
3231	626	1	27	\N	DVD_SUD_EST_Consultation_Agent
3232	352	1	27	\N	DVD_SUD_EST_Consultation_Agent
3233	1407	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3234	586	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3235	361	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3236	587	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3237	370	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3238	591	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3239	399	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3240	331	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3241	1127	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3242	582	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3243	1274	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3244	1427	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3245	364	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3246	365	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3247	375	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3248	372	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3249	366	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3250	943	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3251	376	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3252	367	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3253	368	1	28	\N	DVD_SUD_OUEST_Consultation_Agent
3259	1428	1	3	\N	DPE_STANDARD
3313	1453	1	8	\N	DVD_CODIR
3314	1454	1	5	\N	DPE_CELLULETECHNIQUE
3315	1455	1	29	\N	DEVE_Admin_User
3320	1458	1	29	\N	DEVE_Admin_User
3321	1459	1	17	\N	DPE_Admin_User
3322	1460	1	8	\N	DVD_CODIR
3325	972	1	11	\N	ADMIN
3326	1462	1	11	\N	ADMIN
3331	1463	1	5	\N	DPE_CELLULETECHNIQUE
3332	1464	1	5	\N	DPE_CELLULETECHNIQUE
3333	1465	1	5	\N	DPE_CELLULETECHNIQUE
3334	1466	1	7	\N	DPE_OBSERVATEUR
3335	1409	1	19	\N	PRESTATAIRE
3336	552	1	11	\N	ADMIN
3337	566	1	2	\N	DPE_CODIR
3338	861	1	11	\N	ADMIN
3339	1399	1	7	\N	DPE_OBSERVATEUR
3340	1406	1	3	\N	DPE_STANDARD
3341	642	1	3	\N	DPE_STANDARD
3344	326	1	10	\N	DEVE_CODIR
3345	42	1	25	\N	DVD_NORD_OUEST_Consultation_Agent
3346	394	1	10	\N	DEVE_CODIR
3348	1180	1	3	\N	DPE_STANDARD
3349	1423	1	11	\N	ADMIN
3350	1468	1	11	\N	ADMIN
3351	1469	1	11	\N	ADMIN
3357	1	1	11	\N	ADMIN
\.


--
-- Data for Name: core_admin_user_preferences; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_user_preferences (id_user, pref_key, pref_value) FROM stdin;
\.


--
-- Data for Name: core_admin_workgroup; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_workgroup (workgroup_key, workgroup_description) FROM stdin;
\.


--
-- Data for Name: core_admin_workgroup_user; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_admin_workgroup_user (workgroup_key, id_user) FROM stdin;
\.


--
-- Data for Name: core_attribute; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_attribute (id_attribute, type_class_name, title, help_message, is_mandatory, is_shown_in_search, is_shown_in_result_list, is_field_in_line, attribute_position, plugin_name, anonymize) FROM stdin;
1	fr.paris.lutece.portal.business.user.attribute.AttributeComboBox	Profil		0	0	0	0	0	profiles	\N
\.


--
-- Data for Name: core_attribute_field; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_attribute_field (id_field, id_attribute, title, default_value, is_default_value, height, width, max_size_enter, is_multiple, field_position) FROM stdin;
1	1	\N	\N	0	0	0	0	0	1
2	1	DPE_CODIR	Chef de division, son adjoint ou représentant	0	0	0	0	0	2
3	1	DPE_STANDARD	Standardiste d'une division de la DPE	0	0	0	0	0	3
5	1	DPE_CELLULETECHNIQUE	Cellule technique de la DPE	0	0	0	0	0	5
6	1	DPE_FEUILLEDEROUTE	Chef d'équipe responsable des encombrants	0	0	0	0	0	6
7	1	DPE_OBSERVATEUR	Observateur DPE (ne peut rien faire mais voit tout)	0	0	0	0	0	7
8	1	DVD_CODIR	Chef de division, son adjoint ou représentant	0	0	0	0	0	8
9	1	DVD_CHEFDESECTEUR	Chef de secteur de la DVD	0	0	0	0	0	9
10	1	DEVE_CODIR	Chef de division, son adjoint ou représentant	0	0	0	0	0	10
13	1	DPE_FONCTIONNELLE	Graffitis, Affichages	0	0	0	0	0	13
11	1	ADMIN	Administrateur	0	0	0	0	0	11
12	1	OBSERVATEUR_MAIRIES	observateur mairie d'arrondissement	0	0	0	0	0	12
14	1	DEVE_VEGETALISATION	DEVE_VEGETALISATION	0	0	0	0	0	14
16	1	DPE_Graf_all	DPE_Graf_all	0	0	0	0	0	16
17	1	DPE_Admin_User	Administration des utilisateurs de la DPE	0	0	0	0	0	17
18	1	DVD_Presta	DVD_Presta	0	0	0	0	0	18
15	1	Admin_users_metiers	Admin_users_metiers	0	0	0	0	0	15
20	1	Consultation_anomalies_DVD	Consultation des anomalies selon domaines fonctionnels DVD	0	0	0	0	0	20
21	1	Consultation_anomalies_DPE	Consultation des anomalies selon domaines fonctionnels DPE	0	0	0	0	0	21
22	1	DVD_Consultation_Agent	Profil Consutation pour agents de la DVD	0	0	0	0	0	22
23	1	DVD_CENTRE_Consultation_Agent	Profil ConsutaLtion pour agents de la DVD_CENTRE	0	0	0	0	0	23
24	1	DVD_NORD_EST_Consultation_Agent	Profil Consultation pour agents de la DVD_NORD_EST	0	0	0	0	0	24
25	1	DVD_NORD_OUEST_Consultation_Agent	Profil Consultation pour agents de la DVD_NORD_OUEST	0	0	0	0	0	25
27	1	DVD_SUD_EST_Consultation_Agent	Profil Consultation pour agents de la DVD_SUD_EST	0	0	0	0	0	27
26	1	DVD_SUD_Consultation_Agent	Profil Consultation pour agents de la DVD_SUD	0	0	0	0	0	26
28	1	DVD_SUD_OUEST_Consultation_Agent	Profil Consultation pour agents de la DVD_SUD_OUEST	0	0	0	0	0	28
19	1	PRESTATAIRE	Prestataire	0	0	0	0	0	19
29	1	DEVE_Admin_User	Administration des utilisateurs de la DEVE	0	0	0	0	0	29
30	1	DAJ_Gestionnaire	Gestion des anomalies au niveau de la DAJ	0	0	0	0	0	30
\.


--
-- Data for Name: core_connections_log; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_connections_log (access_code, ip_address, date_login, login_status) FROM stdin;
\.


--
-- Data for Name: core_dashboard; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_dashboard (dashboard_name, dashboard_column, dashboard_order) FROM stdin;
CORE_USER	4	1
SIGNALEMENT	2	1
WORKFLOW	-1	1
CORE_USERS	-1	2
CORE_PAGES	-1	3
CORE_SYSTEM	-1	4
\.


--
-- Data for Name: core_datastore; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_datastore (entity_key, entity_value) FROM stdin;
core_banned_domain_names	yopmail.com
core.backOffice.defaultEditor	tinymce
core.frontOffice.defaultEditor	markitupbbcode
portal.site.site_property.noreply_email	no-reply@mydomain.com
portal.site.site_property.admin_home_url	jsp/admin/AdminMenu.jsp
core.advanced_parameters.password_duration	120
core.advanced_parameters.default_user_level	2
core.advanced_parameters.default_user_notification	1
core.advanced_parameters.default_user_language	fr
core.advanced_parameters.default_user_status	0
core.advanced_parameters.force_change_password_reinit	false
core.advanced_parameters.password_minimum_length	8
core.advanced_parameters.password_format_upper_lower_case	false
core.advanced_parameters.password_format_numero	false
core.advanced_parameters.password_format_special_characters	false
core.advanced_parameters.password_history_size	
core.advanced_parameters.maximum_number_password_change	
core.advanced_parameters.tsw_size_password_change	
core.advanced_parameters.use_advanced_security_parameters	
core.advanced_parameters.account_life_time	12
core.advanced_parameters.time_before_alert_account	30
core.advanced_parameters.nb_alert_account	2
core.advanced_parameters.time_between_alerts_account	10
core.advanced_parameters.access_failures_max	3
core.advanced_parameters.access_failures_interval	10
core.advanced_parameters.expired_alert_mail_sender	lutece@nowhere.com
core.advanced_parameters.expired_alert_mail_subject	Votre compte a expiré
core.advanced_parameters.first_alert_mail_sender	lutece@nowhere.com
core.advanced_parameters.first_alert_mail_subject	Votre compte va bientot expirer
core.advanced_parameters.other_alert_mail_sender	lutece@nowhere.com
core.advanced_parameters.other_alert_mail_subject	Votre compte va bientot expirer
core.advanced_parameters.account_reactivated_mail_sender	lutece@nowhere.com
core.advanced_parameters.account_reactivated_mail_subject	Votre compte a bien été réactivé
core.advanced_parameters.access_failures_captcha	1
core.advanced_parameters.notify_user_password_expired	
core.advanced_parameters.password_expired_mail_sender	lutece@nowhere.com
core.advanced_parameters.password_expired_mail_subject	Votre mot de passe a expiré
portal.site.site_property.avatar_default	images/admin/skin/unknown.png
portal.site.site_property.back_images	'images/admin/skin/bg_login1.jpg' , 'images/admin/skin/bg_login2.jpg' , 'images/admin/skin/bg_login3.jpg' , 'images/admin/skin/bg_login4.jpg'
mylutece.security.public_url.mylutece.url.login.page	jsp/site/Portal.jsp?page=mylutece&action=login
mylutece.security.public_url.mylutece.url.doLogin	jsp/site/plugins/mylutece/DoMyLuteceLogin.jsp
mylutece.security.public_url.mylutece.url.doLogout	jsp/site/plugins/mylutece/DoMyLuteceLogout.jsp
mylutece.security.public_url.mylutece.url.createAccount.page	jsp/site/Portal.jsp?page=mylutece&action=createAccount
mylutece.security.public_url.mylutece.url.modifyAccount.page	jsp/site/Portal.jsp?page=mylutece&action=modifyAccount
mylutece.security.public_url.mylutece.url.lostPassword.page	jsp/site/Portal.jsp?page=mylutece&action=lostPassword
mylutece.security.public_url.mylutece.url.lostLogin.page	jsp/site/Portal.jsp?page=mylutecedatabase&action=lostLogin
mylutece.security.public_url.mylutece.url.doActionsAll	jsp/site/plugins/mylutece/Do*
mylutece.security.public_url.mylutece.url.js	js/*
mylutece.security.public_url.mylutece.url.gis	jsp/site/plugins/gis*
mylutece.security.public_url.mylutece.url.plugin.adresse	jsp/site/plugins/address/*
mylutece.security.public_url.mylutece.url.formengine.doAction	jsp/site/plugins/formengine/DoAction.jsp
mylutece.security.public_url.mylutece.formengine.signalement.forms	jsp/site/plugins/*?form=signalement*
mylutece.security.public_url.mylutece.url.upload	jsp/site/upload
mylutece.security.public_url.mylutece.url.annulation	<base_URL_BO>/*
core.cache.status.DocumentResourceServletCache.enabled	1
core.cache.status.LuteceUserCacheService.enabled	1
core.cache.status.MailAttachmentCacheService.overflowToDisk	true
core.cache.status.LuteceUserCacheService.maxElementsInMemory	1000
core.cache.status.StaticFilesCachingFilter.timeToLiveSeconds	604800
core.cache.status.MailAttachmentCacheService.diskPersistent	true
core.cache.status.BaseUserPreferencesCacheService.maxElementsInMemory	1000
core.cache.status.MyPortalWidgetContentService.enabled	1
core.cache.status.MailAttachmentCacheService.timeToLiveSeconds	7200
core.cache.status.MailAttachmentCacheService.maxElementsInMemory	10
core.cache.status.MyPortalWidgetService.enabled	1
core.plugins.status.signalement.pool	portal
core.plugins.status.ganalytics.installed	true
core.plugins.status.lucene.installed	true
core.plugins.status.signalement-ramen.installed	true
core.plugins.status.adminauthenticationwsso.installed	true
core.plugins.status.formengine-signalement.installed	false
portal.site.site_property.meta.author	Mairie de Paris
portal.site.site_property.meta.copyright	Mairie de Paris
portal.site.site_property.popup_credits.textblock	Mairie de Paris
portal.site.site_property.popup_legal_info.copyright.textblock	Mairie de Paris
portal.site.site_property.popup_legal_info.privacy.textblock	Mairie de Paris
portal.site.site_property.email	magali.lemaire@paris.fr
core.plugins.status.formengine-dansmarue.pool	portal
core.plugins.status.jasper.installed	true
mylutece.security.public_url.mylutece.url.geoserver	R59-GEO-APP
portal.site.site_property.name	DMR - Signalement
portal.site.site_property.meta.keywords	encombrant, dépôt, déchet, anomalie, incivilité
core.plugins.status.signalement-rest.installed	true
core.plugins.status.unittree.pool	portal
core.plugins.status.unittree.installed	true
core.plugins.status.core_extensions.installed	true
core.plugins.status.plugin-rest.installed	true
core.plugins.status.address.installed	true
core.plugins.status.dansmarue.installed	true
core.plugins.status.profiles.installed	true
core.plugins.status.signalement-ramen.pool	portal
core.plugins.status.gis-address.installed	true
core.plugins.status.unittree-profiles.installed	true
core.plugins.status.gis.installed	true
core.plugins.status.workflow-dansmarue.pool	portal
core.plugins.status.workflow-rest.installed	true
core.plugins.status.jasper.pool	portal
core.plugins.status.identity-provider.installed	true
core.plugins.status.workflow-dansmarue.installed	true
core.plugins.status.profiles.pool	portal
core.plugins.status.unittree-sira.installed	true
core.plugins.status.formengine-gis.installed	true
core.plugins.status.mylutece.installed	true
core.plugins.status.dansmarue-ramen.pool	portal
core.plugins.status.dansmarue-rest.installed	true
core.plugins.status.formengine-dansmarue.installed	true
core.plugins.status.signalement.installed	true
core.plugins.status.workflow.installed	true
core.plugins.status.ganalytics.pool	portal
core.plugins.status.workflow-signalement.installed	true
core.plugins.status.sira-rest.installed	true
core.plugins.status.gis.pool	portal
core.plugins.status.workflow-signalement.pool	portal
core.plugins.status.dansmarue.pool	portal
core.plugins.status.mylutece-openam.installed	true
core.plugins.status.rest.installed	true
core.plugins.status.mylutece.pool	portal
core.plugins.status.dansmarue-ramen.installed	true
core.plugins.status.address-autocomplete.installed	true
core.plugins.status.workflow.pool	portal
core.daemon.indexer.interval	300
core.daemon.mailSender.interval	60
core.daemon.anonymizationDaemon.interval	86400
core.daemon.anonymizationDaemon.onStartUp	false
core.daemon.accountLifeTimeDaemon.interval	86400
core.daemon.threadLauncherDaemon.interval	60
core.daemon.jasperPurgeImage.interval	10
core.daemon.jasperPurgeImage.onStartUp	false
core.daemon.automaticActionDaemon.interval	14400
core.daemon.formengineNotification.interval	10
mylutece.portal.authentication.required	false
core.advanced_parameters.email_pattern_verify_by	
piwik.site_property.server.http.url	https://piwik.apps.paris.fr/piwik/
piwik.site_property.server.https.url	https://piwik.apps.paris.fr/piwik/
piwik.site_property.widget.auth.token	ec26b24ba6a05fcc883f50a2a8742c90&
piwik.site_property.site.id	248
sitelabels.site_property.mobile.apple.link.href	https://itunes.apple.com/fr/app/dansmarue/id662045577?mt=8
sitelabels.site_property.mobile.android.link.href	https://play.google.com/store/apps/details?id=fr.paris.android.signalement&hl=fr
sitelabels.site_property.footer.paris.url	http://www.paris.fr
sitelabels.site_property.footer.mentions.legales.url	http://www.paris.fr/mentions-legales
sitelabels.site_property.footer.faq.url	jsp/site/Portal.jsp?page=helpdesk&faq_id=1
sitelabels.site_property.footer.contact.url	http://www.paris.fr/contact
sitelabels.site_property.condition_utilisation.link.href	https://teleservices.paris.fr/sira/DansMaRue_conditions_d_utilisation.pdf 
core.daemon.accountLifeTimeDaemon.onStartUp	true
core.plugins.status.formengine.pool	portal
core.plugins.status.formengine-signalement.pool	portal
core.plugins.status.formengine.installed	false
core.plugins.status.identitystoreopenamprovider.installed	true
core.plugins.status.workflow-notifygru.installed	true
core.plugins.status.piwik.installed	true
portal.site.site_property.meta.description	Prise de rendez-vous pour l'enlèvement des encombrants à Paris, DansMaRue, gestion des anomalies
core.daemon.ExportWssoAdminUsersDaemon.interval	3600
core.plugins.status.sitelabels.installed	true
core.cache.status.JasperService.enabled	0
portal.site.site_property.logo_url	images/logo-header-icon.png
sitelabels.site_property.footer.paris	Mairie de paris
sitelabels.site_property.footer.mentions.legales	Mensions legales
sitelabels.site_property.footer.contact	Contact
core.plugins.status.disconnection.pool	portal
core.plugins.status.disconnection.installed	true
core.daemon.formengineNotification.onStartUp	true
core.daemon.fullIndexingDaemon.interval	86400
core.plugins.status.fosignalement.installed	true
core.plugins.status.fosignalement.pool	portal
dansmarue.site_property.compression_quality	0.4
dansmarue.site_property.taille_max	300
sitelabels.site_property.title.ramen	RAMEN
sitelabels.site_property.menu.ramen.dossier	Gestion des dossiers
core.cache.status.PageCachingFilter.enabled	0
core.cache.status.PortalMenuService.enabled	0
sitelabels.site_property.menu.ramen.referentiel	Gestion du référentiel
sitelabels.site_property.menu.ramen.feuille.de.route	Gestion des feuilles de route
sitelabels.site_property.menu.ramen.service.fait	Déclaration des services faits
sitelabels.site_property.ramen.url	https://teleservices.rec.apps.tmma.paris.mdp/ramen/
core.cache.status.SiteMapService.enabled	1
core.plugins.status.elasticdata.installed	true
core.plugins.status.elasticdata.pool	portal
core.plugins.status.elasticdata-dansmarue.installed	true
core.plugins.status.elasticdata-dansmarue.pool	portal
core.plugins.status.leaflet-dansmarue.installed	true
core.plugins.status.unittree-signalement.installed	true
portal.site.site_property.home_url	jsp/site/Portal.jsp?page=dansmarue
core.cache.status.asynchronousupload.asynchronousUploadCacheService.enabled	0
core.daemon.webservicePartnerDaemon.interval	300
sitelabels.site_property.app.content	Utilisez l'application mobile DansMaRue depuis votre smartphone pour transmettre directement vos anomalies depuis les rues ou les parcs de Paris.
sitelabels.site_property.app.title	DANSMARUE SUR VOTRE MOBILE
core.daemon.ExportWssoAdminUsersDaemon.onStartUp	true
core.daemon.mailSender.onStartUp	true
core.advanced_parameters.email_pattern	^[\\w_.\\-!\\#\\$\\%\\&\\'\\*\\+\\/\\=\\?\\^\\`\\{\\}\\|\\~]+@[\\w_.\\-]+\\.[\\w]+$
core.daemon.threadLauncherDaemon.onStartUp	true
sitelabels.site_property.finalisation.photo.detaillee.label	Photo détaillée
sitelabels.site_property.finalisation.photo.ensemble.label	Photo d'ensemble
sitelabels.site_property.finalisation.precisions.label	Précisions complémentaires concernant la demande
sitelabels.site_property.finalisation.priotrie.label	Priorité
sitelabels.site_property.finalisation.priotrie.radio.1	Dangereux
sitelabels.site_property.finalisation.priotrie.radio.2	Gênant
sitelabels.site_property.finalisation.priotrie.radio.3	Très gênant
sitelabels.site_property.general.facultatilf.label	(facultatif)
core.plugins.status.workflow-ramen.installed	true
core.plugins.status.workflow-ramen.pool	portal
core.plugins.status.ramen.installed	true
core.plugins.status.ramen.pool	portal
core.plugins.status.ramen-rest.installed	true
core.cache.status.MailAttachmentCacheService.enabled	0
core.cache.status.XMLTransformerCacheService(XSLT).enabled	1
core.plugins.status.leaflet.installed	true
core.cache.status.pathCacheService.enabled	0
core.cache.status.LinksIncludeCacheService.enabled	0
core.cache.status.PageCacheService.enabled	0
core.cache.status.PortletCacheService.enabled	0
core.cache.status.BaseUserPreferencesCacheService.enabled	0
core.cache.status.workflow.notifyGruConfigCacheService.enabled	0
core.daemon.webservicePartnerDaemon.onStartUp	true
core.daemon.fullIndexingDaemon.onStartUp	true
core.daemon.indexer.onStartUp	true
core.daemon.automaticActionDaemon.onStartUp	true
core.startup.time	13 sept. 2018 13:50:22
core.cache.status.DatastoreCacheService.enabled	0
core.cache.status.StaticFilesCachingFilter.enabled	0
\.


--
-- Data for Name: core_feature_group; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_feature_group (id_feature_group, feature_group_description, feature_group_label, feature_group_order) FROM stdin;
CONTENT	portal.features.group.content.description	portal.features.group.content.label	1
APPLICATIONS	portal.features.group.applications.description	portal.features.group.applications.label	3
SYSTEM	portal.features.group.system.description	portal.features.group.system.label	7
SITE	portal.features.group.site.description	portal.features.group.site.label	2
STYLE	portal.features.group.charter.description	portal.features.group.charter.label	6
USERS	portal.features.group.users.description	portal.features.group.users.label	4
MANAGERS	portal.features.group.managers.description	portal.features.group.managers.label	5
SIGNALEMENT	dansmarue.features.group.signalement.description	dansmarue.features.group.signalement.label	9
\.


--
-- Data for Name: core_file; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_file (id_file, title, id_physical_file, file_size, mime_type, date_creation) FROM stdin;
125	export_users_csv.xml	125	2523	application/xml	2005-10-10 10:10:10
126	export_users_xml.xml	126	259	application/xml	2005-10-10 10:10:10
\.


--
-- Data for Name: core_id_generator; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_id_generator (class_name, current_value) FROM stdin;
\.


--
-- Data for Name: core_indexer_action; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_indexer_action (id_action, id_document, id_task, indexer_name, id_portlet) FROM stdin;
\.


--
-- Data for Name: core_level_right; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_level_right (id_level, name) FROM stdin;
0	Niveau 0 - Droits de l'administrateur technique
1	Niveau 1 - Droits de l'administrateur fonctionnel
2	Niveau 2 - Droits du webmestre
3	Niveau 3 - Droits de l'assistant webmestre
\.


--
-- Data for Name: core_mail_item; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_mail_item (id_mail_queue, mail_item) FROM stdin;
\.


--
-- Data for Name: core_mail_queue; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_mail_queue (id_mail_queue, is_locked) FROM stdin;
\.


--
-- Name: core_mail_queue_id_mail_queue_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('core_mail_queue_id_mail_queue_seq', 1, false);


--
-- Data for Name: core_mode; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_mode (id_mode, description_mode, path, output_xsl_method, output_xsl_version, output_xsl_media_type, output_xsl_encoding, output_xsl_indent, output_xsl_omit_xml_dec, output_xsl_standalone) FROM stdin;
0	Normal	normal/	xml	1.0	text/xml	UTF-8	yes	yes	yes
1	Administration	admin/	xml	1.0	text/xml	UTF-8	yes	yes	yes
2	Wap	wml/	xml	1.0	text/xml	UTF-8	yes	yes	yes
\.


--
-- Data for Name: core_page; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_page (id_page, id_parent, name, description, date_update, status, page_order, id_template, date_creation, role, code_theme, node_status, image_content, mime_type, meta_keywords, meta_description, id_authorization_node, display_date_update, is_manual_date_update) FROM stdin;
1	0	accueil	Page d'accueil	2009-05-01 22:19:33	1	1	4	2003-09-09 04:38:01	none	default	0	\N	application/octet-stream	\N	\N	1	0	0
3	1	Documentation	Tout ce dont vous avez besoin pour utiliser Lutece	2006-10-18 13:39:24	0	2	2	2002-09-09 04:46:46	none	default	0	\N	application/octet-stream	\N	\N	1	0	0
6	3	Guide utilisateur	Accès au guide utilisateur	2006-09-19 12:20:13	0	1	1	2006-02-15 15:39:59	none	default	1	\N		\N	\N	1	0	0
5	1	L'outil	Description du CMS Lutèce	2006-10-12 13:03:49	0	1	2	2006-02-15 15:37:26	none	default	1	\N		\N	\N	1	0	0
7	3	Guide technique	Accès à documentation technique	2006-09-19 12:19:45	0	2	1	2006-02-15 15:40:30	none	default	1	\N	image/gif	\N	\N	1	0	0
10	1	Développeurs	Ressources pour les contributeurs/développeurs Lutèce	2009-05-01 22:25:13	0	4	2	2006-10-12 13:03:20	none	default	1	\N	\N	\N	\N	1	0	0
11	5	Répondez à notre questionnaire	Plugin form	2009-06-16 10:54:35	0	1	2	2009-06-16 10:53:39	none	default	1	\N	\N	\N	\N	1	0	0
12	10	Générateur de code		2009-07-13 13:49:14	0	1	1	2009-07-13 13:49:14	none	default	1	\N	\N	\N	\N	1	0	0
\.


--
-- Data for Name: core_page_template; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_page_template (id_template, description, file_name, picture) FROM stdin;
1	Une colonne	skin/site/page_template1.html	page_template1.gif
2	Deux colonnes	skin/site/page_template2.html	page_template2.gif
3	Trois colonnes	skin/site/page_template3.html	page_template3.gif
4	1 + 2 colonnes	skin/site/page_template4.html	page_template4.gif
5	Deux colonnes égales	skin/site/page_template5.html	page_template5.gif
6	Trois colonnes inégales	skin/site/page_template6.html	page_template6.gif
\.


--
-- Data for Name: core_physical_file; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_physical_file (id_physical_file, file_value) FROM stdin;
125	\\x3c3f786d6c2076657273696f6e3d22312e30223f3e0d0a3c78736c3a7374796c6573686565742076657273696f6e3d22312e302220786d6c6e733a78736c3d22687474703a2f2f7777772e77332e6f72672f313939392f58534c2f5472616e73666f726d223e0d0a093c78736c3a6f7574707574206d6574686f643d2274657874222f3e0d0a090d0a093c78736c3a74656d706c617465206d617463683d227573657273223e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d227573657222202f3e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a093c78736c3a74656d706c617465206d617463683d2275736572223e0d0a09093c78736c3a746578743e223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226163636573735f636f646522202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226c6173745f6e616d6522202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d2266697273745f6e616d6522202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d22656d61696c22202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d2273746174757322202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226c6f63616c6522202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226c6576656c22202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226d7573745f6368616e67655f70617373776f726422202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226163636573736962696c6974795f6d6f646522202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d2270617373776f72645f6d61785f76616c69645f6461746522202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226163636f756e745f6d61785f76616c69645f6461746522202f3e0d0a09093c78736c3a746578743e223b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d22646174655f6c6173745f6c6f67696e22202f3e0d0a09093c78736c3a746578743e223c2f78736c3a746578743e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d22726f6c657322202f3e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d2272696768747322202f3e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d22776f726b67726f75707322202f3e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d226174747269627574657322202f3e0d0a09093c78736c3a746578743e262331303b3c2f78736c3a746578743e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a093c78736c3a74656d706c617465206d617463683d22726f6c6573223e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d22726f6c6522202f3e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a093c78736c3a74656d706c617465206d617463683d22726f6c65223e0d0a09093c78736c3a746578743e3b22726f6c653a3c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d2263757272656e74282922202f3e0d0a09093c78736c3a746578743e223c2f78736c3a746578743e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a093c78736c3a74656d706c617465206d617463683d22726967687473223e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d22726967687422202f3e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a093c78736c3a74656d706c617465206d617463683d227269676874223e0d0a09093c78736c3a746578743e3b2272696768743a3c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d2263757272656e74282922202f3e0d0a09093c78736c3a746578743e223c2f78736c3a746578743e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a093c78736c3a74656d706c617465206d617463683d22776f726b67726f757073223e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d22776f726b67726f757022202f3e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a093c78736c3a74656d706c617465206d617463683d22776f726b67726f7570223e0d0a09093c78736c3a746578743e3b22776f726b67726f75703a3c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d2263757272656e74282922202f3e0d0a09093c78736c3a746578743e223c2f78736c3a746578743e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a093c78736c3a74656d706c617465206d617463683d2261747472696275746573223e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d2261747472696275746522202f3e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a093c78736c3a74656d706c617465206d617463683d22617474726962757465223e0d0a09093c78736c3a746578743e3b223c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226174747269627574652d696422202f3e0d0a09093c78736c3a746578743e3a3c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226174747269627574652d6669656c642d696422202f3e0d0a09093c78736c3a746578743e3a3c2f78736c3a746578743e0d0a09093c78736c3a76616c75652d6f662073656c6563743d226174747269627574652d76616c756522202f3e0d0a09093c78736c3a746578743e223c2f78736c3a746578743e0d0a093c2f78736c3a74656d706c6174653e0d0a090d0a3c2f78736c3a7374796c6573686565743e
126	\\x3c3f786d6c2076657273696f6e3d22312e3022203f3e0d0a3c78736c3a7374796c6573686565742076657273696f6e3d22312e302220786d6c6e733a78736c3d22687474703a2f2f7777772e77332e6f72672f313939392f58534c2f5472616e73666f726d223e0d0a093c78736c3a74656d706c617465206d617463683d222f207c20402a207c206e6f64652829223e0d0a09093c78736c3a636f70793e0d0a0909093c78736c3a6170706c792d74656d706c617465732073656c6563743d22402a207c206e6f6465282922202f3e0d0a09093c2f78736c3a636f70793e0d0a093c2f78736c3a74656d706c6174653e0d0a3c2f78736c3a7374796c6573686565743e
\.


--
-- Data for Name: core_portal_component; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_portal_component (id_portal_component, name) FROM stdin;
0	Rubrique
1	Article
2	Rubrique Liste Article
3	Menu Init
4	Menu Principal
5	Chemin Page
6	Plan du site
7	Arborescence
8	Plan du site admin
\.


--
-- Data for Name: core_portlet; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_portlet (id_portlet, id_portlet_type, id_page, name, date_update, status, portlet_order, column_no, id_style, accept_alias, date_creation, display_portlet_title, role, device_display_flags) FROM stdin;
\.


--
-- Data for Name: core_portlet_alias; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_portlet_alias (id_portlet, id_alias) FROM stdin;
\.


--
-- Data for Name: core_portlet_type; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_portlet_type (id_portlet_type, name, url_creation, url_update, home_class, plugin_name, url_docreate, create_script, create_specific, create_specific_form, url_domodify, modify_script, modify_specific, modify_specific_form) FROM stdin;
ALIAS_PORTLET	portal.site.portletAlias.name	plugins/alias/CreatePortletAlias.jsp	plugins/alias/ModifyPortletAlias.jsp	fr.paris.lutece.portal.business.portlet.AliasPortletHome	alias	plugins/alias/DoCreatePortletAlias.jsp	/admin/portlet/script_create_portlet.html	/admin/portlet/alias/create_portlet_alias.html		plugins/alias/DoModifyPortletAlias.jsp	/admin/portlet/script_modify_portlet.html	/admin/portlet/alias/modify_portlet_alias.html	
MYLUTECE_PORTLET	mylutece.portlet.name	plugins/mylutece/CreatePortletMyLutece.jsp	plugins/mylutece/ModifyPortletMyLutece.jsp	fr.paris.lutece.plugins.mylutece.business.portlet.MyLutecePortletHome	mylutece	plugins/mylutece/DoCreatePortletMyLutece.jsp	/admin/portlet/script_create_portlet.html			plugins/mylutece/DoModifyPortletMyLutece.jsp	/admin/portlet/script_modify_portlet.html		
\.


--
-- Data for Name: core_role; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_role (role, role_description, workgroup_key) FROM stdin;
\.


--
-- Data for Name: core_search_parameter; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_search_parameter (parameter_key, parameter_value) FROM stdin;
type_filter	none
default_operator	OR
help_message	Message d aide pour la recherche
date_filter	0
tag_filter	0
taglist	\N
\.


--
-- Data for Name: core_style; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_style (id_style, description_style, id_portlet_type, id_portal_component) FROM stdin;
3	Menu Init		3
4	Main Menu		4
5	Chemin Page		5
6	Plan du site		6
7	Arborescence		7
8	Plan du Site Admin	\N	8
200	Défaut	MYLUTECE_PORTLET	0
\.


--
-- Data for Name: core_style_mode_stylesheet; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_style_mode_stylesheet (id_style, id_mode, id_stylesheet) FROM stdin;
3	0	211
4	0	213
5	0	215
6	0	217
7	0	253
8	1	279
200	0	310
\.


--
-- Data for Name: core_stylesheet; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_stylesheet (id_stylesheet, description, file_name, source) FROM stdin;
253	Pages filles - Arborescence	menu_tree.xsl	\\x3c3f786d6c2076657273696f6e3d22312e30223f3e0d0a3c78736c3a7374796c6573686565742076657273696f6e3d22312e302220786d6c6e733a78736c3d22687474703a2f2f7777772e77332e6f72672f313939392f58534c2f5472616e73666f726d223e0d0a0d0a3c78736c3a706172616d206e616d653d22736974652d70617468222073656c6563743d22736974652d7061746822202f3e0d0a0d0a3c78736c3a74656d706c617465206d617463683d226d656e752d6c697374223e0d0a093c78736c3a7661726961626c65206e616d653d226d656e752d6c697374222073656c6563743d226d656e7522202f3e0d0a0d0a093c73637269707420747970653d22746578742f6a617661736372697074223e0d0a09092428646f63756d656e74292e72656164792866756e6374696f6e28297b0d0a090909242822237472656522292e7472656576696577287b0d0a09090909616e696d617465643a202266617374222c0d0a09090909636f6c6c61707365643a2066616c73652c0d0a09090909756e697175653a20747275652c0d0a09090909706572736973743a2022636f6f6b6965220d0a0909097d293b0d0a09090d0a09097d293b0d0a093c2f7363726970743e202020200d0a090d0a093c212d2d204d656e752054726565202d2d3e2020202020200d0a093c78736c3a696620746573743d226e6f7428737472696e67286d656e75293d272729223e0d0a09202020203c78736c3a746578742064697361626c652d6f75747075742d6573636170696e673d22796573223e0909202020200d0a2020202020202020202020203c64697620636c6173733d227472656534223e09090d0a0909093c68323e26233136303b3c2f68323e0d0a0909093c756c2069643d22747265652220636c6173733d227472656534223e0d0a202020202020202020202020202020203c78736c3a6170706c792d74656d706c617465732073656c6563743d226d656e7522202f3e20202020202020200d0a0909093c2f756c3e090d0a0909093c2f6469763e0d0a09092009203c6272202f3e0d0a09093c2f78736c3a746578743e200d0a093c2f78736c3a69663e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226d656e75223e0d0a202020203c78736c3a7661726961626c65206e616d653d22696e646578223e0d0a20202020093c78736c3a6e756d626572206c6576656c3d2273696e676c65222076616c75653d22706f736974696f6e282922202f3e0d0a202020203c2f78736c3a7661726961626c653e0d0a09093c6c693e0d0a202020203c212d2d3c78736c3a696620746573743d2224696e64657820266c743b2037223e2d2d3e20202020202020200d0a202020202020202020203c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207461726765743d225f746f7022203e0d0a2020202020202020202020202020203c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a20202020202020202020203c2f613e092020200d0a09092020203c6272202f3e0d0a09092020203c78736c3a76616c75652d6f662073656c6563743d22706167652d6465736372697074696f6e22202f3e0d0a09092020203c212d2d3c78736c3a76616c75652d6f662073656c6563743d22706167652d6465736372697074696f6e22202f3e3c6272202f3e2d2d3e09092020200909090d0a0909093c78736c3a6170706c792d74656d706c617465732073656c6563743d227375626c6576656c2d6d656e752d6c69737422202f3e200d0a0909090d0a09093c2f6c693e20090d0a202020203c212d2d3c2f78736c3a69663e2d2d3e0d0a09090d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c78736c3a74656d706c617465206d617463683d227375626c6576656c2d6d656e752d6c69737422203e200d0a090d0a093c78736c3a6170706c792d74656d706c617465732073656c6563743d227375626c6576656c2d6d656e7522202f3e200920202020090d0a0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d227375626c6576656c2d6d656e75223e0d0a2020203c78736c3a7661726961626c65206e616d653d22696e6465785f736f75735f6d656e75223e0d0a2020202020202020203c78736c3a6e756d626572206c6576656c3d2273696e676c65222076616c75653d22706f736974696f6e282922202f3e0d0a2020203c2f78736c3a7661726961626c653e0d0a0909203c756c203e0d0a0909093c6c693e0d0a3c212d2d093c7370616e3e202d2d3e0d0a090909093c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207461726765743d225f746f70223e0d0a09090909093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a090909093c2f613e0d0a0909093c2f6c693e0909090d0a09093c2f756c3e0d0a093c212d2d3c2f7370616e3e092d2d3e0d0a09090d0a2020200d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c2f78736c3a7374796c6573686565743e0d0a
215	Chemin page	page_path.xsl	\\x3c3f786d6c2076657273696f6e3d22312e30223f3e0d0a3c78736c3a7374796c6573686565742076657273696f6e3d22312e302220786d6c6e733a78736c3d22687474703a2f2f7777772e77332e6f72672f313939392f58534c2f5472616e73666f726d223e0d0a0d0a3c78736c3a706172616d206e616d653d22736974652d70617468222073656c6563743d22736974652d7061746822202f3e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d2270616765223e0d0a09093c78736c3a696620746573743d22706f736974696f6e2829213d6c61737428292d31223e0d0a0909093c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207461726765743d225f746f70223e3c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e3c2f613e203e0d0a09093c2f78736c3a69663e0d0a09093c78736c3a696620746573743d22706f736974696f6e28293d6c61737428292d31223e0d0a0909093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a09093c2f78736c3a69663e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d22706167655f6c696e6b223e0d0a09093c78736c3a696620746573743d22706f736974696f6e2829213d6c61737428292d31223e0d0a0909093c6120687265663d227b24736974652d706174687d3f7b706167652d75726c7d22207461726765743d225f746f70223e3c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e3c2f613e203e0d0a09093c2f78736c3a69663e0d0a09093c78736c3a696620746573743d22706f736974696f6e28293d6c61737428292d31223e0d0a0909093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a09093c2f78736c3a69663e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c2f78736c3a7374796c6573686565743e
213	Menu principal	menu_main.xsl	\\x3c3f786d6c2076657273696f6e3d22312e30223f3e0d0a3c78736c3a7374796c6573686565742076657273696f6e3d22312e30220d0a09786d6c6e733a78736c3d22687474703a2f2f7777772e77332e6f72672f313939392f58534c2f5472616e73666f726d223e0d0a0d0a093c78736c3a706172616d206e616d653d22736974652d70617468222073656c6563743d22736974652d7061746822202f3e0d0a0d0a093c78736c3a74656d706c617465206d617463683d226d656e752d6c697374223e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d226d656e7522202f3e0d0a093c2f78736c3a74656d706c6174653e0d0a0d0a093c78736c3a74656d706c617465206d617463683d226d656e75223e0d0a09093c6c693e0d0a0909093c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d2220636c6173733d2266697273742d6c6576656c22207461726765743d225f746f70223e0d0a09090909093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a0909093c2f613e0d0a09093c2f6c693e0d0a093c2f78736c3a74656d706c6174653e0d0a0d0a3c2f78736c3a7374796c6573686565743e0d0a0d0a
211	Menu Init	menu_init.xsl	\\x3c3f786d6c2076657273696f6e3d22312e30223f3e0d0a3c78736c3a7374796c6573686565742076657273696f6e3d22312e302220786d6c6e733a78736c3d22687474703a2f2f7777772e77332e6f72672f313939392f58534c2f5472616e73666f726d223e0d0a0d0a3c78736c3a706172616d206e616d653d22736974652d70617468222073656c6563743d22736974652d7061746822202f3e0d0a0d0a3c78736c3a74656d706c617465206d617463683d226d656e752d6c697374223e0d0a3c6272202f3e3c6272202f3e0d0a093c6469762069643d226d656e752d696e6974223e0d0a09093c6469762069643d226d656e752d696e69742d636f6e74656e74223e0d0a2020202020202020202020203c756c2069643d226d656e752d7665727469223e0d0a202020202020202020202020202020203c78736c3a6170706c792d74656d706c617465732073656c6563743d226d656e7522202f3e0d0a2020202020202020202020203c2f756c3e0d0a20202020202020203c2f6469763e0d0a20202020203c2f6469763e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226d656e75223e0d0a202020203c78736c3a7661726961626c65206e616d653d22696e646578223e0d0a20202020093c78736c3a6e756d626572206c6576656c3d2273696e676c65222076616c75653d22706f736974696f6e282922202f3e0d0a202020203c2f78736c3a7661726961626c653e0d0a0d0a202020203c78736c3a696620746573743d2224696e646578202667743b2037223e0d0a20202020202020203c6c6920636c6173733d2266697273742d7665727469223e0d0a2020202020202020093c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207461726765743d225f746f70223e0d0a2020202020202020202009093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a0920202020202020203c2f613e0d0a2020202009202020203c78736c3a6170706c792d74656d706c617465732073656c6563743d227375626c6576656c2d6d656e752d6c69737422202f3e0d0a20202020202020203c2f6c693e0d0a2020203c2f78736c3a69663e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c78736c3a74656d706c617465206d617463683d227375626c6576656c2d6d656e752d6c69737422203e0d0a093c756c3e0d0a20202020093c6c6920636c6173733d226c6173742d7665727469223e0d0a090920093c78736c3a6170706c792d74656d706c617465732073656c6563743d227375626c6576656c2d6d656e7522202f3e0d0a2009202020203c2f6c693e0d0a202020203c2f756c3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c78736c3a74656d706c617465206d617463683d227375626c6576656c2d6d656e75223e0d0a2020203c78736c3a7661726961626c65206e616d653d22696e6465785f736f75735f6d656e75223e0d0a2020202020202020203c78736c3a6e756d626572206c6576656c3d2273696e676c65222076616c75653d22706f736974696f6e282922202f3e0d0a2020203c2f78736c3a7661726961626c653e0d0a0d0a2020203c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207461726765743d225f746f70223e0d0a09093c7370616e3e3c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e3c2f7370616e3e0d0a2020203c2f613e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c2f78736c3a7374796c6573686565743e0d0a
217	Plan du site	site_map.xsl	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2249534f2d383835392d31223f3e0d0a3c78736c3a7374796c6573686565742076657273696f6e3d22312e302220786d6c6e733a78736c3d22687474703a2f2f7777772e77332e6f72672f313939392f58534c2f5472616e73666f726d223e0d0a0d0a3c78736c3a706172616d206e616d653d22736974652d70617468222073656c6563743d22736974652d7061746822202f3e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d22706167655b706167652d6c6576656c3d305d223e0d0a093c64697620636c6173733d227370616e2d31352070726570656e642d3120617070656e642d3120617070656e642d626f74746f6d223e0d0a09093c64697620636c6173733d22706f72746c6574202d6c75746563652d626f726465722d726164697573223e0d0a0909093c78736c3a6170706c792d74656d706c617465732073656c6563743d226368696c642d70616765732d6c69737422202f3e0d0a09093c2f6469763e0d0a093c2f6469763e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d22706167655b706167652d6c6576656c3d315d22203e0d0a3c756c20636c6173733d22736974652d6d61702d6c6576656c2d6f6e65223e0d0a093c6c693e0d0a09093c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207461726765743d225f746f70223e0d0a0909093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a09093c2f613e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d22706167652d6465736372697074696f6e22202f3e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d22706167652d696d61676522202f3e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d226368696c642d70616765732d6c69737422202f3e0d0a09202020203c78736c3a746578742064697361626c652d6f75747075742d6573636170696e673d22796573223e0d0a0909202020203c215b43444154415b3c64697620636c6173733d22636c656172223e26233136303b3c2f6469763e5d5d3e0d0a09202020203c2f78736c3a746578743e0d0a093c2f6c693e0d0a3c2f756c3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d22706167655b706167652d6c6576656c3d325d22203e0d0a3c756c20636c6173733d22736974652d6d61702d6c6576656c2d74776f223e0d0a093c6c693e0d0a09093c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207461726765743d225f746f70223e0d0a0909093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a09093c2f613e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d22706167652d6465736372697074696f6e22202f3e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d226368696c642d70616765732d6c69737422202f3e0d0a093c2f6c693e0d0a3c2f756c3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d22706167655b706167652d6c6576656c3e325d22203e0d0a3c756c20636c6173733d22736974652d6d61702d6c6576656c2d68696768657374223e0d0a093c6c693e0d0a09093c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207461726765743d225f746f70223e0d0a0909093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a09093c2f613e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d22706167652d6465736372697074696f6e22202f3e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d226368696c642d70616765732d6c69737422202f3e0d0a093c2f6c693e0d0a3c2f756c3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d22706167652d6465736372697074696f6e223e0d0a093c6272202f3e3c78736c3a76616c75652d6f662073656c6563743d222e22202f3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226368696c642d70616765732d6c6973745b706167652d6c6576656c3d305d223e0d0a093c78736c3a696620746573743d22636f756e742870616765293e3022203e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d227061676522202f3e0d0a202020203c2f78736c3a69663e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226368696c642d70616765732d6c6973745b706167652d6c6576656c3d315d223e0d0a093c78736c3a696620746573743d22636f756e742870616765293e3022203e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d227061676522202f3e0d0a202020203c2f78736c3a69663e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226368696c642d70616765732d6c6973745b706167652d6c6576656c3d325d223e0d0a093c78736c3a696620746573743d22636f756e742870616765293e3022203e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d227061676522202f3e0d0a202020203c2f78736c3a69663e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c78736c3a74656d706c617465206d617463683d226368696c642d70616765732d6c6973745b706167652d6c6576656c3e325d223e0d0a093c78736c3a696620746573743d22636f756e742870616765293e3022203e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d227061676522202f3e0d0a202020203c2f78736c3a69663e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d22706167652d696d616765223e0d0a093c64697620636c6173733d226c6576656c2d6f6e652d696d616765223e0d0a20202020093c64697620636c6173733d22706f6c61726f6964223e0d0a09093c696d672020626f726465723d2230222077696474683d22383022206865696768743d22383022207372633d22696d616765732f6c6f63616c2f646174612f70616765732f7b2e7d2220616c743d2222202f3e0d0a2020202020202020203c2f6469763e0d0a093c2f646976203e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c2f78736c3a7374796c6573686565743e0d0a
279	Plan du Site module d'Administration	admin_site_map_admin.xsl	\\x3c3f786d6c2076657273696f6e3d22312e30223f3e0d0a3c78736c3a7374796c6573686565742076657273696f6e3d22312e302220786d6c6e733a78736c3d22687474703a2f2f7777772e77332e6f72672f313939392f58534c2f5472616e73666f726d223e0d0a3c78736c3a706172616d206e616d653d22736974652d70617468222073656c6563743d22736974652d7061746822202f3e0d0a3c78736c3a7661726961626c65206e616d653d2263757272656e742d706167652d6964222073656c6563743d2263757272656e742d706167652d696422202f3e0d0a0d0a3c78736c3a74656d706c617465206d617463683d22706167655b706167652d6c6576656c3d305d223e200d0a093c6469762069643d22747265652220636c6173733d226a73747265652d64656661756c74223e0d0a09093c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207469746c653d227b706167652d6465736372697074696f6e7d22203e0d0a0909093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a0909093c78736c3a696620746573743d226e6f7428737472696e6728706167652d726f6c65293d276e6f6e652729223e200d0a090909093c7374726f6e673e3c78736c3a746578742064697361626c652d6f75747075742d6573636170696e673d22796573223e2d20236931386e7b706f7274616c2e736974652e61646d696e5f706167652e74616241646d696e4d6170526f6c6552657365727665647d3c2f78736c3a746578743e0d0a090909093c78736c3a76616c75652d6f662073656c6563743d22706167652d726f6c6522202f3e3c2f7374726f6e673e0d0a0909093c2f78736c3a69663e2020202020202020202020200d0a09093c2f613e0d0a09093c756c3e0d0a0909093c78736c3a6170706c792d74656d706c617465732073656c6563743d226368696c642d70616765732d6c69737422202f3e0d0a09093c2f756c3e0d0a093c2f6469763e0d0a3c2f78736c3a74656d706c6174653e0d0a202020200d0a3c78736c3a74656d706c617465206d617463683d22706167655b706167652d6c6576656c3e305d22203e0d0a093c78736c3a7661726961626c65206e616d653d22696e646578222073656c6563743d22706167652d696422202f3e0d0a093c78736c3a7661726961626c65206e616d653d226465736372697074696f6e222073656c6563743d22706167652d6465736372697074696f6e22202f3e0d0a090d0a093c6c692069643d226e6f64652d7b24696e6465787d223e0d0a09093c6120687265663d227b24736974652d706174687d3f706167655f69643d7b706167652d69647d22207469746c653d227b246465736372697074696f6e7d223e0d0a09093c78736c3a76616c75652d6f662073656c6563743d22706167652d6e616d6522202f3e0d0a0909093c78736c3a696620746573743d226e6f7428737472696e6728706167652d726f6c65293d276e6f6e652729223e0d0a090909093c7374726f6e673e0d0a0909090920203c78736c3a746578742064697361626c652d6f75747075742d6573636170696e673d22796573223e236931386e7b706f7274616c2e736974652e61646d696e5f706167652e74616241646d696e4d6170526f6c6552657365727665647d3c2f78736c3a746578743e3c78736c3a76616c75652d6f662073656c6563743d22706167652d726f6c6522202f3e0d0a090909093c2f7374726f6e673e0d0a0909093c2f78736c3a69663e0d0a09093c2f613e0d0a09093c78736c3a63686f6f73653e0d0a0909093c78736c3a7768656e20746573743d22636f756e74286368696c642d70616765732d6c6973742f2a293e30223e0d0a090909093c756c3e0d0a090909092020203c78736c3a6170706c792d74656d706c617465732073656c6563743d226368696c642d70616765732d6c69737422202f3e0d0a090909093c2f756c3e0d0a0909093c2f78736c3a7768656e3e0d0a09092020203c78736c3a6f74686572776973653e0d0a090909093c78736c3a6170706c792d74656d706c617465732073656c6563743d226368696c642d70616765732d6c69737422202f3e0d0a09092020203c2f78736c3a6f74686572776973653e0d0a09093c2f78736c3a63686f6f73653e0d0a093c2f6c693e0d0a3c2f78736c3a74656d706c6174653e0d0a202020200d0a3c78736c3a74656d706c617465206d617463683d226368696c642d70616765732d6c697374223e0d0a093c78736c3a6170706c792d74656d706c617465732073656c6563743d227061676522202f3e0d0a3c2f78736c3a74656d706c6174653e0d0a202020200d0a3c2f78736c3a7374796c6573686565743e0d0a
310	Rubrique MyLutece - Défaut	portlet_mylutece.xsl	\\x3c3f786d6c2076657273696f6e3d22312e30223f3e0d0a3c78736c3a7374796c6573686565742076657273696f6e3d22312e302220786d6c6e733a78736c3d22687474703a2f2f7777772e77332e6f72672f313939392f58534c2f5472616e73666f726d223e0d0a0d0a3c78736c3a74656d706c617465206d617463683d22706f72746c6574223e0d0a0d0a093c78736c3a7661726961626c65206e616d653d226465766963655f636c617373223e0d0a093c78736c3a63686f6f73653e0d0a09093c78736c3a7768656e20746573743d22737472696e6728646973706c61792d6f6e2d736d616c6c2d646576696365293d273027223e68696464656e2d70686f6e653c2f78736c3a7768656e3e0d0a09093c78736c3a7768656e20746573743d22737472696e6728646973706c61792d6f6e2d6e6f726d616c2d646576696365293d273027223e68696464656e2d7461626c65743c2f78736c3a7768656e3e0d0a09093c78736c3a7768656e20746573743d22737472696e6728646973706c61792d6f6e2d6c617267652d646576696365293d273027223e68696464656e2d6465736b746f703c2f78736c3a7768656e3e0d0a09093c78736c3a6f74686572776973653e3c2f78736c3a6f74686572776973653e0d0a093c2f78736c3a63686f6f73653e0d0a093c2f78736c3a7661726961626c653e0d0a0d0a093c64697620636c6173733d22706f72746c6574207b246465766963655f636c6173737d223e0d0a09093c64697620636c6173733d2277656c6c223e0d0a0909093c78736c3a63686f6f73653e0d0a0920202020202020203c78736c3a7768656e20746573743d226e6f7428737472696e6728646973706c61792d706f72746c65742d7469746c65293d27312729223e0d0a090909093c68333e3c78736c3a76616c75652d6f662064697361626c652d6f75747075742d6573636170696e673d22796573222073656c6563743d22706f72746c65742d6e616d6522202f3e3c2f68333e0d0a090909093c78736c3a6170706c792d74656d706c617465732073656c6563743d226d796c75746563652d706f72746c657422202f3e0d0a0920202020202020203c2f78736c3a7768656e3e0d0a0920202020202020203c78736c3a6f74686572776973653e0d0a090909093c78736c3a6170706c792d74656d706c617465732073656c6563743d226d796c75746563652d706f72746c657422202f3e0d0a0920202020202020203c2f78736c3a6f74686572776973653e0d0a0909093c2f78736c3a63686f6f73653e0d0a0909093c64697620636c6173733d22636c656172666978223e26233136303b3c2f6469763e0d0a09093c2f6469763e0d0a093c2f6469763e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226d796c75746563652d706f72746c6574223e0d0a093c78736c3a6170706c792d74656d706c617465732073656c6563743d22757365722d6e6f742d7369676e656422202f3e0d0a093c78736c3a6170706c792d74656d706c617465732073656c6563743d226c75746563652d7573657222202f3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d22757365722d6e6f742d7369676e6564223e0d0a093c666f726d20636c6173733d22666f726d2220616374696f6e3d226a73702f736974652f706c7567696e732f6d796c75746563652f446f4d794c75746563654c6f67696e2e6a737022206d6574686f643d22706f7374223e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d226c75746563652d757365722d61757468656e7469636174696f6e2d736572766963655b4064656c6567617465643d2774727565275d22202f3e0d0a09093c78736c3a6170706c792d74656d706c617465732073656c6563743d226c75746563652d757365722d61757468656e7469636174696f6e2d736572766963655b406c6f67696e70617373776f72642d72657175697265643d2774727565275d22202f3e0d0a09093c78736c3a696620746573743d22636f756e74286c75746563652d757365722d61757468656e7469636174696f6e2d736572766963655b406c6f67696e70617373776f72642d72657175697265643d2774727565275d29202667743b3d2031223e0d0a0909093c6c6162656c20666f723d22757365726e616d65223e436f646520642761636326233233323b73203a3c2f6c6162656c3e0d0a0909093c696e707574206e616d653d22757365726e616d652220636c6173733d22696e7075742d6e6f726d616c222069643d22757365726e616d6522206175746f636f6d706c6574653d226f66662220746162696e6465783d22312220747970653d2274657874222f3e3c6272202f3e0d0a0909093c6c6162656c20666f723d2270617373776f7264223e4d6f74206465207061737365203a3c2f6c6162656c3e0d0a0909093c696e707574206e616d653d2270617373776f72642220636c6173733d22696e7075742d6e6f726d616c222069643d2270617373776f726422206175746f636f6d706c6574653d226f66662220746162696e6465783d22322220747970653d2270617373776f726422202f3e0d0a0909093c627574746f6e20636c6173733d2262746e2062746e2d736d616c6c2220746162696e6465783d22332220747970653d227375626d6974223e3c6920636c6173733d2269636f6e2d75736572223e26233136303b3c2f693e26233136303b436f6e6e6578696f6e3c2f627574746f6e3e0d0a09093c2f78736c3a69663e0d0a093c2f666f726d3e0d0a093c78736c3a6170706c792d74656d706c617465732073656c6563743d226c75746563652d757365722d6e65772d6163636f756e742d75726c22202f3e0d0a093c78736c3a6170706c792d74656d706c617465732073656c6563743d226c75746563652d757365722d6c6f73742d70617373776f72642d75726c22202f3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c78736c3a74656d706c617465206d617463683d226c75746563652d757365722d61757468656e7469636174696f6e2d736572766963655b406c6f67696e70617373776f72642d72657175697265643d2774727565275d223e0d0a093c6c6162656c20636c6173733d22726164696f2220666f723d22617574685f70726f766964657222203e0d0a09093c696e70757420747970653d22726164696f22206e616d653d22617574685f70726f7669646572222076616c75653d227b6e616d657d2220636865636b65643d22636865636b656422202f3e0d0a09093c78736c3a76616c75652d6f662073656c6563743d22646973706c61792d6e616d6522202f3e0d0a093c2f6c6162656c3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c78736c3a74656d706c617465206d617463683d226c75746563652d757365722d61757468656e7469636174696f6e2d736572766963655b4064656c6567617465643d2774727565275d223e0d0a093c6120687265663d227b75726c7d3f617574685f70726f76696465723d7b6e616d657d223e0d0a09093c696d67207372633d227b69636f6e2d75726c7d2220616c743d227b646973706c61792d6e616d657d22207469746c653d227b646973706c61792d6e616d657d222f3e0d0a093c2f613e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226c75746563652d75736572223e0d0a202020203c703e0d0a093c7374726f6e673e4269656e76656e756526233136303b0d0a09093c78736c3a76616c75652d6f662064697361626c652d6f75747075742d6573636170696e673d22796573222073656c6563743d226c75746563652d757365722d6e616d652d676976656e22202f3e26233136303b0d0a09093c78736c3a76616c75652d6f662064697361626c652d6f75747075742d6573636170696e673d22796573222073656c6563743d226c75746563652d757365722d6e616d652d66616d696c7922202f3e0d0a093c2f7374726f6e673e0d0a093c2f703e0d0a202020203c78736c3a6170706c792d74656d706c617465732073656c6563743d226c75746563652d757365722d6c6f676f75742d75726c22202f3e0d0a202020203c78736c3a6170706c792d74656d706c617465732073656c6563743d226c75746563652d757365722d766965772d6163636f756e742d75726c22202f3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226c75746563652d757365722d6c6f676f75742d75726c223e0d0a2020203c666f726d20636c6173733d22666f726d2d696e6c696e652070756c6c2d6c65667422206e616d653d226c6f676f75742220616374696f6e3d227b2e7d22206d6574686f643d22706f7374223e0d0a202020093c627574746f6e20747970653d227375626d69742220636c6173733d2262746e223e3c6920636c6173733d2269636f6e2d6f6666223e26233136303b3c2f693e26233136303b4426233233333b636f6e6e6578696f6e3c2f627574746f6e3e26233136303b0d0a2020203c2f666f726d3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226c75746563652d757365722d6e65772d6163636f756e742d75726c223e0d0a093c666f726d20636c6173733d22666f726d2d696e6c696e652070756c6c2d6c65667422206e616d653d226c6f676f75742220616374696f6e3d227b2e7d22206d6574686f643d22706f7374223e0d0a09093c627574746f6e20747970653d227375626d69742220636c6173733d2262746e223e3c6920636c6173733d2269636f6e2d706c7573223e26233136303b3c2f693e26233136303b437226233233333b657220756e20636f6d7074653c2f627574746f6e3e26233136303b0d0a202020203c2f666f726d3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a0d0a3c78736c3a74656d706c617465206d617463683d226c75746563652d757365722d6c6f73742d70617373776f72642d75726c223e0d0a093c666f726d20636c6173733d22666f726d2d696e6c696e652070756c6c2d6c65667422206e616d653d226c6f676f75742220616374696f6e3d227b2e7d22206d6574686f643d22706f7374223e0d0a09202020093c627574746f6e20747970653d227375626d69742220636c6173733d2262746e223e3c6920636c6173733d2269636f6e2d6c6f636b223e26233136303b3c2f693e26233136303b4d6f742064652070617373652070657264753c2f627574746f6e3e26233136303b0d0a2020203c2f666f726d3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c78736c3a74656d706c617465206d617463683d226c75746563652d757365722d766965772d6163636f756e742d75726c223e0d0a093c666f726d20636c6173733d22666f726d2d696e6c696e652070756c6c2d6c65667422206e616d653d226c6f676f75742220616374696f6e3d227b2e7d22206d6574686f643d22706f7374223e0d0a09202020093c627574746f6e20747970653d227375626d69742220636c6173733d2262746e223e3c6920636c6173733d2269636f6e2d65646974223e26233136303b3c2f693e26233136303b566f6972206d6f6e20636f6d7074653c2f627574746f6e3e26233136303b0d0a093c2f666f726d3e0d0a3c2f78736c3a74656d706c6174653e0d0a0d0a3c2f78736c3a7374796c6573686565743e0d0a0d0a
\.


--
-- Data for Name: core_template; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_template (template_name, template_value) FROM stdin;
core_first_alert_mail	Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href="${url}">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.
core_expiration_mail	Bonjour ${first_name} ! Votre compte a expiré. Vous ne pourrez plus vous connecter avec, et les données vous concernant ont été anonymisées
core_other_alert_mail	Bonjour ${first_name} ! Votre compte utilisateur arrive à expiration. Pour prolonger sa validité, veuillez <a href="${url}">cliquer ici</a>.</br>Si vous ne le faites pas avant le ${date_valid}, il sera désactivé.
core_account_reactivated_mail	Bonjour ${first_name} ! Votre compte utilisateur a bien été réactivé. Il est désormais valable jusqu'au ${date_valid}.
core_password_expired	Bonjour ! Votre mot de passe a expiré. Lors de votre prochaine connexion, vous pourrez le changer.
\.


--
-- Data for Name: core_text_editor; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_text_editor (editor_name, editor_description, backoffice) FROM stdin;
tinymce	portal.globalmanagement.editors.labelBackTinyMCE	1
	portal.globalmanagement.editors.labelBackNoEditor	1
	portal.globalmanagement.editors.labelFrontNoEditor	0
markitupbbcode	portal.globalmanagement.editors.labelFrontMarkitupBBCode	0
\.


--
-- Data for Name: core_user_password_history; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_user_password_history (id_user, password, date_password_change) FROM stdin;
1	PBKDF2WITHHMACSHA512:40000:43b80b2a2e724fc14625f7706a6fab23:35749970001e10ba5defce846584b82bc533770d36098b0c3d9308792b26b33dac8fbc58c54fc2b821d1ba32f36b149cadc6194ce43c4771b5381c8feb7f6e9be5edf3ec321d81f8b78e85b5fa74b92765fbc218411146711237674706542f96f9138b9f05d32911e93cdeff08ef0871ac6f654e8998bee9cd139d1efaf6dbd6	2018-09-13 11:45:53.830712
1	PBKDF2WITHHMACSHA512:40000:ebef6173c49caf367af008139fc7e235:0a1f770019af0785678697e4b59277db2e6321d944f3bf00ac6b47537a9f54ab879c3e678c2e6789ecced0432f0b4207b63b9c9eadd0b567e2650d40542bbc9df83941ba6fb26e114b0e01e4c21aa4c6325117a787ecd2fb2087b053489f2a1848f3ca71295ae1cc9df37c61ad24f1d38852e6185a0510a2e1fc6c1087b94956	2018-09-13 11:46:29.863472
\.


--
-- Data for Name: core_user_preferences; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_user_preferences (id_user, pref_key, pref_value) FROM stdin;
\.


--
-- Data for Name: core_user_right; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_user_right (id_right, id_user) FROM stdin;
CORE_ADMIN_SITE	1
CORE_ADMIN_SITE	2
CORE_LINK_SERVICE_MANAGEMENT	1
CORE_LINK_SERVICE_MANAGEMENT	2
CORE_CACHE_MANAGEMENT	1
CORE_DAEMONS_MANAGEMENT	1
CORE_FEATURES_MANAGEMENT	1
CORE_LEVEL_RIGHT_MANAGEMENT	1
CORE_LOGS_VISUALISATION	1
CORE_MAILINGLISTS_MANAGEMENT	1
CORE_MODES_MANAGEMENT	1
CORE_PAGE_TEMPLATE_MANAGEMENT	1
CORE_PAGE_TEMPLATE_MANAGEMENT	2
CORE_PLUGINS_MANAGEMENT	1
CORE_PROPERTIES_MANAGEMENT	1
CORE_PROPERTIES_MANAGEMENT	2
CORE_RBAC_MANAGEMENT	1
CORE_ROLES_MANAGEMENT	1
CORE_ROLES_MANAGEMENT	2
CORE_SEARCH_INDEXATION	1
CORE_SEARCH_INDEXATION	2
CORE_SEARCH_MANAGEMENT	1
CORE_SEARCH_MANAGEMENT	2
CORE_STYLES_MANAGEMENT	1
CORE_STYLESHEET_MANAGEMENT	1
CORE_USERS_MANAGEMENT	1
CORE_USERS_MANAGEMENT	2
CORE_WORKGROUPS_MANAGEMENT	1
CORE_WORKGROUPS_MANAGEMENT	2
CORE_EXTERNAL_FEATURES_MANAGEMENT	1
CORE_EXTERNAL_FEATURES_MANAGEMENT	2
CORE_RIGHT_MANAGEMENT	1
CORE_ADMINDASHBOARD_MANAGEMENT	1
CORE_DASHBOARD_MANAGEMENT	1
CORE_XSL_EXPORT_MANAGEMENT	1
CORE_GLOBAL_MANAGEMENT	1
ELASTICDATA_MANAGEMENT	1
MYLUTECE_MANAGEMENT	1
MYLUTECE_MANAGE_AUTHENTICATION_FILTER	1
PIWIK_MANAGEMENT	1
PROFILES_MANAGEMENT	1
PROFILES_VIEWS_MANAGEMENT	1
SIGNALEMENT_MANAGEMENT	1
REFERENTIEL_MANAGEMENT_SIGNALEMENT	1
SITELABELS_MANAGEMENT	1
SITELABELS_MANAGEMENT	2
UNITS_MANAGEMENT	1
UNITS_MANAGEMENT	2
WORKFLOW_MANAGEMENT	1
WORKFLOW_MANAGEMENT	2
MESSAGE_TRACKING_MANAGEMENT	1
SIGNALEMENT_DASHBOARD	1
\.


--
-- Data for Name: core_user_role; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_user_role (role_key, id_user) FROM stdin;
all_site_manager	1
super_admin	1
all_site_manager	2
super_admin	2
assign_roles	1
assign_roles	2
assign_roles	3
assign_groups	1
assign_groups	2
assign_groups	3
mylutece_manager	1
profiles_manager	1
profiles_views_manager	1
unittree_management	1
unittree_management	2
workflow_manager	1
workflow_manager	2
ADMIN_Projet	1
\.


--
-- Data for Name: core_xsl_export; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY core_xsl_export (id_xsl_export, title, description, extension, id_file, plugin) FROM stdin;
125	Coeur - Export CSV des administrateurs	Export des utilisateurs back office dans un fichier CSV	csv	125	core
126	Coeur - Export XML des administrateurs	Export des utilisateurs back office dans un fichier XML	xml	126	core
\.


--
-- Data for Name: export_signalement_type_signalement; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY export_signalement_type_signalement (id_type_signalement, libelle, actif, fk_id_type_signalement, fk_id_unit, ordre, image_url, image_content, image_mime_type, profondeur) FROM stdin;
1000	Objets abandonnés	1	\N	0	3	image?resource_type=image_type_signalement&#38;id=1000	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e2000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070d3a05e6a402480000001d69545874436f6d6d656e7400000000004372656174656420776974682047494d50642e6507000020004944415478daec9d79781455f6f73f55bd64232b8124642701420231842510764450101514944546dc50711d19c571df70464414d171435114041514342020283b18c3921048086042488084ac64ebeeeafbfed15d45752728f3d3f7757ef3f67d9e3c81ee4e75d5bde79ef33ddfb35c490821f00ccff88387ec9902cff00896677804cb333c82e5199ee1112ccff00896677804cb333cc323589ee1112ccff0089667788647b03cc323589ee1112ccff00c8f60798647b03cc323589ee1191ec1f20c8f60798647b03cc3333c82e5191ec1f20c8f607986677804cb333c82e5191ec1f20ccff00896677804cb333c82e5199ee1112ccff00896677804cb333cc323589ee1112ccff0089667788647b03cc323589ee1112ccff00c8f60798647b0fe5f0cb5dbb81002bbddaebdaefe5b08415b1dc93d5dca7fdf90fe7fe8f32e84409224edff369b0da3d1e8f2be2a68b22cbb7cd6333c82f5ab822584c066b361369b7f53e82449c2603078a4c323586d0fbbdd8e24494892a4692945519065070250054a511484102e5acc333c82f5ab431524bd705d4c5ba91a4b0881c964f2488707bc5f4c65090cb201090904d86d0a08c7eb08b4d78562d7de331a8c186583e3339ef13f1effd5badf6eb7231b0cfc72e204cb962de3c89123e4e7e7535b5b8bd56a25242484848404929292484e4ea677efde242626227bf095c714feda385f57cf82050bf8e4934fb0582c0e419365ec763b2693c9857250b15850501043860c61cc98315c317a944742fe93054b5d50f5df9a1d9665cd6353df77f1ce0c32b22463b15a309bcc586d564c46133805c161d5ecc892e36f050edac0203b34ceb563c6525050e0a0139c78cb6030383ee3fcad0a944192686e6e262c2c8c8a8a0a8c4623ed0202983e7d3a77de7927dedede08e9021da15ecb33fe04c15235813b68fe35f0acde8e2449d8ec8a1323b9724f56ab1593c9a4fdbdfb22b7b4b4f0e4934ff2c5672b30994c8cbeea2aa64d9b46bf8c0c84dd4e696929a74e9d62cf9e3decd9b387ad5bb7623299f03299f0f1f1419665ba76edcaeebd7b01080e0ee6fefbefe7961933406a7daf6dddfbffef5cd8ff758da5928faa86d00b88aaa554ada5fea80b23cbb2e3f3062308019284b0db3976ec18b9b9b9e4e6e6d2a14307bcbcbc484a4a2235359576fefe3c36670e9f7df6192683818f3ff984fe030638bec7a9a15017dd794d8460fdfaf56cdfba956fbffd96dada5a4c2613975f710576bb9d8d1b3762b7db99387122fff8c73f4096b4fbf610aa7f9260a9dac55d43298a828c8424cb28361b8636345ac19123949494909797c7b1a347292e2ee6f0e1c3da350d06038aa2b4c24ceae8d2ad1b4f3df514b1b1b1848686627292a302a76641c2ae280e2137184008ced7d5f1c61b6fb078f16284108cbffe7a060e1cc8430f3d84c96462ead4a93cf3ecb3ced973dd401e8df5ff48b0dc4d542b565b38b448767636c5c5c59c3871829c9c1ccacbcb2929294108818f97172d2d2ddae2198d468740596d18cd26ce9f3f8fafaf2f56ab55135c9587b2e9c234369b8de4e464a26363484c4c2431319188b07032faf777603f454136181c5a4d9659fdc517cc99330721046bd6ac213b2787c71f7f1c1f1f1fbefbee3b62e3e22e08681b42a4c7951ebae10f1e06490601568b0593d98cd160a4e0c811b66fdf4e414101870e1d22373717b3d98c2ccbb4b4b460329968d7ae1dfdfaf523252585eaea6a0a0a0a387af42832d0d4d4842ccbc4c7c7d3a54b171a1b1b292d2da5b4b4545b48455158b46811c1eddbb379f366aaabab292929a1b0e82807f37231180c9a09b35aad748e8b272a2a8aa4a4243a76ec487a7a3a23478d62d6c993bcfefaebfcf0c30fdc75d75dbcf9e69b9c397386356bd670dffdf76b42ac7702f48e8987c7fabfa60f25149b8d7dfbf6b178f16276ecd881c562c16ab53a3097cd869f8f0fbd7bf766c48811a4a5a5d1a54b17fc83825c4c8d100209899ba74d63d7ae5d646464f0e9b2651734a1d58ad16864c58a153cf9e4938c1c358a2baebc1261b7d3a76f5f149b0dd968c06ab5d2d2d2c2d1a3473970e0000d0d0decd8b18392921276eddac5ae5dbb9024098bc582979717d8ed1a2ec460e09a6baee1fdf7dfc76ab5b6a2293ce6f0ffa129acafad63f6ecd9fcf8e38fb4b4b4101f1f4ffbf6ed3978f020168b05b3d1a885508c46235dba74a1478f1e74efde9d8103079298d44d03fe369b8d7beeb9874d9b3621143bd1d1d174ebd68dcb2ebb0c8093274ff2e5975fa23831932449f4efdf9ffefdfb3360c000baa724d3ae5d3b17330d6030183461283c52c0f1e3c7292e2e7698e453a7282c2ce4befbeee3de7befe5adb7dee2e5575e21242484a4a424baa724131d1d4d727232898989848484784ce11f25588aa2681e9c63462f786fb366cde2fbefbf272d2d8d79f3e6111317abfd5d5d5d1d790773397efc384545451c3e7c98828202eaebeb9165198bc582d168a44f9f3e0c1932847efdfad1b75f3f56af5ac5b7df7ecbd6ad5bb1d96cd8ed767c7c7c686c6cc46c36337efc7832323228282860d7ae5d1c3e7c58f344232323494a4aa2478f1ef4efdf9fc8c8483a75eaa479869a49733ecb179f7fce638f3dc67df7ddc7fd0f3cc0fc575ee18d37de20303090baba3a2449c26834d2d8d8889f9f1f2693895ebd7ad1a74f1fa2a2a2e8debd3bc9c9c917bc501d9643081461d7f0e6c5a813fd7baab0aafc9d4192ff7b4da1dedd563d3d84e0abafbe62cd9a355c7df5d5bcfdf6dbdae4daed76144521202080cc8103e9d7af1f46a7d7a8d86c94959571e4c8110a0a0ad8bd7b37dbb66d63fffefdd4d4d4101010407a7a3a43860ce1d65b6fc56432b16bd72ecd4b4c494961c4881148b2ec422decd9bd9ba3478fb27fff7ef6ecd9c3860d1b0030994c3436363274e850020303e9d1a307111111444444909292427676368aa2d0a54b17ed59cd6633b7df7e3bf7dd771f3b76eca0b0b090d3a74f73e8d021f6ecd9c3f6eddbd9b16387c379706ae3a14387121414445a5a1a494949f4ebd70f49963522574fc9e8054d75780c06436b0c27c9ffbd1a4bdd41ea2e53b110c0a08103696a6ae2871f7ec03f200087bc5d60d915c5417e6a5c526b020c24071d505050c0cf3fffcc962d5bd8bf7f3f0d0d0d58ad562449a26fdfbe6464643078f060d2d2d230188d9a67a7fed66b0ac566c362b1684256565646414101070e1cd034af9ed835994c7cfae9a764f4efcf474b96f0f4d34f63369bb9e79e7bb8ebaebb301a8d188d464d38f2f3f3397af428252525646767535a5a4a7171b126c82a3eebd1a30749c9dde9d6ad9b66fadd4d347627af67905bbdf79fcefcff2ec1d2ab6f6d51143b070f1e64fcf8f1dc70c30dfcf39fff443885ca7d22f438444f90ba938e7afe4b08415e5e1ebb77ef2627db216c00cdcdcd188d46323232e8d3a70f999999f4e8d1c3c1a41b5c05d866b53ab4a48e2005f8e9a79f282b2ba3b8b898ddbb77b377ef5e6459e6a38f3e62406626008f3ef208cb972fd7842431319109132670f7dd77bb7271ce67292d2de5f4e9d3545555515e5ecee9d3a7c9c9c961d7ae5d184c46edf96559263d3d9d71e3c63162c408c2c3c391045a40dc2e5c37f17f35c6d2f3462a60b6db14162c58c0a2458b58f7dd7a929292b4cf353737e3eded8d55b121cbb28611f469c117bbbea228adc342ce3b3f9497c7cf3fffcc9e3d7bd8b66d1b75757598cd66144521313151c33da9a9a974eedc5933bdadf0a2ea48984cd81585abaeba8ae3c78f336bd62c1e7ce82117e2f68b2fbe60efdebde4e5e5a1280aeddbb727393999be7dfb6a54c992254b58b26409d5d5d50821c8c8c860ecd8b18c183182c8a8280a8f16b26fdf3e727272d8b66d1ba74f9f460881d96c263131915b6f99c1f5d75fef30f566b3e625ff6fc872fddda6d0dddd9690983471223ffffc3345c78fb9e02f83c1800014670cd07e11a0aa0a9ac16070788fba74623d1e5135a52a7caa60161414b065cb160ee5e6b163c70e6a6a6a30994c582c162449223333933e7dfad0a54b17468c18818fafafc6fe6be01ad8fcfdf7dc76db6d0821b8f3ce3bb9f9e69b898c8cd4365179793903060cc0dbdb9bf4f4740e1f3e4c6d6dad4b70dd66b391909040bb76edc8cfcfd7ccd9a0418378f99579daf500f2f3f3d9b3670fefbcf30e67cf9e454622323292a79e7a8acb478e74dca3e97f47a6d31fe215aa8bac9ac2ae5dbbd2af5f3f967db6dc258353fd22352341d2098a8b67d98609d487867e6de863914271f050858585ecd9b3875dbb76515454c4f1e3c735d32c49129d3a7522333393b4b434860e1d4a44a74edaf53e5fb992b973e7525b5b8bd168243e3e9eabafbe9ac99327f3e4934f929595c58d37dec8cbf3e6615714eebdf75e2db66872c647ad562bbd7af562d8b061040606b265cb167ef8e107da0505f2dd77df111111e1b239655966cf9e3d7cb66c3959595934363672dd75d7f1d24b2fd1cedf1fabcdead0f8ffed18cb257c23a0737c3cd75f7f3df3e6bfe282a50460531c4165d55dd65fc35d036a7fd7461684fa9e5e90f4f8430b5eb7e1e6979797b36bd72ecd93cbcbcbd3f2e10d0603e1e1e10c183080cb2fbf9cc1830703b072e54a56ae5cc9f1e3c7696e6ed636c2a04183f8f8e38f4192786cce1c3efdf4533a76ecc8c2850b49e9de9dad5bb7b27efd7ad6ad5ba7dd67727232797979f80707f1d1471f919a9ada0a470a21902599437979cc99338743870ed1bd7b7756ac5841bb00ffff7c95257ec7501445082184dd6ed75edbb563a7888f8d130b5f7b5d58ad56ed75fd678410c266b30945d8855d08ed47ff7f45d8b5cf5dca3db8ff5bfd4ef5c7fd35fde72b2a2ac4c68d1bc50b2fbc20c68c1923ba74e922626363455c4cac888f8d1377de7e87f8f2f32f446d758da8afad13cb3f5d26c68dbd5a3cf7ccb342287621ec427cbdfa2b1113152d2eeb992af2f30e391fc2f19edda6880f177f203ac7c58bb89858111b1d23e263e3c44d374c14a78a4bb409b0db149767d0dfff9c3973444c4c8c9879c79d1726cc397e6d9effacc11f79318bc522b2f7fe2462a2a2c582f9af6a0faa7f70f709b0d96cc266b369ff779f1875a29b9b9bdb141afd6754216c696971114845515a095d5b02aade67454585d8b0618378ecd13962d890a1222e2656748e8b17b1d131e2ee997789cd9bbed78446fd99f1975b447c6c9c187fed75a2aea65628569bb0db149193fdb3183268b0888d8e113151d1e2b147e7888f977c24d2522f135de23b8b94eec9e2938f970a9bc5aa098b7e3ef48273c71d77882e0989e2ddb7df118ad5a63d93fbb3a973fabf56b06c369bb0582c2eafeddeb94b24c47716abbef8b2cdbf71111c7bdb3f769b225a9a9a45454585282a2a12070e1c10f9f9f9a2b2b252d86c366da2f5c2a8172a7781d27fa7faf77aa1bca8505b6d42d885c83d70503cffec7362f0c0412221beb348ec9c2032faf6139faf58a90958e3f90631f6aa312221beb3e899d2437cb8f80331f9c69b444c54b488898a168fccfe9b385d562eac2d1621ec42d4d5d48a179f7f41c446c788ce71f1e2ee9977898a33675b6958fd86a9a9a9113d537a883ee9bd45e3f90697f7dc35f79fadb9fe9058a14a2300bcf6ea02162e5cc8d2a54b193878908b57a77a71b5b5b59497977324ef10c78e1de3e8d1a3545656525353435555154d4d4d0e8212414040007e7e7e040606623299686a6a222222826eddbad1bf7f7f7af7ee8dbfbf3f168b45c357170b895c0c23baa74e5b2c16472ab21bfe9365991d3b76b07af56abefaea2b24019d3a75e29ffffca7964cf8d0830ff2f5d75f3b9c03939171e3c6317bf66ccdfbd33b3b06d9c0b7df7cc3e38f3f4e757535e9e9e92c5dba9476fefe08bb1d21399c162f2f2f0d4b7eb1f2731e7ef8611e7ef861ee7ff0011732577546fe2bbc427780bd68e11b2c58b080e5cb97d3af7f86f6398bc5424545053ffdf4136bd7aee5e0c183d457d7e0e3e343686828e1e1e1040707e3e7e747404000818181c8660745505757476d6d2d8aa2f0d5575f515f5f8fd56ac5d7d7970e1d3a101717c765975dc6800103888888a07dfbf6848585b9d01417730cf4efab9f5105535f6ca145169c84f0b163c778f2f127c8c9c9a1b9b999bbefbe9bbffffdef20497cb77e3d555555640e1a486c6cac8b20eb3d3f35ae5a5850c0c4891369686860c28409bc3c6f9e83b4952597a88623e14362f8b0619c3d7b96ec9c9ff1f1f171a16154a7e24f0f82ff1e75e76e628410e2f505af89c8884e227bef4f9a593bb8ff80f8eb830f891ec9292221beb3183e7498b86fd6bde2bd77de159b377d2f8e1d2d12a525274559e9295157532bac2d1607e6d0e10bd5acd5d5d5094551c4962d5bc47db3ee15519d224587f6a122ac4347d1bf5f86183c70909874c344f1cacbf3c40f9bb788b2d2539a89d5708cf3bedc81efc59c02f5d9f4b8c566b309c56a131fbcbf5874494814899d13c403f7ddeffa5dbad1d4d4d4eada7aec979f7748f4ba2c4dc4c7c6898ddf6d7001e72e4e925d88975e9c2b12e23b8b1f7ffcb11596ba18eefa5f07dedd1766c1fc5745725277b167d76ef1c3e62de28609d78bd8e81891daa3a7b879ea34f1e5e75f88b3a7cfb84c5c5bf8c6dd936b73e115bb686a6814374cb85ef8f9f88a4766ff4d2c7ced7531e5a6c96250e64091daa3a7b8e6ea71e2f505af8982c34774eea76381da5a14fd77b9837e3dbed363c415cb3f139de3e245978444f1c1fb8b356cd616805631602b1c65b18a5d3b768ad8e8183174f01021147bab7b51052bf7c041111f1b279e7efa6961b55aff7421fac331961ea3a821998f3e5cc2e79f7f4e707030bb77efc6c7c78789132772d34d37d1b97367d720b13e675c9787aed9695c4be4dd83de880b71bfa51f7fccb265cb48484860faf4e9343737f3e38f3ff2f3cf3f73e8d021dab76fcfd8b16319376e1c49494978797969c15d77b3e1ce295d0cb708c519e4168255ab56f1b7bffdcdc1d86fde4c6c5c1c4817885df7b8a8fe79f49cdbd42953d8b56307ebd6ada35b4ab24b584b9224b03bc25bc9c9c9a4f7e9cdf2e5cb5b7178bf76cfff11a650eff1a9bbcf62b15cf0a29c3b497daffa5c9578ea892745cf941ea24b42a278ecb1c7c4b163c784dd6e6f45095c8c6f6a4b3bfdda7bea752d168ba8afaf17f3e7cf1713264c10e3c68d13870f1f16fbf6ed13efbdf3ae187bd5181117132b06650e14ff7af32d71e2d8f10ba651b1b7c9c9fd3b70c06ab58a175f7c51748e8b17936e98e8a291dba250f4cfa3ffbdf1bb0d22363a462c7ced75edb9dccd9bcd661353a64c117131b12e66fd7ffa0c7fba29bc1819a9288af8e5975fc4fdf7de27a223a3c435578f131bbfdb20aaabab2f6a3a6d36dbafaaf04b51efaa90ba4fe4a953a744fffefd85979797d8b06183b0b65844c92fc5e2cd371689d41e3d4562e70471eb2d33c40f9bb788e6c6261721f877f91f955fb3dbede2fcf9f362f0c04122363a46ecd9b5db65732a8ae2b229dd37af46a1d8141117132ba64e9ed24a80f566f8ce3bef14f1b17117f8b4ffc1fcfd6982a54e82faf0ee3b4cdd7939393962f2e4c9a25bb76ee2c9c79f10c78b8e690febaeaddc5962f57d77a2f45235859ebf52174f7d6df6ecd9c2cbcb4bac5fbf5ee41dcc15578dbe52dc79fb1de2a649378ac4ce0962f8d061e2d3a59f88cab315ad76fba5dc877e7ed4e7fa62e5e7a24b42a298f1975bda5c68fdf3b789b7ec424cb969b248edd1b3d5e7d5f9511445cc9f3f5f74494814fb73f66973edae09ffe335565bd2af4ecad6ad5bc5e5975f2ed2d3d3c5e2c58b1d3b5805c81701c67a42b3adefd24fe0af917dbfa55d6c369bf8e9a79fc490214344dfbe7dc59aafbe16769b229a1a1ac5920f3e147dd27b8bf4b45ee2ddb7df115555552e9edbffd479117621d2d37a89ce71f1e2e4c9936d3a226d392a5a84a1b149fc63ee4b22363aa6556441ef50bcf9e69ba2735cbcd8bb7b4f9b1ee49f3d7e93e8d0b2169c815115a89bcd66d67cf535b3fffa30e7cf9fe7b9e79e63c68c198e3c28bbe2522dacfe4dab80b55b829fea00a8449f2ccbad12015dcacb9c44a3fa1deaf7a8599a068381f4f4745e7df55507e0ed918224cb787b7b131717c7b469d3080b0be3b5d75ee3bdf7dea3b9b959cbfdbaf44224d7e7b42b0ad75e7b2d9224b179f3662dd3559f47e55e58ab07da5edede787b7b2349123b77ee74c953d3cf517373b3cb33ffa70df9b7bc3e5500f459a2369b8dacac2c9e7ffe79dab56bc782f9af3276ec5817a1511f5af57c54d24e9d5c77d2d2bdf9acfbc45fac9ccabdb9879a026cb7dbb56bf6ead58bd9b367337cf870ba277777a43cdbedf4eedd9bc71f7f9c6eddbaf1f1c71fb362c50aaaaaaa2e391d452b63737e972ccbc80603a3468d4208c1dab56b5d527ddaea24e842983a47545414b22c6bfd29f41b539d47753d8cce1c32fd1afd473410fa9f049ab3b2b2c4c08103c5c81197bb04647fcb34e94d406363a3686e6e168d8d8da2a9a949c32956abd525fe7531d57eb1cc05fd3db8250188a8a82871c71d77b4e2a1bedfb8498c1e3d5a0c1a3448ac5cb952343636fe5b26c5058b3aaf191b1d23ba76ed2a9a9b9bdb2492dd4d9bf6ba6217bb77ee127131b162e7ce9d1735bb8b162d123151d11a6776b1e0fd9f358c971ab2517f6fdfbe9d79f3e62184e0c5175fa45f46868bf6d0381a04d845abf042636323b5b5b59c3d7b96caca4ace9d3b47737333eddab5c3d7d7176f6f6fc2c2c2888c8cd4cae9d51f778de5be3b55ada569108341cbfb521485eddbb773cd35d76815d73212ebd6ade3fdf7dfa7a5a505455158b972259191910c70c6fe7e4ba3ebeb1e4d2693962e9d9999c9f69d3bc8cdcda577efde5a584b0d33e9cd9a5e7be9c3327bf7ee65c08001dafca9f95c76bb9deddbb73b2aba9d3966922cb984d7feec9a46e3c582b5762789a9129276bb9d83fb0ff0d6a237693cdfc0f3cf3f4f5a7aaf0b3da9740976eaa209e168c92823515b5dc3be7dfbd8bd7b377979799c387182dada5a4795b17382fdfcfc686c6cc4d7d79776edda111a1a4ab76eddc8c8c8202a2a8ac8c8483a8685b910a9eec226cbb2a3fd9173c2d5bc7a5996898d8d65dcb871dc7efbedbcf7de7bd4d7d7d3bb6f1f92939309080860c18205ac5dbb96555f7c497c6c1c616161c84643ab322cbbdd0eb284ac33bf4667f1adbaf8fdfa67b077ef5eb6fdb8953ebdfba0280a66b3b9d575dc83e0faf957db55cab28c229c0287842cc9c87667fc128750b5c262929e6afe93044bdf3e48bf40da0d4a121515152c59b284a3478ff2c0030f307cf87064a3a15552bf8a29d4c93a5952c2f2e5cbf9f6db6fa9aeaec6c7c787c4c4447af7ee4d70703041414174e8d001b3d94c4040007575751415156925546bd6ace1cb2fbfc4d7d7971e3d7a3076ec58323333898a8e6ebb9843d7784d2d97379bcdda679f7ffe79121212888f8fa76bd7aefcf8e38f20a0aeb616bbdd4e4c4c0c3b76eca077efdedc78e38dadb4c585aecbad055b2d039324898484042c160b478f1ed572d5dd35967bd58d9af1a0fe5faf756449d6a21336ab95c3870f131111a169677da1892ccbd811fc99a26574ef49d596baafabab63d9b265ecdcbd8b4993263165ca1447a58b84f660ee5e5e4343031f2efe80cf3efb8caaaa2a7af6ecc9cc9933193e7c381d3b76d4164c130683014996b13ad35f6c361b8aa2505252c2ce9d3bd9b97327f9f9f9cc993387ae5dbb326edc38468f1e4d7c7c7cab02037db1aa3e9ca22ee23befbcc392254bf8f4d34fb58287a79f7e9ab367cf3278f060befefa6bb2b2b2484f4fa75bf72497466f9a10384dac2ad8aaa0a873d9b3674f4c26139595955a59987bb6853e6b417b4d36d0d0d0a0cda55e0b4a4e2b603499a8afaf27b9470f976be89d983f575f3905eb628d2d6459e6fcf9f36cdbb68de5cb97939898c82db7cec0cbdb5bdb85ee7f67b158d8b2650b6fbcf106c78b8e317cf870eebfff7eba76edeac06146235667b58cd56a455114ad46cf6eb76bb8ca6c368324d12d29896e49494c9f3e9d23478e909595c5e6cd9b79e38d37c8caca62e6cc995c75d5559af6540548bfc8ee553c575c7105f3e7cfe7c489130ec13418187ef908fcfdda91949444595919fbf6ede3fbefbfa75bf7244d0b6b384a5789ecae35d5dfd1d1d14892447676b686af24a7a0eb0554af09d57f9f3a75aa9516b4e3c8815714458b2b3636365eb446933f3956686c4ba8b4d7ec82f25365ac58b1026f6f6fa64e9d4a7878b8a317a87382f57f5f5b5bcbe2c58bf9f8e38f090808e0d5575f65d4a8515a1d5f755515b9b9b99a99abaaaaa2b9b9998a8a0a2c160b818181c4c5c5d1bd7b77a2a3a3e9d8b1232121215ad3b4941e3d48494961cc9831ac5fbf9e6fbffd96871f7e9813274e3073e64cbc7cbc5d12fddc5b55aa02a7280a83070f66e9d2a53cf1c4134892c4d8b1631df8cc6265e8d0a1ecdbb78f4d9b3631606026bd7af57231f356b5e095d61d67d4df0683818484048e1d3be6a2adf4737cb1bacccacaca567963568b052fb31746a391e6464722646060e07f46c0f96282e55219a2b3eb353535646565b1efe71c6e9c7c13575e79a5c649a97840adc7abaca8e0a5975e62d5aa558c1f3f9e871e7a88e89818004a8a8bd9be7d3b9b366d62dfbe7db4b4b410131343686828a1a1a14892447575353535356cddba9555ab56213b89ccbe7dfb929999494a4a0a09090984b46f4f8aae23cda2458b58b87021f5f5f5cc9a358be0f6212e5843d5047a2d21491253a74e65d6ac597cf3cd37ecdebd9bb973e73a4ab6bccc0c1e3c98fcfc7cd6af5f4f767636bd7af5723133269309d106d7e6bec8212121949494907fe810ddba27b934d6752757f5afa97c54525292b61e7a8ff0f0e1c3582c167af4e8e122d02a6f68341af9b3992ce3c5d2772d160bd9d9d9ac5ebd9a8e1d3b72f9f0112e5e8dda5bc060345275ee1c2fbef8226bd7aee59e7beee1eebbefa65dbb76545755f1cd37dfb074e9520a0b0bb9ecb2cb983e7d3abd7af522373797efbefb8e73e7ce316dda34264f9e8ca228d4d7d7535858487e7e3e797979e4e5e5b173e74efcfcfcc8cccce4baebae232d2d8dc0a020fa0f18405454146fbef9264b972ea5b1b191471e7984c0e0204d0ba88ba92768cd6633d1d1d1844584f3e4d34f71dfac7b35413c71e2042fbcf002e7cf9fa7b4b4942d5bb670e59557121d1dad2d9c414763e805cabd2d406c6c2cdbb76fa7b6b61683c1d0aa36d27dceed763bb2aebe32343454c385aa430270fefc797c7c7c30994c2efd1c5c3262ffe46e34c6b6420b168b85fafa7a366ddac4e9d3a7b9e1861b4849497135334ebfc866b5b268d122b2b2b2b8edb6dbf8dbdffe86dd6ee7d0a143bcf4caee510d0000200049444154d24becd9b387b4b4349e7bee39c68e1d4bfbf6eda9aeae66f5ead51c3f7e9c989818befcf24b2222221871f9e5040606d27fc000faf7efcf962d5b1042101515852449ecdab58b8d1b37327af46866cc98414a4a0a51d1d13cfae8a3d8ed76bef9e61b222323b9eb9ebb5d26597d2eb55b8c3a860e1d8a8f8f0fb7df7ebb8673828282b8e28a2bc8cdcdc5281b686e6921272787c8c8c80b9eb2ee9a176b3d2449126161615a1766d594eab92f77c1521405d978c1c43635355d00e792844db16132181d6d0a9cad31d5f75573ef4e5bfca9211dabd5aa4d9a62b5613699d9bce97b76eedcc995575ec9ecd9b3097276d9d36cbf7078834b972ee5934f3ee1e69b6fe6a1871e0249222b2b8b7beeb9879292125e7cf145962f5fcecd7f994efb0ea1204b9ca9384bd9e9728c4607f83f79f2245555551ab8b7b4b4f0c1071ff0c8ecd96cf9fe7b8cb2ccc4891359b46811a3468de29bac6fb9ffc10758b3660d0041c1c13cf8e0830c193284c58b17b36bc74ecd8372f770f51e59bf3e7d397c28df6591828383993469128f3ffe3863c68cc16e53c8c9fe59d3783a95e0420c5f4a6f0b7d4ebd1e6cab736f521b95a871439f0b051d92fa9dc2715d4508add98a16da71de9fdd6e77b493727b6ed501717f5dd18584dc3ff3bb044bdd49eac29e3d7386fdfbf76b5d57d6ac59434b4b8b8bc76890647efcf147162e5ca87515f6f6f161d5975ff2fcf3cf131111c16db7dd46505010e5e5e55a93344551080d0d25232343abae193f7ebc8361763e586969299b376f469224626363397efc387bf7eea567cf9ebcfcf2cb3cfffcf300fcfdef7fe7d34f3e0120a2532766ce9c496868286fbdf51675ce1e0aee450cfad1bd7b771a1a1aa8aaaaa2a8a8880d1b3670e4c8116459c6d7d797f8f878244972746d3e76cca50bcea530db1d3b76a4aeae8e63c78e69c16855635dcadf5b2c1697c557cd68535393a395a50e1bbb270ba8a4b67b84425d83b62c95de53b5582cbfcf14b6627ded82cd9b37939393c3b871e3b8f5d65bb9ecb2cb30988c2e15236565652c58b0808888089e78e209bcbdbdf968c9125e7ffd75525353193c7830df7df71d870f1f26292989fb1eb89f01030620cb32a1a1a14c993285ccfe03b434dbf6a1a1da4d858585317cf870ce9e3e4d61612141212184858561b3d9f0f2f666d2c449c4c4c4f0dc33cff2c61b6f101a1acae82bafa4676a2a13274e64f1e2c5ac59b3869ba64c6e7301f541e03e7dfa909191416c6cacd6d42d292989f2f272366edcc8f9f3e71d44efc993242424b8a44affd6e8dab52b3e3e3e5457576bdaf96227bab6b9ebf58e92ca9fd96cf8fafa6a64ab2a707a9a455f65a467f70d06032693c9b53ba0dba6532915f7731dff6dc1d2f33d42084e9797b363c70e144561c488110e575b17325027262b2b8be3c78ff3c4134f101f1f4f4e4e0e0b162ca067cf9ecc9e3d9b37df7c93eaea6afaf7efcf912347d8b66d1b696969f8fafa028e7abcb0b03057d6d96922fcfcdb31fefa09188d46f2f2f2e8debd3b63c68cc1af5d3bad0373bf3e7d99376f1e77df7d376fbffd36717171744b4ae28a2baee0a79f7e62ddba750c1b319ca8a8a8367191ba43434343b9f5d65b993973266161611ae17bfaf4694e9d3a45424202757575e4e6e63278f0604da85a5a5a34ad71b1a13a392a87a57e775bf8ea62294bee384eaf85dde3b8ee84ab0b73af531e2a1e539f41ef80e84ffcf8dda650eff6e6e7e7535e5e4e7272321903fa2319642dbf49fddca993a52cff741923478e64d2a449545656f2fcf3cf131e1ece9c3973e8d1b3274d4d4d9c3d7b96aaaa2aa2a3a3494c4cd476987b673a77ef4d75d5a7de3c8da79e7a8a1b6fbc91b0b03084dd8ec96ce65c6525274e9cc06c36f397bffc85c2c24256af5e8d708664d2d3d3b5cec8aaebae5f20fd0e9d366d1aefbefbae8621d5cdd3ab572f5e7bed35aeb9e61a9a9a9ac8c9c971c152bf2554aac9d2e3b27f17bb6864ac4e6824592638385823a3f5f7a47f56bd29b4d96c646767b375eb5676efdecdfefdfba9aeaec6cbcbcb653eda329dbf3b56a8b2d6bb77efa6aeae8e7efdfa111818a8917b369ba3599aa5b9858f3efa88e6e66666dc762b8ab0f3caabf329385ac8bc79f3e89e928c4db171fdc41ba8a9a9e1cc9933dc7efbed8c1d3bf6427b21270670cf5850a900b5b12d807f608016104740d9a9532c5ab4882d5bb6101212a23532dbbf7f3ffbf7efa757af5ef4ead58b98981876efde4d464606a1a1a16d129976bb9dd8d8583a76ec48616121292929d4d7d71310100080af9f1f1d3a74c0d7d7973367ce505353436060e02563242f2f2f172d73a99a4a8fb1f4213395758f8989c16c366b7df465c9d13eead8d1222a2b2b696a6ad288e803070e50565686c964c2d7d797baba3aed1e6ebbed362ebffc724e9e3ca935173e74e810fbf6efffdd2121a33e9c70ecd8310e1c38405050103d7af4d0da57abef2b561ba5a5a56cd8b081912347929a9acaa64d9b58bf7e3d93274f66f4e8d19a87327af46812e23bd3dcdc4c4242825682af57db7a3baf3faf5963a925d75045635323d9d9d9ecd9b3077f7f7f4c2613d9d9d9a4a6a6929f9fcfdab56b494d4da56bd7ae4447476b0e884ac2bac7f354b33075ea543efcf043ce9f3fcf4f3ffdc4be7dfb54b7095f5f5f02020238537196d2d252828282da24432fe615ea85c325a5e7120453c54e7abc842ca8aeaea6a5a585cf3efb8c850b176a1b55cd8c6ddfbe3db1b1b1f4eddb975b6eb9852e5dba10141cacb5af5414856ddbb6317ffe7cde7df75d222323b9e9a69b9832650a89898917e2ad06f9f70996aa4eb76ddb46757535c3860d23323212e1fc0235286cb55858bd7a352693895b6eb985aaaa2ade79e71dc2c3c3993469924b84dd6c363b98637dbf2a6758c56eb773fcf8714a4a4aa8aeaea6b9b999baba3a828383494c4ca45bb76e8e127b49d6da235aad567c7c7cf0f5f5c5cbcb8bdada5ac29c2934717171c4c5c5515050c0993367888888202e2e8e1fb6fec8e9d3a75b057eb5a0b724e1ebeb8bcd6663fdfaf5dc76db6dbcfbeebb9ab65039a3c0c0406459a6b8b898eeddbb5f327857ad801eb7a820fb52eb36f57367369bc12e080c0cc46c36337cf870aeb9e61afa3b3d6a97033c75a05c7f5e912449186599e1c387337cc4081e7de411366cd8c0a851a3e89694a479e6bf176319b5dc26015b376fa1b1b191b4f45e048586200192aeb9596161211b376e64f0e0c1c4c6c6b2e6abaf28fda5982953a660696e61f7ce5da4a4a4101814e4380dc26474351b025a1a1a59b972259f7df61965a74f63b7db090e0ec66ab5d2d0d040c7f0305253539930610283070e4236181c80ddcb81cffaf4ebcb35d75dcba79f7ecab113c799366d1a578c1e457dc379de78e30db66edfc6f5d75f4f42974402fd03283ef10b4d0d8d78f978b70aa9a8233d3d9dd75e7b8d61c386b9645d9cae3c8b7f6000212121982499c2fcc38c18361c1f3f5f8d20be14c1503d33f7f0cdc54242fa6e83ee18589225bc7d7db023e8181e46ff4c6722a0d1a0ad93706a7b990b590ead5a4c3aaff9cf792f535353c31d77dc41545414002929293cfec413e8e3428a5d6985897f33bb01bba0e4975fa8aaaa22292989d8d85864a9b5b771f4e8516c361b63c68cd15a6d07060672aeba9aa79e7a8ab2b232a64e9dca2db7dc4250703056c5a685158c4623470b0a79f38d37f8f6db6fb1dbedc427243063c60c323333a9afafe7975f7e61e3f79bf8fefbefd9b163077fb9793a37df7cb3438d3b1fc6dfdf9f9933673275ea549a9a9a080a0ac26c3613121282d56ae5c89123984c26222222080d0da5b8b898caca4aa262a25d34977e91333333a9abab63c78e1da4a7a7a3280a7bf6ece1c597e6e2653223143b66b399c6c6460787e4e3adb5f9fe0352c35b81659bcde6b010ce8c0ff745549d2975915b25090abb8bf0fcdab0d96c5c79e5951c3972848686069e78e2890b1c99ae9db9fba674ef0d7b51af70efdebd9c3d7b969e3d7b121717d7ca3dafa8a860efdebd04050571d96597515858485e5e1e014141ecddbb97808000121212d8ba752b274f9e746004c30536f8506e1e73e7ce65d5575f613018e8d8b123e068e81a191949cf9e3db9e6da6b79e30d47b79ad0d050162d5ac4ca952bb1b4b4681e95bafbfdfdfde9d8b1a3c63877ebd68da8a8288a8b8bb1582c848787131a1acad1a347a9a8a87021365593a46e183f3f3fdab76fcfb66ddb282c2cc466b33168d020962c59c2c30f3fcc55575d85d168e4c89123b4b4b438cc995de18f1c1a661342c3a3eae1556a25928a8f6c361bb1b1b1980c466c16ab4666aa852e0649bea438a18a9dc75f3f8155ab5661b3d9d8bf7f3fe1e1e1ac5cb182471e79842fbff8c2e5fe5482f5b7782e599df0ecec6ced86fdfcfcb46c45752795959571fcf871060d1a84c16060fffefd2842d0ad5b377c7c7cf0f2f2a2a1a181e0e060028383b4244083c1406565259f7ffe39d9d9d90c1f3e9ccc418308080a2228288893274f525d5dad35fcb7d96c5c71c5153cfef8e3040707b362c50a7272725ac5dbb4b467c971bc6f54a748e263e3a83c5b4159e92902fd03080e0ea6b6b656cb5b52dcf083de44198d464e9c38c1830f3e484e4e0e42083a76e848464606a9a9a998cd666a6a6a34365c1f14fe3da315932f4944444420cb32478e1c71c183facd60341ad9bc7933469309b3c9dc2ab47329d4865e13b6ef10ca3ffff94f5e7ef965860c19c2175f7c41747434494edca5777ef4c4eaaf6aacfafa7a8a8a8a888e8e76690fad57d1e5e5e5d4d5d5d1bf7f7fcd6c444545692e6b5e5e1e56ab9519b7ddaad96af51a1bbfdbc0dab56b993061020b172e64d4a851d4d7d773e6cc19929393292f2fa7f8975f5c68868103073273e64c4e9e3cc9f2e5cba9a8a8685534a1a5f75457a3280a919191b4b4b470ead429daf9fbd3a14307c0d118aeadd0863efe171e1ecea04183c8caca62c08001ce2ecf42cbc5f7f3f3a3aaaa8ababa3a5773f33bb5943b1653c96380aaaa2a4d4ba82131005f5f5ffcfcfc387af4284f3cfeb8a39802c94598da3a2af962c520ea757ba4f6e4d1471f252121810f3ef880fb1f7880e4e464cd299065d9a54ef23731d62fbffc4265652523468cd0321f5df2a7ed762a2a2a906599b0b030ce9f3f4f6e6e2e03060c2026268669d3a6316cd830824282e9d4a9d305a24dc099f2d3ac5bb70e3f3f3f468e1c49605010374d9e4c7070304b972e65f7eeddecd9b3078bc5c2c081039971dbadda8e4d4f4f273a3a9afcfc7c4a4b4bb5b08ec65edbedac5bb78e8d1b37d2a95327cd0c9e3b770ec566233030109bcd467d7dbd0bf9e97ee03940b76edd183e7cb8267c369b0da3f31457d52cb968bc3fa076afad4ed092e4109c0bb9f5689ac89d8a484a4a223f3f9fe9d3a7f3eaabaf12daa1c3bfd5704d9f5dab02ffdbefbc83ecec6c9e7df659264c98407e7e3eeddab5e3c6c937b990b6bf45b7c876bb9d8282029a9a9ae8dcb9b3b6cbf50f5b5f5fcfb973e7e8d0a103fefefe545454a0280a49494900040406d23d2599888808d7099165b2b3b3292a2a62c89021a4a7a723ec76ce379ce744f12f1c397284c0c040060f1e4c7070301f7cf001afbdf61a656565d86c36ba74e9c2d0a143696a6ae2f0e1c3da4e548164797939ab56ad62cd9a355ac2de9933671c45a746232693899696165a5a5a5a450ff4ea5c4f43e8538873f372a9a9a9d1e27c6a16883e35f98f32877a60acde6b4b4b4babc5573745484888233efbd147d86c366eb9e5160a0b0ac02e2eb93a5a0056c5d62a27ecfe071f60d557ab993973265bb66cd1c0bc1ee7fe96f0ca00a74f9fc666b3e1efef8fd1993ca6622c4551a8adade5dcb973f8fbfb23cb32870e1dc26030d0a54b970b756d6e1172bbdd4e6343033ffef8a376c68dafaf2f922cb37efd7a162f5e4c7a7a3a6fbffd36f7dd771fafbcf20a575c710559595964676763341af1f5f3233535151f1f1f9a9a9a346f441ff3aaaeae262a2a8ae0e060eaebeb696c6ca4b2b2d20517a80515bf863b424242b4935ad5fb9f3b772e83060de285175ed0aea3163afc51431f525185487510d4d3c3f495382abe4c4e4ee6c48913f80704b074e952d2d2d2b8e1861b282828b8240ce46e12d56bcbb24c7272324b972ea5a9a989bffffdef5c7bedb53436366a0730b49529d2ca145a5b2c9c387182a8b85802db8780a43b1c527248695d5d1d5595e7888e8ec6603050585888c16070046d9dc49c3b5723cb320d0d0d949494688cb01082ea73e7d8b16d3b46d9c04d53263b3821c54e78440463c78e65dfcf3ff3c3a6ef515a2c345b2c141515394223cef0853e773c303090989818f6eddb87afaf2f5151515456566aa5eeea4e531bfeabe644dd6d5a0da42c939797475a5a1ab366cd429665faf6edcbf265cba9aeaae2a30f9770baac8c868606cacbcb5d72de7f6da819a36a0ccfbd89ae3e1341af35d2d2d2b0dbede41dcc452876c759d58856f9fcfaa28b17e6be485ce778c65c3d96f9f3e7337efcf856f7e18eed2449c2a43b64417f0f999999fcf3a597983a793206838173d5d504070773dd75d7f1d4334fb7124c75cd55936aacababa3bcbc9ce0e0602db8e95ed9d2d4d4c4b973e7888b8b4392242a2b2b311a8d84848470e8d021b2b2b2888a89e6a69b6e72b1dd6a10560d33c806032d2d2dd8ed76ed0c666db702414141188d46d6af5f4f7e7e3e069389929212fcfcfc1cb8c35919a4de57606020575d75157575750c1c3890fafa7ad6ae5deb701e84d07820f5b8605528d545d5d7405a2c162da8fecb2fbf505f5f8f4db1111212c20d37dcc0a74b976a3bbbad9cf7b6c6c18307696c6c74c1257a6ca75f6015189b8c267cfdfc2e985c27966cb1ba7672b6d96c8e8da363e76fbffd76fcfdfd79e69967282b2b63e6cc99984ca656b59e97caaa4f983891fcfc7c962c59c2b7df7eab4552f41b441524bd77ad280ac6fafa7a4e9d3a45efbe7d080a0a6af3e80d9bcd466d6dadb6ebce9c3983b7b7375555552c5ebc98b56bd712de2982848404fa3b4f8557eb026559263c3cdcc1cd08a1e19dfafa7ace9f3faf65440214161672beb1114992a8a9a9c1c7cf4f2341fdfcfc5a990fa36c60d4e8d1242525111d1dcd37df7c8310c231e192849f9f1f2121210e13af03bfee05bab5b5b5d4d4d4d0a143076c36db857899d3f4da9c671c9a4ca60b5d8a2fa120b4a9a949e3a2f48b71b19c2ebdfbafe551392d82b7b7b74bb184c1b9499b9b9bf1f6f1d178b51b6fbc919494146ebcf1468a8b8bb576082a86b33acfcfbe14e1b25bad3cf1f4d3d49d3fcff4e9d3993b772e414141ecd8b18398b858aebffe7a17cf5a5528b22c235bad56eaeaea080808d02641ff606a56832a602d2d2dda2e3c71e204e7ce9d63c8902104060672ecd8312d2dc66834e2ebeb7b21e559514092888b8f67f4e8d1343636f2ecd3cfb07bd72e0e1c38c0fc575ee15ffffa1703060ce0ee59b308090de5e4c993d8ed764243431d6658dd0dcec327d5b306636263114250555575a1a7bc93bd36180c2e152eee2115abd54a5151119d3b77d640bbbaf802c7116f068341a32cd4eb5f4af45fcd7552b92ffd62ba6775e84db462b3d1a143070defb927fea97ca32ccbe4e4e4b830e38aa2909292c2c68d1bc9cfcfe7aaabaea2bebe5e7b6635d1ef52e295b2f378bd975e7a89be7dfb72f7dd773367ce1c0a0b0bb503b0d47b52378a4a4718552657cd16d00b953e7ea506a25573a02edaf9f3e7397efc38a11d3b101111d12ad9ccd7d79753a74e39c0b733dfcbd7d797abaeba8a6fbef986db6fbf5d03e7e9e9e9dc75d75da4a4a43068c860b67cbf99afbffe1a7f7f7f8d8d7669a6ab3be44976c6b14c2613414141189c896c6a51ac7bb35a7dcba3e2e2622ddaa0cfd63c77ee1ca5252751ac1740f4bf935365b55a354f52efd4e8fb65e9b5871a5e33384f19fbe9a79fb45361f505b992e4386e4e4dc9b12b0ab2d1e0a2113b75eac4f2e5cb993c793253a74ee5a5975e222929c9856cfdcdfbb7394c33c0bfde7e9b871e7c90c242477a54bb76ed5cb24f541ca7f5b05025d7cfcf4f03bbfafc6af5c1d54c48a3d148870e1d3876ec18b1b1b18c1a358a152b56909696468f1e3d5c5261020303494d4d65f3e6cdfcf4d34f1c3b768c975e7a094992b8f9e69b99376f1edbb66da3b6b696949414868d184e58581846a391b4b434ce9e3ec3e6cd9be9ddbbb7d688df65428463f1cc5e5e08bb9de2e262144521262646d3585e5e5ef8f8f8b8e02bf718ddb973e7282d2d65debc79d8ed766ebffd76dab76f4f5656166bbefa9aa686467cbdbd35d6df66b321197e3b6ca23a0cfa2c597d82a3aa495d1aaa185de75d6f62f43dca54b3a8e89c27fd0203040404f0f5d75ff3d8638f316dda34962f5f4ef7eedd2f3d0b5496b52397254962fefcf9cc9a358b69d3a6317cf8707ede97c3fefdfbf9f6db6f898e8e760913c9fa948eb60a050c4efbeee3e3437d7d3d66b3992e5dbad0d8d84879793977dc71078b172fe6d1471fa563c78e2ea6d4cbcb8b214386101414c46bafbdc6bbefbeabd1179b376fc6dfdf9f47e7cce1c9279f64d24d37121111a14d765efe21de7fff7dfcfcfc183870203ebebe08a750288ac289132758be6c195f7df515679c74c999336708090921323252f3487d7c7c087606b1dd03b6ea73ab6d951a1b1b5d12f36ebef966bef8e20b66cf9ead69633f3f3fc7e25e028fa5cff9d26bfe8b6507680266b5121010e0b01256ab26387a015585acaaaacaa1b174212f3dab6e301898376f1e93274f66dcb8717cf9e597979c6c283b3199d672c16860faf4e9288ac2c2850b494b4be3830f3e70a458393fa3692c158caa26c3fda12527086ed7ae1d757575c8b24c5c5c1c56ab95bcbc3c860c19424262a2161bd4674b22a067cf9e0c1f3e9cfdfbf7b377ef5e3a74e880c160202020007f7f7fac168b4368b8709cc8c1bc5c162c5840595919f7dd771f7dfaf4717884cefb3a7dfa349f7cf209abbf5c85afaf2f0d0d0d646666d2d8d888bfbf3f0683819a9a1a4e9d3a4550509096b7a56fb0a11f478f1ee56f7ffb1ba3468d7231b7420261175ae6659033bea99e147ba91c95bbd6d19b2cf72e3108c7e2a4a4a4b06edd3a727373494b4b4336c8ad72bc008a8a8a5a79686d15d03efae8a374eedc99175e788153a74e71fffdf75f0281ea684022e93cca0199997cfcf1c75a2f8dbffef5af6d06b6653572ae6646ba9b0b93c9849f9f1f895dbb5059754ecb80f0f1f161cf9e3d5457576b664976724d769be2f0f624900c32136f9ce4487f090ae2ece9d3d82c16ba2626121414e460c69b9b293ef10bb9070eb2e4830f7960d67decfbe96766de7d17575f330e6409c9e03870c066b3b175eb56366dda445a5a1a9191916cdfbe9d1d3b7620cbb2b67bcacbcb292a2a2224b43d014181ad40bb9d0bd532f5f5f5848787bbe4c5cbb28c6c773c4b4343032d8a8d8090604c5e4e937a09e077e0c0811aa6d2375ad17b4f7a2f50e30eed0a4202a32c3b32509d2c96cdaecb69b7da34aba0febd5ea8d4f5d363c2891327b26cd932162f5ecc238f3ca2c53dddf3f1350cab73512e04c91de9e2cb3e5b4ec1a17caebb7a1c936fbc89c1030771d79d333527c2e8e3e383b7b72309cecbcbcb256d5655a561618ee4bb55ab56515050406666266161619c3c79d211c30b0fa7a9b19183070f62b55ab56a1cc909287d7c7cb8e38e3b888c8ce4938f3fe6d4a9532c5dba941dbb7611191989d96ce6d8b163141515515555c565975dc6d34f3fcda02183b58953bd217547d89d98ca6030d0a74f1f8a8b8ba9a8a8e0eaabafc66832515a5aaa85a97c7d7d5ba97e478682e3396b6a6a348ca0c728927361cf9c3943595919e9e9e95ad5cf1f716cae9a12d3169856b3564b4b4bc918d01fabf3645a750e7c7c7c3433ab6fb2e6ee79eaab71d4986856561677dc710793274fe6f3cf3fd7b253f55e9e5ec0dc1bc7188d46fcfdfdf9eb5fffcab3cf3fcfc8912379e08107484b4bbba055552079eedcb956458afa26b51d3b76c46c3693979747505010d75d771d2525256cdcb811c566e3c08103bcf8e28b3cf0c0037cf8e1870ede4b572d121014c88d37dec89bfffa170f3ef8205dbb76a5aeae8efcfc7cf2f3f39165998c8c0c5e78e105de7df75d2e1f39523b4e4dbf9bbcbcbce8d7af1f93264dc2dbdb9b214386306cd8302a2a2af0f1f1212323034b4b0b870e1dc26c36939e9e8eafafaf3649fa40b2dd6e67fffefd180c065e7ffd75c68c19c38c1933983f7f3ef5f5f5ecdfb78fbd7bf772eedc399a9a9ab4a3edfee81c2cbd6954354fd7ae5db1d96c949494b868215508d4a3f7d4b8629b3c94f399d56a1c35801f1919c9b265cb888d8da57ffffe1414145cb48a48dfc34c3f6f76bb9d6b274c60d9b265ac58b182b367cfe2ede3c3d9b3673976ec1846b5debfa6a686a6a6260202025c1e44d5141d3b76242929896ddbb6317dfa74aebefa6ade79e71df6ecd9c3993367d8bb772fc5c5c5444545b171e346c7e1dd41812e1327c932b17171fc65c60cfe72ebad5a6eaf4a3eeacd905dd811f60b312c7552d5ca9a9b6fbe991b265c4f44a74eac5cb1825dbb7671dd75d7111515456e6e2edbb66dd372dfdb0a9c4a4848b2c4a64d9be8dfbf3f1919198c1f3f9ecaca4a7ef8e107ade9db5b6fbd456363236565654445456904e31f517ba7a774dcb1adaa15550132488e46243292a689f4d6a5adfbd1bfe74ebe060505f1d65b6fb160c1026ebae9265e7cf145c68d1be7a2b565a7c6563b1aba1f0a6fb7292475efce82050b78f0c107d9b66d1b2b57ae64e0c081c8debabee2ee7941aa041b0c06626262183a7428c78f1f273b3b9b8e1d3b3263c60cf2f2f2f8eaabaf301a8df8f8f8101010405353931634764955919c89e29284d5a91dd56c4497ce7ece0977af99d3ab7a1594979739fa7799cd66c68e1d8b2449ecdbb78fd2d2527af5ea85afafafcb02a8aeba1a7bfbf1c71f99306102975f7e39a9a9a98c1c3992679f7d9676edda71cdb5d7f2dc73cf2149128d8d8d040404fc5b04e3bf2b607aa16adfbe3d369b8dc3870f5f4841962e8481546fcddfdfff575378f4a5fdfa5466f53a0f3df4104b972ee5c9279f64ce9c392e5493ddee48c9d63a0aea5a04a8cd8301265c7f3db7dc720bab56ade2bdf7de63d9f2e58e0c5221846b76a4ce25561f409665060f1e4c4c4c0c5f7ffd358d8d8d4c9932857efdfab17cf972bcbcbc18366c18454545a4a5a5d1a54b178d54d5732f2a003479995bf591d7f766d7ab5ff500cdc2c2c256d99f6fbdf516fbf6ed63dcb871f4ead58bd3a74f93959545686828a3468dba400fb8e5854b481c3f7e1ca3d148f7eedd35b3af3eb7d16844b1d9387ffe3c1d3a7460d0a041f68b88c6000019a8494441540c1d3a540b075d4a22dda526fae9ffafce57b76eddb40a22f7fc314551387af4284208c2c3c35daee37e4d3d9da44f2c549bbc21e0b29ea96c58ff1d8772f3b8ee9a6b696e6cc2da62d19c31a1d84138e64ccdd895904082164b0b48f0d4d34f337efc78162e5c485d6dada3f15a444404e5e5e58ea20367cb207dc9b5baf01111118c1a358a8f3ffe98ad5bb772e55557f1e0830f72f7dd77b371e346e6cc99c30d37dc40e7ce9d0969dfbed5c9a47ab0da56a29b3ef4a2eeae929212de7fff7d366fde4c727232f7de7b2fa9a9a9c8b2cc67cb96f3f9e79fd3b3674f264f9e8cc16864e3c68de4e4e43069d2242e738249bd09d0526b8175ebd6d1a3470f1753ab67caebebebd9b76f1fc78e1d63d888e1848787bbd405fe11a6507f249faaa5554f5d7fc286ddd9355985e9e7ce9d4396656dbd24596a45fcaaf7a9df307aa74cd53806a391888808962f5fceb3cf3ecbc891239932658a8697d4cd7ef8f061aaaaaaf0f6f676986883a3794a5353135e2633cdcdcd984c26d2d2d230faf8fad2ab572f0ee6e56a81e6b602d16a5fd0abafbe9a55ab56b164c912323232e8dbaf1f4f3cf104cf3cf30c6fbef9266fbdf51626b3592b781442b06fdf3e7efef967c2c2c2c8ccccbcd00044dfbdc62980fa0a69b5de6feddab5d4d6d6d2d4d444717131a9a9a9ac5cb992b973e7d2a953279e7cf249121213395654c4175f7c41646424d75d779d66ced505736f4cf6d1471f111c1cccebafbfced0a143494b4be3adb7dee2fefbef470841454505274e9ca0a6a6c6858e90ffc00a1dbd07a6ceb35e00f6ecd9a36d04bd56dbb76f1fb22c13121272d16a9cb672e44a4b4bf9f8e38fc9cdcd65f7ce5d2e3dead5a38f43434379f9e5971933660ce9e9e9a4a6a66ad8bb53a74e8eec11497261e511907fe8100d0d0dd82c168ccd2dcd247449e487ad3fd2d0d0d0aabdb31e601a0c0612bb76e1fe071fe091471ee1d5575fe5b9e79ee3da6bafa5a5a585a79f7e9ac99327f3d4534f917ad96560177cbf69130b172ee4f0e1c3040707337efc78eebdf75efc0302b409a9a9a9a1a8a888c0c0402222221c712867af2ec56aa3a6aa1a2104a3af18454c54341f7db84413aa175e78813e7dfa80107cfdf5d71c3c78907beeb987debd7b3b083e67e05acf442b8ac2ba75eb888a8966d6ddf7b07fff7e366cd840af5ebd3872e4089d3a75e2ae3b673272e448ce9e3d4b74743443860c69d584e3524d5d5b3d4adb3283da21e42ab674f61e45802484a353b373839f2a2f4308e1cc107156394a1700bb1d810119bbcd11f2395f5fcf6bafbdc6e2c58b9974c30d0cea3f801e49ddb594a8a2a2228e171571b2b898d2d252cc4623a74e9de21ffff8070181819aa2b0dbed085985133aab2341728f940b8cc20b2fbcf08c979717cb972f272c2c8cb4b4342d45c3bd245c8d15aadcd37befbeabf5094d4a4a22262686b56bd7b27efd7abccc66121212f8e69b6fc8c9c9a15fbf7e4892c42fbffc427a7a3ae1616108e0c489132c58b080b7df7e9beddbb7e3eded4db76edd1c66d868a453a74e24242468a7a2ae58b1822fbffc92010306f0cc33cfd0a74f1f245966f5ead52c5ab4883e7dfa70efbdf7121c12d22af150ef25cd9d3b97ebc68fe79a71e3c8cccc64f0e0c14892c4d5575fcd2db7dcc2376bd7f2c9279f50555545dfbe7d9971ebad2e26eb5246d9a9537cfef9e70c1c3890becee76fabf38dea15bb97debfb17021eddbb7e7ce3bee701ce6e0ac0c3f75ea14f3e7cfa7534404ab57af263434942e89899a6953fbc35a5a5ab484c4891327525252c2279f7c42d6b7dfb272e54a727373292e2ea6478f1e84878753595949636323a3468da2b4b49422674fb0cc01031cd7969c04b25d71e2ac5fe1e88410242424101010c0c99327b592749566f83fed5d7b405465daff0d0c030602625902030c77064c32054d40cb54ec33360d2fb82a1f6d60566a5e5076332fab666c2efbb56c8569a99f12a5a662ae0a81585fa25c2c45974b0a82c20cc84d846198ebf3fd31735ecf1c062fdfb7fb4fcbfb0fc39973ce9ccbfb3ecff33eefeff9fdf81c4d5cbce5eaea8ac4c444cc983103e9e9e9c8cdcd85d8ce0e717171f8ecb3cf101616860f3ffc10c9c9c9b87af52a2412092e5fbe0cb55a8d2953a6c0cfcf0f1089a0eaee41fee93c9c3e790a7aad0e3555d5f8a9fc22f45a9df9218ae061060436363662fffefd686f6fc7b265cb4cca18e1e110d9d8a0e4c2056cdfbe1d43870e457272327c6432abf9386e96a456ab919b9b8bd8d8580b1c37b78f8b8b0b56af5e0db95c0e9d4e87d0d05036bde7f67f18940367dd140a854500ceff4c44fd6450b8b54583c160227f3397c89b7d38ab019c3b772ed2d2d2b062c50a7c7de8209b00716185c49c14cdf8f39fd1d9d9898c8c0cc4c7c75b2c84777777e3c89123387af428828383919a9a8aa3478f223e3e1e4f3df51476eedc6942cdf266f1b636b6d0e975f7872673eb4bcf3efb2c9a9b9b2db8cf85d53a7c8a1c373737ac5fbf1e1289041b376e6424b5cf3cf30cde7fff7de4e5e5e1f0e1c3f8f9e79f59e2d5c3c303a1a1a150abd5a6a51cb51a6a950a3a8d0643ecede1eaec0c3b5b5bdca8ad854aa542495919cacbcb515b5b0b3b73c78d8f8f875c2e37a1294540696909feb0fe5dd8886db172f52a4c8c8e0244f7166af91965ee3e323232b064c912383a3a32ce74be35138bc5a8a9a96195414141412c71f928e5559c85aaabab1bd02df2138f1c318a582c465d5d1d2466b42a176003407575353efacb7f6188bd03a64d9b8610b91c4f8e7c0a4b972ec5952b57b07dfbf67bbf6dd6accecdcdc5f2e5cbb179f3664c9f3e1d36e6cebb76ed5a5cba7409797979983061021a1a1a18c277fffefd88993c19858585387bf62c1212122c3aff034becb94283891327e2e38f3fc6b56bd7f0dc73cfc1d1d1d102cec127bae72c8087a727d6af5f0fb1588ceddbb7a3bebe1e6fbef9269e1a391273e7cec594295370eedc39949494a0a2a2020a8502e9e9e94cdec4cdd515dddddd108bc5686b6b83bdbd3d2e5ebc885f7ef905b76fdf86c8d616eeeeee888b8b43646424468d1a85616e6e2cf03f7dfa3476ecd801954a850d1b36203636d6c24af1a13edc03a9afafc7e1c387e1ecec8c8484041c3e78087abd1efbf6edc3638f3d86f9f3e7a3a9a909454545686c6c44525212264d9e6c19a8e2e104bdb9e7666f6f6f956c97ebd05cb93a67b9743a1dae5dbb068d468367468f068c46c0c606371b1a1811efd8b163112c0f0144404444040e1e3c88f9f3e7c36834e24fe97f62481098b1f1c3860d4359591976edda8598a828cc9b370f31932763474606c412098a2f5c40747434aed7d5c10840add1a0a6a6061a8d068585854848486083ce40c607a23bc4dccd8d1e3d1a363636a8a9a98142a140404080c5f49c7b48160469043c316204fef8c73fc2cbcb0b5f7cf105ae5ebd8aa54b9762c284097872e453981dff2a5e9c36154aa512353535282b2bc3ad5bb7d0dddd8d5b4d4d707070c098b163d9481e3264085c5c5c30313a1a212121f0f7f787878707eccd403f00502a14c8c9c9c19e7d7b21954ab179f366444444585dc313ce06bffaea2b2c58b000afbffe3a5cdd86b14cff9831639096968603070e402693a1ea1f9518316204e472b9d582046b9c0ad6d00d5cfd1f9f3e4908a6e497ab73c7141414c0c1c1015d5d5d68a8afc7eddbb791bc648949ea442ec7eeddbb2d9679fcfcfc70e0c001a4ad5d87f9f3e661efdebd26c8b2d98572b4988e8e8ee8eaea82939313e33fe3b2eb9d9d9da8aaaa829f9f1f3c3d3d515c5c0c373737a8542a16637189da07d27df3d5e9376edc48b366cda22fbffcd242149cd3bfe3b671caea46bde19e28a091e84c412125cc9b4f13273c472b962da753a74e517373b385769e56aba5f6f6766a6a6aa2dada5aba71e306ddbc79936edcb8410a85823a3a3aa8adad8d49006bfb344ca9bdb3bd83becef98ae6bc1a4f2141c1f4da6baf516565a585469f4ea7b39008e6ebf8555555517c7c3cddb871c3240f2cd847a3d1d0c99327293232926c4536b4f1bd0dd4dba3229d466b21b1db4fae778056fce339f2f7f5a39d9f66f5d33614ea2c7212c50683812a2b2bc9d7d797268c8ba03dbb765378d8280af60f207f5f3f9a1b3f873adadafb098cebf526ddc2be5e35c5cd7c99a6bd3895eedee92232128d0a0da34d1b36d2acdfbc427aad8efcbc7d68725434ddbdd34555ffa8a4cc8ffe4a47bf39426bd7a492bfaf1f9d292824797008c9bc7d68c6f4585af4db854c13d168349291887486fb6b538a390b64676787989818141717e3ca952b88898981bbbbbb456cc2cfe6b26a03b3b9854884c9932723383818274f9ec437df7c8392b252c8e5728c1f3f1ea3478f86b7b7375c5c5ce0eaea6a357f234c6472c59737cdeccd454545f8e1871f2093c9b061c306cc8c7b9991c30979ce85e4ad3a9d0e1f7ffc319e7ffe79787b7b9b621aa301621b5b968ae0e21b272727bcf0c20b888e8e3661dec5628b0a9787cd63710957954a65955190bf8ddbdedddd8d356bd6c0683442a7d361cb962d2cd7b472e54a2c7be71dc60443b6a6388a1f0fdbd9d9213b3b1ba9a9a958b46811b66edd8a993367e2ecd9b3b87efd3a5a5b5b3163c60c7cfbedb7484848c0f2e5cb11101080ecec6c5cba74091f7cf001fefef7bf43abd5422a95a2bbbb1b53a74eb5e4bcc083b92bc4fcc0313ada84332f2e2e863c380409bf5dd02f36e00b0089ee6135d85ae0480f772c4a5c8ca9d3a7e1c8e16f505252829d9f6661c89021f0f2f242707030020303f1e4934fc2c9c9094e4e4e2cf9c605b21d1d1d686d6d45636323ae5dbb869f7efa098d8d8df0f6f6c6aa55ab101b1b0b0f4f4f669af9197e6b300f914884acac2c28140a6cdbb6eddecddbd8a2b5b5159d9d9df0f1f28642a140eed16368a8ad43525212c645469858ed4496eb747cad413e588ffb2d2e0efdb1f81c6cc4b6081d15c63ab2ad8d2df466088c08f702ecbb5d5d282828406666266a6b6be1e0e080bb3d3df00f0c444a4a0ace9f3f8ffdd9d978e1c517116a963a11910864e636e326ff5c45cfa7595958b372255e7fed35bcf1c61b3872f830ecedecb0243919ebd7afc7f9f3e7d1dbd3837d7bf640241221343414ebfff0077cf4d147c8cfcf878b8b0b1c873aa1bbbb1bbf4b7e1d040299854d6d1ea2904464341a893f7abe2f3a8b1d3b76c0cdcd0dab53d7e0e9a79fb688318c3cce2411fa8b67721d51abd542622741b352898a8a0a46aadadede0e8d4603954ac516adb98ec5cde43a3b3bd1ddddcd70f3212121cc8248a552569d6384a5e61f9f35902f3172f1e245bcf4d24bf0f5f585979717929292101b1bcb94ca4e9c38819fca2fc2d1d1114aa512a3468d42eaead57866dcd87e459f42fd6961fa809f404d5bbb0e870e1d426e6e2eeb5cfc67a4686c427e7e3ef2f2f2505656c6aedfdddd1d53a74e455c5cdcbd652922ac59b3060505052ca7c7a17ef9c80383c100474747848585c1ced616a5a5a5b870e1024ba70c1932044f3cf10422222270e4c81148a552c86432e8f57a141717b3e729954ae1e4ea820f3ffc90c599fcd2b507d15d8a743a1df1a7ce7aad0ee9e9e93876ec18e6cc9983a54b9762a88b33bb6921fc5558dd6be1d678c965321ad1d1d181a6a626d4d4d4305a4783c180dede5e86a7e7ea009d9d9d11161686f0f07078990b2904a96ac0a63f17281f91c1893fbdf5d65b484c4c44545414cacacaa0d3e9f0d8638f212d2d0d999999c8caca4251e11966b939e4c6bc84f9707676661dd59ab4097f1b97e7b2b3b333516e4645e3f1c71f4761511133ef15972fe3f2e5cbc8cece465555159bbd060505213a3a1a3367ce44685818233de3281eb9b230aedc8bcb3172ef80bba7bebe3e5cbf7e1d9d9d9de8e9e94165652573b177eedc81abab2baaababd9b573e8078944c2204152a914afbefa2a5e4f4966c893475dc6129963ad7b3e1f22d45457233d3d1db5b5b578fbedb7316bd62c882576fd6320a01f0272a0d16bed58eef8dede5ef4f5f58143b35a80f2056e86bfb8ca1734b036823a3b3b9198988871e3c6e1bdf7deb3d81f00d6a5ae457d7d3d5b7be4901cbdbdbda6fc170853a64cc1b469d33067ce1c761d5aad16f6f6f6ec5eac61e9333333f1d78cbf60e1c285888b8b435e5e1e4e9c38616235d66820914810181c84848404c4c4c4dc5b4ce60d56e1791fb494c47f467ca559e180bc7af52acacbcbd1d4d4c488e6b8f0243c3c1c1111114c4f9bcfedcfbdcf814004c28b61333fa3d1689a011989becbcba7e7274da6175f98423f9cfd9ec868529e1f484d5ed8aca9a85bdb8fdb57abd55a557ae7abd5f3cfc9cda2f8c7f1676c3d3d3d94929242818181b47fff7eabbfab51f7d1fb5bb7d1cbff3193fc64beb42439857ea9aea18b65e5b4764d2a49a5520a0c0c242f2f2f7afae9a769f5ead516b350e1fd68341a2222fafaebafc9d3d393fcbc7d28d83f80027dfdc8d7cb9bfcbc7de8ed3796d2e7bb7653b342c966c9fc5929f7977b06fcbf3a9dce6266ceed3bd073d56b754406239191d87be566d864347f6fe57f3292e9382bef49f81e066a16168b5b328048044d5f1fb2b3b3919999096f6f6f6cdebcd9e4ef45b05a266ecd6a581b71c251291c6dc2e3843c014200a0b5df36180cd8b2650beaeaeab060c1027cf2c927b0b5b5c5c1830771ebd62d787979412c16a3beee06b66ddb86fcfc7c44464662ddba757876dc58f69b6a552f0e1c388023478ee0faf5eb6c4d8f9b358e1a350aa1a1a18c12a0b0b0103ffef8235a5a5a4cf74a8491234762d2a449787eca148c1933862578b51a0d240ef6fd827e6b6ee77eae986f4539b7257c9e42be50fe79f8b3676148c1c56efc6cbb309f775f8b6569564cb9103212b5dd6ea53f7d904e41018194b868315dadb8423a8d76c05c8c5eaf67bdda5a4fb73602b8decfff6c6d5fe136ee7fee186eb4ebf57adab973272d5cb8905a5a5ad877d5d5d5f4edb7df92b3b3337df2c92774e7ce1dfa60eb360a0e0ca2f8d9afd285e2f364d41b9885e8ebeb338d5af3886fbad5487bbfd843bf4b7a8d820202c9dfd78f7c7d6424f3f62199b70ff9787953809f3fc9bc7d686efc1cdafbc51eaafa47253b9e6f8585f9c181ee9d9f63b49607e36f17e6c484965f78bcd02bdcef7d587b0703594966b1b85921ebbd826c6ab35289acac2cecddbb1711111178f7dd7731fa99f07ee5e2d6fced4031011fc2c287a2f0675b42ebc6ffccaddb0945c401203d3d1d3939393871e204cbc3f163968e8e0e1c3b760c5d5d5dd8b36b37e47239de59b50a919191b09348fa618c38520ee2c171c96844696929aaabab4dfca9e66b0b0909c1f8f1e331d4d9d9028fc64fd370a9066e562dbc0761ca827fed428486d0ca59133de75b1ee1731bc81a0aad97b599ff40d673608b65a5dd6e6ea16d5bb692ccdb8726c74ca2e3c7725946bc5f06d86820bdd1c0360b47207f640afdb55eafb73aca84db84c71011ddb97387525353293131916edfbe4d46a391d46a35151414980f32598e166533ad4ffb3d05fb07d0f4e9d3e9cc99335647ef8346e460bb7fbb6fc76241bdde40edad6db4fbb35d14260fa5d010396ddab0913adb3b4c019f795f7ebadf3880b97d94805e688ef9a69f737d44442525253467ce1c5ab56a15757474b0ed9b366da2d9b36733175f5e5a46ffb9389182fcfc69e1fc04ba7cf9323b27df350db67f71c7b2b010e6d9c37779f934fb9559e42df5a2dfbc1c474585674cf188b971b316eec50b678d5c2c666de667eda5f2cf236c3a9d8e366dda443e3e3eb46fdf3e4a4949a173e7ce1111915aada6c2c242522a95d4d6d646ffbd771f458e8b203f992ffd7e5d1ab5dd6eb56a11f931c660fbbf37113d804c92ef8f751a9356a0a2a909070f1ec4aecf779be0331e1e904aa5983973265e79e5957ef571d66230bede9ed09f0b99ef844959b55a8d53a74ee16f7ffb1bc2c2c2b075eb56d8dadae2d0a143387efc38dcddddb16cd9328c1c3912757575d8b56b9789912e3008c9c9c9983d7bb629be2063bfb5d007c60e83ede113a40f53adcbd20b10416fe6e0fcf9d2cfd8bd7b37befbee3b53a5f050674c9a34098b162dc2d8b16341225854f9dc0fda7bbf0ec8ff5c5151818c8c0ce8743aac58b10291919116d7d9dede8e7dfbf6e1f4e9d318366c182a2a2a603018b078f1622c5ebc1852a99441531e155f35d81ead5264c036e0d49483b3985d557979392d5cf05b36f5960787d05b4bdfa45faa6b58ea829f7c33e8f41641ff40ae910f4f512814949c9c4ca3478fa6dcdc5c761d9c8b5675f750b34249fff3fd0f94ba7a0d05070651504020ad5cf10e5dba74c9ea7d71e717baeb81d22383ed9fe40a0980dea067ccba4237c1574db7159968ba737272f07d519189e2db6844484808a2a2a210151585d0d05053e52e07c013dbf64b47082d47434303727272f0f9e79f23252505a9a9a9004c4cc8bd3d2a68b55adcbc7913e7ce9dc3f1e3c7d1d0d080e1c3872326268641a561734fddc14e2261357ac2557abe1bfe6795780dbac2013a161fc5c0c70ff5cb51d1bd3ac1d6961694979723bfa000a5a5a5686e6e66ac7aeeeeee080f0f874c26434090697d6af8f0e130180c502a95a8acac446d6d2dbababa505b5b8bdede5e8486862229290943870e455757175a5b5b515f5f8ff3e78a51595909954a053b3b3b040505e1a5975ec2c489131947a74824629ad6ec32cdc4b422410cc9ff3ce81affc531d6ffa719747a268f92979787f3e7cfa3a5a5852d3aebf57af4f5f5c16030c0dede1e4e4e4e8c7adbc1c1014e4e4e4c1db5adad0d1d1d1d4c70c9c1c101c39f781c010101183f7e3ca39364acc6831de3d7dbb184e4141c9a52a95442a954e2466d1d944a2553c6e0f46abababa70f7ee5d8c1831024e4e4e2c7beee2e2024f4f4fc86432787878c0d34b0a8944020707877e2888c1f62bee5803bd64b6f420b261ee5308898148648145e2c33e38395a219051e8ae07dbafb4630dc408f73022dd16186b0180900f32b4b65639103e6bb0fdca5ca13019cac190855c9c03254def07b119b454ff8ec1bb00f763adeeef7e9d62a0a4e9c37c3f186bfd9b582c6beeea515efca358a50775c8c1f6af6fff0bd463b7fb41e48f8a0000000049454e44ae426082	image/png	0
1001	Equipements électriques et électroniques	1	1000	108	1	\N	\N	\N	1
1002	Meubles et éléments de décoration	1	1000	108	2	\N	\N	\N	1
1003	Planches et palettes	1	1000	108	3	\N	\N	\N	1
1004	Portes, fenêtres, volets, vitres et sanitaires	1	1000	108	4	\N	\N	\N	1
1005	Objets entrant dans plusieurs catégories	1	1000	108	5	\N	\N	\N	1
1006	Epave de vélo	1	1000	108	6	\N	\N	\N	1
1007	Epave de Vélib	1	1000	1489	7	\N	\N	\N	1
1008	Epave de motocycle	1	1000	108	8	\N	\N	\N	1
1009	Déchets divers légers en sac ou en vrac	1	1000	108	9	\N	\N	\N	1
1010	Autre objet (hors catégories précédentes)	1	1000	108	10	\N	\N	\N	1
2000	Problème sur un chantier	1	\N	0	5	image?resource_type=image_type_signalement&#38;id=2000	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e2000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070d3a33291e97d1000020004944415478daed5d69781455bafeba3b01bc0ae2781d25e9aeaeaa4e58b3220ad900f12abb8a0a4958dc104114d91244efcc55401d150809a8a3a0a8b84280c0785d5067143121049c050804bdc3920550966c0492aeaaf3de1fdde7a47a0904644690fe9e274f3ae9aea5abdefa96f75b8e050028242139cf620d5d82908480159210b04212025648421202564842c00a49085821094908582109012b2421608524242160852404ac9084801592908480159210b04212025648421202564842c00a49085821094908582109012b24216085242421609dbb0020defdc61813ff2322d2342de0b3fe621846c07e42720903aba9a989186364b158c862b1f8bc67b158080085878713638c0cc320c330c862b110634c00903146369b8d0088f7427289032b3c3c9cac56abd03a1c6466701191f88ccd66f3f9db2c9aa6f9802c24de6b78a97542730dc35f7350347f8048d7340a0b0f27661864b5d98800220e3c8b078c3edb8424042c0e2cee1f718030c6080059c96b1ebd405abb660dfdf9cf7fa66fbffd96eaebebc900234551e8e69b6fa67befbd9724490aa12804ac66618cf99843abd5ea0194f76a7cbb6913cd9e3d9b0e1f3e4c975f7e39dd72cb2de47038a8a6a686bef9e61bdabf7f3f592c16bae79e7be8c9279fa4b0b0300f686da140fb92041677b2b9e36e76e2354da3f0b0705abe6c193df7dc73e2733d7af4a05b6fbd95468c18419dec7632749dd6ad5b4773e7cea5fafa7aeadebd3bad5cb9922ebfe20a224b085497b4c6325306369b8d344da3eddbb7d38cc7a652585818d5d5d5d1881123a843870eb463c70edab87123e9ba4e37f4ee4d8b162da2dffef6b774ead429cacccca41d3b7650b76edde8c30f3fa40e1daf0ca1caeb735c52c200b8dd6edf7f3060ce534fc3e990b064c9126cdfbe1d656565d0340d006018064e9c3881b973e742969c488c4f40d1b7850003ea6beb307cf010c87607460cbf0d27eaea010630dd0838b6aeeb97cc75bee480c56faedbed06630c7535b5c84ccf407c6c1cb6956c15403283cf303c20d1340d5bb794202e2616b2e4c4dad56b0006541f3b8e3b860d87e290f0e003e361683ac03cc7320c03baae0b908680750988dbedc6d0a1439110178fb25dbb01838131d6acccbcafcd4033341ddf97ed41425c3c5459c1679f7c0a30e0d891a3b8b95f7f44a92ecc79ea698f26348132a4b12e11ad65180666cd9a85c4c444ecd8b143982f0e04ae69fcc5300c30c650b66b37627bc4a047b7eed8b3bb0c4c3750ba6327e2626221d91d5893bf5a80b3a9a9e992bbc6971eb018a035b9b162c50a4892844d9b3641d7751f4d65d632c1b40d7ffffbb23d70292a12e3135073bc1a60c0ea55f988525d88e9de0355555501600e01eb570caced7fff07ba4477c6f2e5cb7d4c1eff6df68782692dc6980063feca55703a248cb8fd0ee15b3d9e3d0bf688480c1d3a148cb14b0a505c6c4f3ffdf4d39758184c13274ea4c8c8487af6d9e7882ccd642967e52d160bb9dd6e0a0b0b23abd5ea934be49fe1e46ab7eedda8aab28abefefa6b3a79f224a5f5ed4bbd7af5a2929212dab17327592c164a4a4a225dd783e61a4374c3af4416e7e621212e1ee5fb0f78fc2ab3b3de828632fb5d41cd2503860c1a0cc529e3cbcfbf00d30d94edda0d87c3015996b17bf7ee908f75b18bf98633e68df2bc5c55f9fe03484c4c445e5e9e0fa038f570367485bf69dcb3670f62626290189f801375f5d09adc7879c94b70292a06dd3a509c8399dfe2018230c521605de06e941f480c4d87a1e9189d9189949414d4d4d404f852e7b27f015c004d4d4d78fbedb721d91d78f081f11e94180c036fb915ddba7445dea25c684d6e8f1fe6776cbe1f9d1921605de804a8a669686868f0fccfade1f3cf36c0a5a8c8cfcf0fd07067eb5cfb9b46febbb1b11193273d0c5556f0e5e75f000c28ddb113b2e4445c4c2c7e3c7458706566cd27f8b25f91cefa556a2c7fb034d49fc04dfdfa63e02db70a009801c1b5476b084cb33634a77cf8ff6b8e5723a67b0f24c4c5a3aea61660c0a2853988525d1875f748c0604141ca18fb559942ebaf301811d59ebaae1311d16bafbd46e5e5e5346fde3c22226adbb6ad48401311858585b558211a90b5374587feff330c83aeecd891e6cc9943d5d5d5b478f16222229a366d1a75ead489b66ddb469f7efaa9cfb1fd4ba34351e145e25feddab50b4e878467e6ce030c164086b644889ecd717ccc9a6e40776b1837662c1c91767cb7751b9a4e3562cbe662284e1937df3400c78e1d13db9b7392211feb021791d7330c8c1933a6d92c9972816630f1944b6b006676d8f9df3e91a86e000c38b06f3fe263e3307ce830e1c83f3c71121c9176bcf2ca2b41cd6f08581789e62a282880244958fefa1b1edf8605b2ec3e3e4e2b2907f3363ec0d0750122180c8b73f3204b4e2c7b6da9a88248888b87c3e140595999780078f543886eb880b8aa6064250c861375f5e8d1a3076ebffdf616894d7fbac1ec84b7d6546a9a16c09d993551727232e2626271f8e021189a8e3796bd8ece51d1189d91f9abae7cb8289d77ff2e9b600ef5a2458ba8a1a181b2b2b27c9c729ebae14e3b6fa2e0ffe3fb3237b0f2cf10910808f8fb3cede37f6e369b8d1863347ffe7c3a71e2043df9e49364b5d9e8fefbefa7ce9d3b53616121151414f83475f0d721e7fd0264dac1804d1bbf4194eac2ecd9b38536309bc0d3d10cfcb561182d96bb084253d70368075dd703b4cff4a9d3a0ca0ab66e29011850f46d215459c1f5893d515b5bfbab74452eda9a7798fa03cdb5ebc440e3c68da3eddbb7d3c79f7e4276bb5d7c46d775b2d96c0121beaeeb141616e669a6080f2722a21d3b76d0d75f7f2d92c79224d16db7dde6d34fc83ba4b9c6e2fb31bfcf18a363478ed2a04183a87dfbf6b471e346b2da6cf4f0a449b47efd7a9a3c7932fdee7f7e1fb06d48635d00b4825943acfce043b814158b73f35aa420cc9acbffbdaaaa2a8c1933062e970bfdfaf5c3c891233174e850444444e0bffeebbfb061c38680639fd13f6240dea25c381d12f216e5020ca82caf407c6c1ca254170eecdbffabf3b3e862367dfe72f0e041f44c48c4cd370dc0d19f8e04e58accf4020718fffbd34f3f458f1e3d10131383952b57fa1c73dbb66de8ddbb375c2e57405ac86c5e19633879f26440a4d874aa117d53d3707d7c022a0e94030c58387f01a25d511879d7dd22491d02d62f28fcc9366b8e53a74ee1f9e79f87e294f1de3bef8a9b64d602e62850d3349fbfb76edd0a5996316cd830d4d5d5f98098efa3b6b61603070e84aa7a728efed445b0885144aa0cd85c58045572e291899304dfd537350d2e45c5979f7f2112d421605d000428bfb1bb76ed822ccbc84ccf109c554b252efef4436969296262629092928263c78ef980d51f24f5f5f5183870205c2e17366cd8d02268cdc7d3dd9a00d7c3131e4294aca0a4683360307cfed906381d12faf7ed17d258bfa829842759cbfd235e0e9c71f748b89c32b66ddbe6433c0671777c4d976e60c4ed77c0e9903c9d3aad90eaea6a242626223e3e1ebb76ed1275f41c18e688d1df741fd8b71f4e87d4ccc8332073e428442b2a72172c0c00a6d0ce1719337fd1012bc01561c0864f3f8314118927b2670950f9fb3dbce281df347ef37373164171ca58faea6b67a531b66fdf0e55553168d02030dd10a6ad25cda8699aa04396e42d863d22126fbff9160c4d47e98e9de8e28a42424c2c4e9c3811d40c5f6c2ed845a9b1f893cb1803d30da426a7a0f70d3762ffde7d41532dc11c7ec6180e1f3e0ca7d389d11999cda9985644a38c31689a86152b564096653cffdc1fc49d0f1625fa24be19505b5d8384b878c4c7c6a1beb60e6040f6cc2ca89213593366069cc7c5d89071d113a48b73f3d0392a1a0be72ff0e93e0e4607f893a3e9e9e9888f8ff738eb5ebfacb55407ffb9fbeebba138656cd95cece37c9b738fc10a03577db812d1ae28413f541c28c70dd7f7822a2bd8bf779f4f8f23dfe66202d745072cb3437decd831242424a07bd76ea2a8ae454d6162e6c180828202d8ed76bcf5d65ba2f0ef5ce88ecaca4af44c484452ef3e1e5fcbcf71f73f1ff3f6836e1d08c9ee40554525b426b730cbe3c68c15f5f1678a3c43c03acfa2691ab2b3b3e172b9b06ad5aa001ac2bf9359dc506f3b7c8f6edd3176ecd8d392a8ada53bde7ff73d748e8a468ec9f9366ba7969cf96ddbb6c1e99030e9a18962c0089f0b51b8e95b1ff37ab111a8179ff3ee75940f1f3c0445513078f0e080303f58f583d04a06c373cf3c8b685714f6efddf7b32a0ccc5d40633247c3e990f0cf7ffed3871209c6b9998196999909c9ee4071d166684d6e14ac590b555690312adda7b3e76263e52f3e8de5f585d2478e82d3e9c4e6cd9b0398f5d3d558f14ace9c050b03a2b8b33136fea53ae5fb0f20313e01e9e9e941812ae8113f20575555f900c9d074f44d4d83e29491bf72954f38783199c30b0e582c88f36b7e93e986a80ec8cccc0ce876f1af38e01a85f34c83060d425c5c9c68010ba6515a0328be7f73f5694e4e0e5459f10c0461811ad40c78fe80189a8e5959d970292a3effcc43b86ed8b0014ea71349494917a57f7541024b33f416436c776313c080a18387c0e99070f0e0c10042517cd6ed6ebea15e1275e9abaf213a3a1af9f9f941b5c9d99a41beadd97f4a4b49455c4c2caa8f1d0f0a4a017ed6ac7df7efdd87b89858f44d4d139f1d3d7a34645916fe63c8c73a4f1acbdfdc188687802c58b3164e87845959d93e64a8f9c29b81c6b7ab395e8d9e0989c8c8c808aa11cf4663f99397e6d7c5459be15254fce1d9e77c3eef4fd69afd4530e0e5252fc1e990b06ad52a689a86e2e262a8aa8a9e3d7be2e8d1a3218d753e3416a709827534a7242523a67b0f9ca8ab6f91f80c86d6ac1933a13865141616fa80ef6c4d614b9a831706ea6e0d8f4e7e04919d2250565626b467b0ce204dd384e63a7ef41812e2e21117132b48d38c51e9509c325e5abca4c5f19321609d83c6f28ff696e42d862a2bc8cd5914b47ac1ffe671706efffb3f10a5ba3073fa8ce0dcd639989a16471d79c94ec52923232323683d7c00d9c93cddda8b73f3a0ca8a68c7af38500e47a41d7131b1a8adae6955662004ac96b401337c9f68afd4d579389ef8d83834d49f80eed6841f75ba423e00183b7a0ce263e370f8e0a1169df1b3e9d209062e9ee681e1498c2f5a98034551f0fefbeffb80cadfa117e53bdee8af6f6a9a182cc274034fce7e024e87849797bce4a9920801ebe76b2cee43b9dd6ebcf2ca2b88ec1481551fae0c9a913557849ab5417e7e3e1c91762cc95b1c907209c6799d2dd5109042f296c834d49f40fffefd919c9c2c12cb6eb75b546704d38e4d4d4df8f0fd0fe052542cc95b0c180c1507ca21d91dcd263204ac73a4a9c07ca902afb68a8989c14dfdfafb44534139259336a9adad455a5a1afaf7ed274c4930c7dbff78e70a341e28f0735cb972255c2e17162d5ad47c0c9356f6af64e51fe07e64554525c08099d367204a75217b665608583f4763f95703cccaca866477a060cdda1693b1621b7e63199097970749f2445ac13484bfb6f1f7b75af28f82f956c1461b31c6909999895e3daff7545eb0e0a0f4f7fb56af5e0dbbdd8e5959d900030e565641b23ba0ca0a2acb2b9a7939bf07e3421af97de1f9587e39b5fffbfe07a8b2e249cc1aec8c29181ebefff387ff43424202860f1f1e94a46c299a6c6c6c6cb169d50cea603731d8f499a2a2223822ed983deb71d189ddd2fecdb34d478d1a05555670b0b20a86a6e395975e86ec2dab1115a91730797ae1692c3fad317bf66c44bba250b8e95b9f70dbdf8cf884ef5ef3a1aa2a366edc18e0cc9b6f7c300d78268ecb1c589caefc99bff7e003e311a5bab073fb8ed35223e6e3161616c2a5a8783c7b16b42637ea6beb10db2306d1ae2831e6f24c437843c06a81232a2f2f87c3e1c0a851a3c43c846026c87f28c7ceed3b10ed8ac28409135a0484bff63203251899c93fef5f6faf699a8f290bb6a2456579059c0e49b4d5fbd76af913ad7cbbd11999509cb2307fb9398b204b4ecc9c3e230058218dd51a27cb0ba059b36641963d75ecc12ea27ff9314f958cc91c0dc529a3a2a2e2b4e6c21f682d69d0609486ff76e69a2e413da03957396fce5c284e19c5c5c5416987601a67d3c66fa03865cccaca86a1e9683c790af1b171887645795ac84e437f8480e57fb3bdf3420f56564192243cf8e083a7bde1fe17b5a4780bec119198316d7af03a2693732fead459733ed1ec7807352fac9952a838508ed5abf2b1246fb1180d19540bbb35d456d720313e0163c68c099e550836b88401f78c1d279c76adc98dbc45b97044da4584e83f942404acd3692c6f3a43b23b84d6f17fb2cd9acafcf40f193418d727f6f4acc2150c88263a8083a9e678354a8ab7a0b868338a8b8b450b987f84c7b54ff9fe03f8fd7fff0ef6884844bba2a03865284e1943070fc1f1e3c785391337dcf0d4e6e72dca85c3e1c09ffef4279fef126cfc24bf16859bbe4594eaf2d4c233a0aea6160971f188525da8aaaa3aa77ce7a5e9bceb06b66c2e862a2b1e5fc26c8e8230d866a0ad5dbbd62725e27fb11963a8aaa8c4abaffc11531e791483070e822a2b902527a25d519025276459862ccb484a4ac21ffef007ecdbb7cf07c8a53b7622212e1e4e8784eb137be2a9dfff0ff216e5222d2515aaac203b3b3b00f85c3b36d49f406c6c2cd2d2d27c7c317f40b8dd6ecffbde0720333d03aaac880eeadc9c459e44fcac5941b5f725092cf36460735b167f42996e607446a6a7a960fffea091530077e3d5426929a948484840757575502d386fce5ca8b202a743824b51a13865a4242563f4e8d11833660ca64c99828c8c0c0c1f3e1c92dd01c9ee40cf844494edda0d43d3d1507f026949c9509c32264e9c88eada1acfbd07434d4d0de263e3d0392ada5332c302830cc618962f5f0e5996919f9f1fb4e29505094ebefbee3b381c0e0faf6530a1b55459f190a806bbe0fac3e817b17441fc175e19b0ad642ba25d511ed5df029714cc8759bb7a0d545911adef3ef5569a8ea9531e832a2b70292ab26766e1f3cf36a0a1fe84a030cc1ac6ed76e3f0c14378e4e1c988525de8deb51b7697eec2ca0f3e842a39d137350dd5d5d560009ab466cdc347416e2bd91ab479954b5252125253530322614dd3042b6f8e0e354d434646860fd5f0d2e225703a24cc9ef5b8f0152fa4ea875f0458411973ef9ba33332d1e9daeb44d4e3efe89a67aa9bcd675a4a2afaa5f50d70e8755d47c19ab5509c3212e2e2c5caa8e6b6f760dc18374533a64d87e294d1bf6f3fcccaca86e290f0ee8a773c9fd1b5e614140316bc381f2e4515c7f0274cf9b9ad5ab50aaaaa62f5ead5013ea35bd7021e3800282e2e8623d28e27673f0143d345998de2943dd36a5ad917f9ab3785c1c0b269e33790ec0e91cae0ad5e2d4568fca95e92b7188e483b56afca0f1a65a5a5a442b23bb07a55be4f24e86e6c126c7eb0f3e1f4c5b0214385e9ece28a42d1379b9ac1ebad780503263d34114e872406ac05235ef9ef949414a4a4a4047ec6efdcdd6eb700e8d8d16310715d271cacac020c86575e7a198a53c6f4a9d3ceaa2ff2570b2cff8a4f7e334767640a75efdfb0696e123583a0a6a60631dd7b60c4ed770853e076bbc5beb76fdf8e28d585d4e41401a8fd7bf7e1f1ec59888b89854b5121cb32e6cd9b27b49cffcaaae5fb0f20212edee3e43b153c3b67ae4fcf1fd79afdd2fa22da15e529cf61befc128f5ef979bdfffefb5055157ffad39f7cfecffc225db37cf3f546748e8ac6138fcf1611627c6c1c5c8a2a48d40b45feed33482d64f199d7c96779feed6f7fa38d1b37d26db7dd460e49220062521e9f330aeff041febbb1b19156ac5841f5f5f5346bd62cb2783fcfa7f21986417ffdeb5f0900dd79e79d444474a2be9e468c1841f9f9f9545b5b2b968d5bbe7cb9cf543dc330c86ab552787838399c124d9e3c99c2c2c248d7755abf7e3dedd9b3472c3f4744b474e9523af2e38f74e38d37d2b5d75e4b0488f7c2c2c20880cfbcd28c8c0c8a8888a0e79f7fde67ca2083e7bbf263c1347031ad6f5f4a4848a0f7de7b8f7e3c7c98aeb8e20abaf7de7bc962b1d01b6fbc41ec429a617a2138ef4d4d4d78e8a18710ed8ac2a1aa83a216bc25cdc6ff3e71e2041212123cb317bcbc947f44f5ecb3cf42b23bf0c586cfa1bb35cc7d7a0e14a70cc9ee4094ea42b42b0a3367cec4b66ddb7cf853f33eb8c94d4b4b43675985cb29a347b7ee58bb762d76efde8db7de7acb435bd81dc2bfe22636583e8fffef830f3e80cbe5c2ead5abc5756041d25bdc9fd4dd1a8a8b36439515cc98361d60c0c9130d62ad9e0ba95eebdf0e2cee9398cd5c5555159c4ea7874de6d18dc15aa418b8b9cbcdcd852ccbd85c58148008befff4f474b814d59300f6ae2be85254c892130f4f9ce489b2fc80cf233dff7ec555ab56c1e57022ca1b5df2f5089d0e099da3a2b186f7019afc9d80a9317ee537c9c9c94849490978f082f252de7d678c4a47e7a868518a933d330bb2e4f4198f79e9f95841ca5eb2b3b3a1280acacbcb5b576f6530d41caf467c7c3c3232320248d09c050b717d7c02468f4ac74d697d618f8814ef3b22ed887645791c79d3f463660a2c5aaab30280a4de7de05254cc79ea694c9e3c191919199833670ecacbcb5bf5fdfd13ce6bd7ae4594eac29afcd5c2473c1d836e1806b66cd9025555f13fbffb3d986ee0a7c33f429515b10247b0914a2de5237f55cc3bd7049aa6a1b2b2124ea7133367ce6c1178fe9c95609f9d4e6cd9b2c527a43f74e89027827348e8acba3cbfa3a23d4d155e477ef0c041cd3942ce5f21b0f52c5854f7c6b2d7d125ba33de5afea630753f2795621806fadcd85b0417c1eabd02fa2bdd6e8c1a350a49bdfb7816393718664e9f01c9eec0cb4b5e12740a37a12d8d15ff5539efe621fb616161b468d1220240d3a64df35937d9ed768bd1d7f00ef1e7e3b46baaabe99d77dea1e4e464baf1c61bc576168b851a1b1b09005d79e595d4b66d5b0a0f0fa7eb7efb5b32349daeb9e61a8ab8ee3a4a494921788306be4a988588744317c184ff6a607cf4764c4c0c353434d0d1a347c96ab552585898082c5abb00405353131111699a4656ab959e78e2092a2f2fa782b56bc5020766a7ddfcda300c0a0f0fa751a346d1a1438768f9f2e544443473e64c0a0f0fa7575f7d95eaebeac81616466ddbb625c618b569d3e6df7e8fadbfc47c76be0ac38f3ffe48ab56ada291234792dd6ef789c8f8c5e01799df44b25868c58a1574f8f0619a3a75aad81f079f2ccbf4d8b4a9545b5f4f6eb79b745da7e1c38793cd66a3f6eddb5372723255555488f3618c89e386db9aa336abd52a802266c87bcfe78a2baea0f0f07071c33918cd33e04f277c593bbe8fdb6ebf9d2449a2bcbc3c72bbdd3ee7c4a3532efc18b7dd761b298a42efbefb2ed5d5d551a78808bafdf6dba9b1b1913ef9e4139f871800699af6eb8e0acd6a3d3b3b1b5dba74c1fefdfb83aafca0f5560643cf84448c1d3d26a83fc28383cd8545989d950d557222a66b371caa3a88450b73e072ca501c129e7be6594f05040b2cb6e3b27bf76eecdbb7cfc7f1e6f3dad7e4aff639bebfa37fdac8d8fb5dc4360c58bb7a0d9c0ec9670c784bfe1e3771f92b573537b41a0c87aa0e4271ca484b490d4ad0fe3bebb57eb1ea86e3c78f4396654c9b36ed8c7d81e68bb2267f3524bbc3333f2a0858197c07acf54a48846c77a0675c3c529292d1597541959c7039650cba756040c11cd30dd456d76056563664c9e901b0a9862b2d25158e48bb8790045a6cc638dd8315e0477af79ddc270903060c08281a6ce99a8001a9c92988ed1123fcaaccf40c110cf8d333ffceb29a5f6c91a6b7de7a8b2c160b8d1e3dda6785526e7eb8f90320884bc618e5e4e450fffefd29393939c0a7e10b2871b5fff2e2c55457534b369b8d6a6b6be9e0c1833e24e8debd7b69f0e0c154ba63a7d8c7962d5b68f8f0e1b47af56a628c516161a1201e8b0a0be9c0810374d34d375144440431c6c86ab58ae3b566b554be440adfc66ab5120104c6283b3b9b7ef8e107fae8a38f02fc51ffd7dcfc4e9932854e9d3a45abf3f3c916164653a64c2100347ffe7c717efec4f2afd2c7628c517d7d3dbdfdf6db94949444bd7af5125fd866b3f9b0ed661f883146ebd7afa79f7efa89c68f1f4f64b10860717f48f84a5effecd34f3f25c33068ead4a9c291e5be1811d1a953a7e8d4a9533466cc18dab2650bcd9c3993c68c1943151515244912592c16922489ac361b31c3a0fffeefffa6b66ddbd2c48913c962b5faf86367eb6772c6df62b110790173f3cd37d335d75c43ab56ad0ab806302d492cbeb3aed3a8f474fa8ffff80f5ab26409111125252551efdebde9a79f7ea2828202e1839ecb795e14c01217c662a5d7972ea386fa13f4e8a38f92c562f149ed58bc80b1582ca4699ac731371859c942390b16d275119d28252d95c842c2c1678cf938ce3ce2dbb3670fd9c2c368f2a38fd2b23797d3a0614368c4c8bb69ec7df792e1bde056ab956a8e1fa77b468fa175abd750872baea0394f3d45ddbb77279bcde6013e63f4eebbef52797939f5ec753d25a7a61059c86749387ef30d3082e9fb9a233cfe198bc5e2f3109185886c56bae2ca0e346ecc58dabaa584b6956c15dac63f3a158e7c781831307af8e18769dfbe7d54b0762d01a0acac2c628cd11bcb5e270b882c202206cfcfc5eebc07f38f78697062bc370d83c016a6a035dccce3a8aab282356bd6b4e8dc02cd5dc625c55b3cb553c9298278340fe07f7de932284ed943982a2a64bb03d18a8a47264ec2e48726c2a5a8e8dab90bea6beb70f4a723888b898523d27ec65190cc54a1602626cd5c52b06bd3a4b9c1e069cdbfe1fa5e9ef575cce5342d4c2dd4751d477f3a821baeefd5ecb46b3a06dd3a105d3b77c1775bb705ed1ebf687d2c7f1e863f79056bd7d2d1a347e9aebbeef249d0fafb20dc67e2efad59b386ec763bdd71c71d3efbf70ff9ad16abcf7676bb5d24a78988ea6bebe8c88f3fd1f8071fa4175e7881dab66d4bf09a228bc5421f7ffc317df6d96774d96597517e7e3e5dd1be3d4d9a3489eaeaeae889279e205555059f660ee785c6f59c94d0c49caad09adc5452bcc5a37d2d56e14f72f3dd262c9c2ce4d1c2e9e9e9f4d7bffe954a4a4a845f151e1e2e8ec1353a3ffed5fff99f3476ec58aaa8a8a0cd454564b5d9e8befbeea353a74ed1c2850b098cf9f07317b5c632279af9eba6a626a42425a37fdf7e683ad578da48c5acc90a377d0ba74342c19ab53e2cbbff136c9e235a52bc0551b282fbc68e13535a1880f8d838f4ea79bd484a97eed889c4f804284e19b2e484e29010d3b51be6bff022c080b7df7c0b008eb7910000194b49444154d1ae280c193418ba5b3be3b86dff59589aa661f9eb6f20b6470c24bb03fdfbf6c3eed25d3edac347fb79a72747a92edc7ffffd2da696cc5a4b6b72e3e84f47901017ef594bc8aba1faf7ed0747a41d5b3617ffdb3516fd2b00d592995ab972a5c8d3f1562b6e225a5af74fd334dc3bee1ec4c7c6c1d0f4d32e86642e942b29de826845c5dcff79cab3ac9bb7724071caa2e6bd60cd5a80c1075cd18a0a67a41d51aa0b13c63f8898ee3d204b4eecda591a380cb7850502ccaf5f5ef212a25d517044dad1b57317c89213f1b171d8f18fed0133becc5d44d3a74e83a2283874e850c02208019c9f779bac1933a1ca8a18e5bdbe601d24bb0363478f09c81f5ed4c032bf6e6c6cc480010390dc27a979b06b2b3a4b8a8a8a608f88c41f5f7e25e0c20403162748b76c2e46b4a2e28fdedc19bffe5da3a27143624f5136c32713d7d5d462f8d061703965b89c32a25d5190ec0e748e8ac69ca79e165ae04c4b9a982b318a8b36c31e118928d585951f7c88a26f0b71dbb0e188525d88ed1183ed7fff47e00039efb5395475100e8743e450fdc527ffe705d6817dfbe15254b1848ba1e9484b49852c39f17dd99e7febb275e7ddc76a8977f9e8a38fe8871f7ea019336688f09af3399c7ff2f7c90cc3a077df7d973a75ea44a3468df2898c78e19cff3636abc7f729292921788bed742f67b4bb6c3731c64851145a387f3e01a0993367d2d75f7d456d2f6b47efbeff1ec5c4c434efcb66234dd34892242280c81bcd995348e685c2b95fe776bb29cc1646b367cfa6f0f0709a3a752add75d75d94949c4c6fbcf10675edda951a1a1a68ead4a9545b534304f2c9118231baae5327cacccca48282023a70e080f02383a58fc0188131929c4ebaebaebba8b0b09076efda4544443366cca0b0b030fae31fff48d656a69c2e581fcb7f0007008c1c39123d7bf6144b9308bfc7afa4c3bc6d4545059c4ea7180d69687a50f3e36396bc2a60d1c21ca892134bbc6bd500c0a6c26fe18cb4635ce6688001cb5e5b0a97a2223e360ea5a5a5e2e99f3563a6a8d9e2ed62a21b06a75f368ebf9f9bb308aaac607446a63043bc41f6e489060c1b3214f688484c9ef4b0d024c2147a1b5c2b2b2ba1aa2aa64d9b767a0b61ca0c5455547afa1bbdb56d9cd18f525d41dbf22f1a8dc5493f8b492b6dddba958a8b8be99e7beea1f6577620b2783818ff6890972e5bc94204a2f9f3e7d335d75c43f78f7f80181891d577bffcb7cff1bca5cf8c403a813a39ec04f212b0160fa9690004023df8d004ba6be4dd545d5b43f78c1d4735478f1159885e58b880060d19ec89be008261d04705eb68d8a0c154b6b3942c64219bc52a348d99f52710fdb0e77bcac9c92100f4e28b2f7abea785c81a662310e8b2cbff8396bcfc12fdf6b7bfa58f3efa88befaea2b62bae18916c9f33dc96aa14e9d3ad19d778ca0fffdd3475471a09c08cdd12fd7981e82d5138e32308a8888a03befbc93f2f3f3a9aab292888846dd7d371163f4b29744f58fa4898834432746b87009523373ce55fb82050be8eaabafa6071e7840948df803d01f9c951515f4c9279fd0902143a87dfbf6643531ddad35c9eddab523bbdd2ed227dc7c3a1c0ed2759d344da3175e7881860d1b46478f1e156020229a3b772e75ecd891c2dbb6a5366dda905bd7e8fbefbfa771e3c6d196e2e2e68702cdabd7ebba4e608ca64e9d4ae1e1e1347dfa748a888820abcd46baae8b55ed89886459a63ffce10f1416164659595974f0e041017ef3b5494f4f27b7db4d050505e2fac24467f8502d5e363f3d3d9d6c361be5e4e41011d1030f3e481d3a74a0d5ab57535555954f0a8dff0eb385f9f4235c70c032a71e2c160b959494506161214d9830812ebffc72c1c97090f08b6d0698d566a3c58b1793aeeb9ef489f73d7f5fac258dc92f58535313353535519b366dc4cdd7348d222323c966b3096ee899679ea12bafbc92de7bef3d3a75ea141111fde637bfa1f1e3c78b87c0ed769335cc463f1e3942e3c68da3f5ebd793e13d9f305b98e0e45e7ae925dab3670f454444d0238f3cd2ccac7bfd2273f9cdad0307d2840913e8f8f1e3f4c4134f043c9c00a8d78d37504a4a0abdfdf6db74ece8d1806b66e6b6f8b5eb75c30d949c9c4cebd6ada37d7bf752fb0e1de8fef1e3c9ed76d3fc175e24ae98cc4d2796e6d3bc3081e5ff34e4e6e6d26f7ef31bbaf7de7b035214fe20f4fe930e1d3c482b57aea4f4f4748a888810fb323beba7d398369b8dc2c2c228cc5becc66f6a4d4d8d70bccddaefaaabaea20e1d3a90c562a1f2f27271fe1d3b7624abd54ab70e1a44b1f1f1821875bbdd949595452b56ac10ce33d30dfabfef7fa0dcdc5cb2582cb470e142b2da6c64b1590334390785a1eb3465ca14926599366dda44cfcc9b27ba8fcc1ae8e14726536d6d2d7df0c107a4691a8585850970714dce016b3083c842f4c8238f90aeebb474e952d2358d1e78e001bae6da6b69c3860db46fef5e62ba21ce87a7c68cf3d8e5f32f63de6d361b7df7dd77545252420f3ef820b569d3c6c7a6f30bc32f08d7340068c9922564b3d9c4137f361a8befbbb8b8984e9e3c294c94c562f1e40ebd793df3be8a8a8a44e2b96bd7aee2a61616168ad6b10f3ffc90baf5e8e153e03777ee5c9afdf8e31ea0da6c3479f264d2348d6eb9e516bae1c61b09d4dc0266f609ad562b959696525e5e1e151717d3d2a54ba963c78ef4f6db6fd35fbefc33b56bd3567c5fabd54a696969d4ebc61b68e9ebcb04e8c2c3c3c5753147d1fc3837f4be91525252e8830f3ea043870ed165975d46e3c68da3c6c6465aba7429596d363234df8a59dbf98c1aff958cfba851a3101f1f8f868686333655f0a8ee606515ec11914167379c4d8e32232303aaaa62f3e6cde27cf2f2f2e072ca58b430c72722cdcece862a2b58bb2a5f4c0e3c70e0005c2e17ba75eb26f8b2e3c78f635656b6205879cbd71dc386e3b9b9f3d0352a1ad727f60c68c3e275f1665e2f2e2e0e8e483b3a47458b75ad65c98984b878ecda592a2245ce57151616425555e4e4e4045cef6063900cc3c0b66ddb204b4ed1965f57532b9a74c5b05d8616a3db0b8ec7b2d96cb477ef5efaeebbefe8b6db6ea376edda09136036055c537153a8691a2d59b2843a75ea448f3df698a8c53a1b35ed538e42449224093e6adfbe7d1416164676bb5de4db2a2b2b69e5ca952449128db8fb6e0fc766b1d0471f7d448661d0942953443ef3aaabaea2e79f7f9eeebbef3eb17d9b366d68e7ce9db474e9523a75ea14cd7bf619baa2437b9ff30e0b0b234620989c98bbeeba8b060c1840999999d4d4d848b70e1c48d3a74fa79a9a1a9a3a752ad5d5d5118184a6bfe1861ba84f9f3ef4d65b6f516d6d6dd046dea6a6269f92e6ebaff75462bcfffefb74e8d0216adfa103dd77df7dc418a365cb9691db5b7b4ff06d1ebe603516630c59595970b95c671cd7c8b589dbedc6b66ddb10d929028b73f37c58e2b36d5bd2340d2e970b9224f93cd199999990ed0ecf6c05efe7a64f9f8ea8a8280f03ef65bdeb6a6a111b1b8bd8d8581c3f7e3c2867b47a553ee263e33c3d86de54d080d4be41af87dbed16ed65e63c275fea4eaca4ead63073fa0cc89213c3860c457d6d9d0faf575e59015555919d9d1d387bb5858c475151115459c1e3d9b3c0740327eaea1117130ba7431273e4ff158c3c9d2b70f8eb8019e3cc33cc5595153cfdf4d32d96b8041bba3f2673341213133d8b7f9fa634e6f42708ec2edd856857146efdaf5b7c88c984b878b1b22a3f4fa74342bfb4becdd3670c8635f9ab11a5ba3063c68cd392bf9b376f862ccb90240913264cf0b92e01abbc8289b915c16afb4b4b4bb17cf97254965760c4ed77c01169c7d0c1437c8067683ab2bce42d07857f3fab7f9a0706c3c8bbee46e7a868549657c0d074bcb1ec75284e195933668a6b6326ad7fd15ca1ff1a34e229f14ea0eb99e00148c070b516c0f0c17bef43b23bc4fa7cc18692b5c60f60ba8167e6ce836477f8b0cf3c8f668f8814ddd6b3673d0e597262ddda029fe165a9c929b04744a2aaaaca87ddf76f369d366d1a6459c6f0e1c3515fefbb1a59616121cacaca9a2b1e4c794c04a9d7eadab52ba2a3a3f1d08313507dec38860e1e226ebe195c1507ca111f1b87fbeeb95720c9dca7297c56d3549d2d9b8be17448cdfb32186eead71f8a5346d9aedd3e0b85fe62c06a69ca2fff3f9f2db0e0c5f9411b2f835502d456d7e0fac49e18326870408a27e882e167d0586929a9509c32d617ac131778ddda02381d12eebff73e684d6e1cacac822c3931a0ff4d3ec36ef357ae6a5e00dcef01329fcf534f3d0597cbe53341909bca37df588e88880874eddab5c5357bfcab15a64c9982f1e3c77b663f180c8d274f21313e01b2e4193da0bb35f15d5e5abc04aaaca0a8a8e8f44d12bcc0cffbb0778e8a161300577ef02114a78c7163c67a4a98cef37cadb30696ffba33e60bd7d4d4843199a311d3bd071aea4fb4589be59fa15f9c9b8788eb3aa1b868738b550bad8d5a4a77ec842c3991189fe0e912f68266ea94c7e0744858387f01c080d9b31e87e2949b97a8f3e6e7927af741e7a8687cf9f917c147713360e5071f42b23b101f1b27c6489acdd5bb2bde814bf1e4f8cc3ea4ffc3685e0556d4719934e7ae9da5a29c67ea94c7505b5d03ddada1aea6167dfbf6c54d37dd14e003065c27effe0a377deb33235e777bca9164c9e9a9d73acfa326e9e798410e020e84828202d1e7c61dc26033adcc2abbaacab34e0c5f12c47fe8d8d9ca92bcc5e8dab98b47ed1bcd37aa7fdf7e509cb2180e1217130bc9ee4043fd096106f8b8c9e43e4981f3afbcdf61cfee32b8141551aa0b7ff9f2cf428bf06585fdc77c07d3288661e0e4c993d8bc7933cacbcb838e0be7602ddbb51bb2e4843d2252041d8c31ac59b30691919178e699677c06e8061dfeebdde7e3d9b320d91d38547510609e62485972227de4a8f35eaff5b3a242f3053b76ec185253539192942c3480ff64e060662d2bcb3329e5c0befd013334fd2b175a2323efba1b92ddd13c77dd7b0125bb0337df3400ba5b4349f116284e19e9234789cf1c3b72146929a970292abed8f0798bfc4e729f24a8b282bbefbc4bdc20b3c6dab3bb0c3bfeb1bdf94619c1c75ce6e6e64251149fc859d3349f48f1f8d16398f6d85444a92e24c4c5a3e678b5cf22e763c78e85a228cd15a90c411f5e3ecab27cff01b814155933668af37be2f1d99ed9ad3c2afe25a3c2607ec2e2c58b21cb32367cfa59f393dbc262447cdbefbefb0eaaaa22cf5bdaa2bb0389443e9baab5e04a4d4e4194eac2a98693e2291e3b7a0c14a78cd7972e1364a4d32135d31acc33985671ca9838e121a1e5fc9d62c6185e5ef21264c9294647a626a74071ca506545fc566505cfce7bc6e30e04296a648c61d9b265501405313131d8bb77af4f84bc73fb0ecc9b331789f10988525d888b8915857ae66bb169d3a6e6a65aaf76d659f35c6a7fd3cb3bb915a78c2d9b8b6168ba985698dc27e9bc6a2c0bceb28b91139ae626d123478ed02db7dc42f1f1f1f4debbef1118f33430587c33ff9cbcd3348dc2c3c369d2a449545454441bbffa9aaebaea2a2f391998ad37ff3e930c1f3a8c4a4b4b29313191dab56b47f5f5f5f4dd77df51e7ce9d69fdfaf5d4e1ca2b69d5ca95f4fbdfff9e860d1b460b7372286be64c5ab76e1d5d7ef9e5f4cd37dfd0951d3bfa248f7d1a3f19a8b2b292de79e71ddabc7933959696fa90c39c10e529ababafbe9aba74e942910e3b45464652646424c9b22caa3fdab66d4b7ffdeb5fe9f0e1c3b47bf76e2a29de424d4d4d74d9659791dbeda651a346d1e4c993c929cb9ec656ab45346b10114d9ef4307dfcf1c7b46ad52aeadda70fc1420482a7edcbafadce62b1507d6d1da5a6a6922449f4d1fffe2f1111e52c5c48afbefa2a3dfcf0c3347de68c5f86200d180ce61deaaa38654f5d782bb55e7979395c2e17162c5810b4d4f85ce5b9b9f3a04a4e442baa68ebea16dd19ffbb6e7db3b92add85285941b4a262c8ad0311252bb83e3e01656771fedcaff962c3e7626412274bbb464543959c88edd61d5d5c517046daa13824b8bcc371f9f975565d90ed0ea89253b4fe27c62760c2f807b1be601d8e1d391ae0b731d33d003c857d8e483b9e9cf578ab4dd9ead5abe17038b0fcf53744f3466a720ae263e39ae75968fa197b18cebb8f653e00f757e6cd99db2a06979b973973e6409665d4d7d79f3e643e4b3951578fc7b367c1116987d321e1d1c98f88e6027325e7a8bb478ac68a01fd6ff2a93f3fe383e5d72193b728178a43822a39e1744862b81b9f9ecc49dbe2a2cdf8e0bdf7b138370f390b16e2a5c54b90b360215e5ef212befaf35ff0d3e11f5b74f67d9a45e01ba566a667c0e59481b360d0870d1b86f8d838fc78e8b0a01f5c8a8a450b733c95bafad9f187e78dc7e2001b366c98870cada96dd513c313ce83070fc6e4c99383725c3f478285f42dc9b7df7e8be2e2e2a0ad552d7e7f34fb31e61bfced379b7ca236ae8179f345b0a931c15e078ba2cdeff135a5cd11df9afcd5e81c15ed694e6de5835d525202597262fcfd0ff88ca08c8f8d13344db073fb9725a1b9bfc39b4877eedc49131f9e44eddbb7174d12672aa7b1582cb46bd72e5255d5679e824f43c139fed8bcd59afc1cc3c3c37dfe3697d6a4a4a450efdebd7d6ac8ceb47fe66d8ae565d49a77585b4a5a2a5d7f43af80390bbcb88f375cf897019993eb8d8d8d22094e160b81880c3032c0c4ffacde3a4ff390ba4e9d3a91dbed1603ddce74fd8988e2e3e329393999befaea2bfa66e346628cd1b469d3a8a1a141d499592c1671ed5a33f0e4e7d5633190d562a5dada5a7aeeb9e74892247ae8a1873c99fb561e9b3bb8bceb998f9f3697dc9eeb8fb9e6c97f0807af593277d8983b5ff8399df687d78b831108a27ad4ec20fb1732f29a2c73fd143f1e2f3c2422baecb2cb8881f9fc582d5601641004704507b9c5f7816d8d62e083edf8449a279f7c924e9e3c49bdfbf4a1010306d0ebafbf4e35d5d5e21cf9f7391b7059cfa12e86744da3156fbd4d7575753477ee5c71b15a5b884744d4b973672a2828f09487984a40c4f08a73fc3117bb99b596b9a4c762b1507878383535350556b49e61ff3098678687c54a56b210f31ecf5c2e0cd3f41c5ea1c9cfcbffe9373f109aa691cd62259bc54a1690d04e16dee265b08049830068dd9fd65393e6264976b6daea00a088c8487ae8a187a8a2a282de7cf34d0263f4bbdffd8e9a9a9a448dfdd9de57f1bdce9a6ed00d6a6868a0b4b4344a4848a0d797bf21c2ebb3a9402c2929a1499326d14f3ffd447dfbf6a56bafbd961445f9d91351f8d8237e31cc5d34bcf61d80a8c03457b29a6732b42461de9b72b2b191dab56b276ed2c99327a97dfbf6c27470ad0cd38c097fbac4df84b769d3466837337dc1bf537878b8a767312c8cf6eddb479507aba8acac8ceaebebe9c5175fa4112346b48a92696a6aa2b66ddb92d6e4319ffdfaf5a3e3c78f53515111758a88a0a14386d0f1e3c769e3a66f443d98b989e35f022c02515e6e2ee5e5e5d17befbd474929c9cd379520daaf4e6706cd33483ffef863fafbdfff4ed5d5d5b473e74e3a5157fff34aa2bd1a8303c55c67cfb586d56a154d16dc2c72cda29da1a0d0e6e586b8efc601cb01a2eb3ab56bd74e1cdb5cafcf416d6ea8308f71e2836bcde391cc0f4bdbb66d29363e5e741d25f44ca4ebaebb8e6ebef9664f53edd97291ccd384bb282787727373293333939e7ffe79cacfcfa7d9b367d31b6f2ea7be7dfb8a01c0ade93938238fd55255417d6d1de26262c5c2d917f282d721695de45c73bc1a31dd7b20313e017535b5a83850debc102943c0a0939f151572ffc06c938988bef8e20b6a6868a069d3a6354f3236759684e4c2177310a1691a5dd9b1233df6d86374f4e851faf2cb2f29222282ec763b6ddab489746f9684978e9f17e71d7e33ae1863f4da6baf51444404f5ead54b389c44cd23a64372618bbfbfc415c39d77de49369b8d3ef9e413b2da6cd4a74f1f3a74e810edd9b3476ccb83a09f0d2c7f5fe0c89123f4cf7ffe93eebfff7e9f95b6ce85e708c92f2366eac0ec8c5ffd9fff49c9c9c9b471e3462240f86c65656522103a9b660beb99b495f9e07ffbdbdf48d3348a8b8b23c3443af293fdb70fa90fc93949b08e2743d7c52a1fa5a5a5a4aa2ab56bd78e2a2b2b85563b2f3c1647b41960656565141616463d7bf6249b5f84c02b1642727198427e8fb972d0759de2e2e2c86ab5527d7d3dd9ed76d1e8cbefef792348cde41d1fb2c118f3ac5763b2d53c4c0ec9c5610a39a0cc2e4cdb76ed044d62b158e8fbefbff790a811113e74c97963def949582c16723a9dc418a31d3b76f8984933df12928bc314723ecfac85fef297bf90cd66a3c8c848cacdcda5f6eddbd3f0e1c3c9ed76fb38fa3f8b20f52facd3348d344da33e37f626499268c58a15f49babafe60e9927691a72e22f16bec1e7be11116d2e2aa2471f7d54e4224f9c38412fbef8a267c9634e4f3026869c9c33b0fce97bce0c97ef3f2042d3d1a34753464606d91d8ee6aad1905c34d2d4d8483ffcf0037df9e597b47efd7adabf7f3f31020d1f3e9cd2d3d3292d2d4d2ce2605e91ecbc024ba8514da783070fd2c68d1be9cb2fbfa46ddbb651787838454747539b366da8a8a82874c72e12073e262686aeb9e61aead1a307252525d195575e49dd637af804626eb7fb9cd63b3cfb5ca149f84101d0d6ad5b03d6d60bc985275dba74a18e1d3bfaf412982923b31fc67d670eb47f6d129a9a8bcccc27c333e621b9f02558838bb970d05c11c2df6f6d330b975619cd60a51fe6ccbdc562a1b66ddb9e75e94c487e395011356756cc4baf98dd20b3463b5b609d95c6f25785fcefb3519121f96505a6758d38d03865c45d19f3bd3c57ad755ae79d6ba3d381cc0caad614ca85e442601b2c01d645f8cbe49963ca176200c153dbaf6b14ee5d48ea5feebc8724242d4928840b4908582109012b2421608524242160852404ac905ccaf2ffb7eddc027a04483f0000000049454e44ae426082	image/png	0
2001	Chantier sur l'espace public sans barrière ou information et présentant un danger	1	2000	174	1	\N	\N	\N	1
2002	Chantier sale sur l'espace public	1	2000	174	2	\N	\N	\N	1
2003	Chantier sur un bâtiment, sale ou dangereux	1	2000	108	3	\N	\N	\N	1
3000	Malpropreté	1	\N	0	6	image?resource_type=image_type_signalement&#38;id=3000	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e2000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070d3b2cbd0dab65000020004944415478daed5d675814e7dabe67661750699aa2d2a528cd4615142b206aec3d267a2489294663aa2539277e29c61c1335ea31394934c6181b583856c4a844ca221a2b454445ba4847ca9699f7fbb1fb0eb30b1a8c9eb89cec735d5cbbcbcecececedcf394fb7d0a4308213089491eb1b0a653601213b04c620296494cc03289494cc032890958263101cb24263101cb24266099c4042c9398c4042c939880651213b04c621213b04c6202567b124110c4e7861945f4b5f451ba8d5aad062144dc07cff37aefb555e83e351a8dde6b41102080800050f31a10a0c59fe16f3001cb48846118bde7f4e24a2fb0741b9ee7c56de47239188601cb6a4f2bc771208440ad56432e97b7195474fff49102946559b060400401724e0606d0fb13785eeff38ff53c9a12fd5a8a5aad06c33090c964ad5e748d46038ee3c40b484f21cff3da8bcfb250a954303333d3d3848220b4d8a7a1f03c0f8ee3c4c77b81ee5e4037d4be14e426601999f03c2f02826118bd8b452f3435892ccbb6b898f703cafdcc31dd8746a3d10323fd4e9ee7c5efe6384e4f2bfe1ee04cc07a0cd2d4d4040b0b8b161758ea57498123d522d2ed6fddba85d2d252646565a1baba1af5f5f5c8c8c8c0ef9d6e6b6b6b787a7ac2dcdc1c2e2e2e70707040efdebd4530d1fd1b82460a2629d04dc03242279e619896a0d19d2d2208607417aeb0a000696969b87af52aae5cb982e4e464c8e572d1890e0e0e864c26c3d34f3f0d4767a7fb7eef19451a1886416161214a4a4aa056abc1711c3c3d3db176ed5ab879b843ad56c3cccc4ccfc997cbe5ad9acac7a5b54cc0fa1d5069341ad16f1204012c1854575723292909c78e1dc3850b17909f9f8f8e1d3bc2dbdb1bfefefef0f0f0809d9d1d42070ed4fa6c2a15e466665a3072f7d72284174440302c8baccc4c14141460f3e6cd707474c4aa2fbfd033b1f7339d266019a15f6578d1f2f3f371fcf871c4eddb8f0b172e80e33884848420282808dededeb0b4b4446969296edcb881eaea6a5cbb764dfc7c870e1de0efef8f856fbca10ddfee8b6a02304cb34624dad7c545451838702056ad5a053b3b3b9c39730600909d9d8de2e2625cb972450b260658bc7831a2a3a3f582873f5b64ff6ba0903ad486e13ac771addedd7a77392f8063398000b535353870e000b66cd982bcbc3c74ead409111111a2794a4d4d454a4a8af83d2ccb42ce7150a954a28693c96450abd5100c680b9ee77f3742aca9aec6860d1b60636383d7172cc03ffff94fc4c6c68a3486979717222323e1e8e8084b4b4bac5ebd1ac74ffc8273e7cee195575e31d10d8f1a58d489956a1eead05213d75af4c6300c588645c2b163d8bd7b374e9c380100983c7932222323111e1e8e9c9c1c8c1e3d1afdfbf747dfbe7dd1bd7b77f4eddb17376fdec4bbefbe0bb55a0d0b0b0bd8d9d9c1dede1e83060d424444047af6eca9fd7e4edff9168466d3c7b22c20105cbb760d313131387af4280a0b0bf1e5975f62cc98313033370700a8944af1f9b1f8781c3b760c717171100401fe8101f8f1c71f61ae7bdf4437fc17b8281a7ed3e7144cf491b2e40cc3a0a8a8083ffdf4138e1d8dc7f5ebd71114148459b366213232121d3b7614c1c0b0ac9ee30e1d31c9721c14a9a9f0e9ed0b2b2b2b3da04b233429d84530b32c8a8a8a70e2c4096cfaee7b5cbf7e1dfdfbf7c7e4c993317efc78585b5b83e538d12cdecacbc37ffef31f6cdfbe1d959595e8dcb93366cf9e8d679e79068ece4ea26ff87b1ad104ac07d458344afa3d3faabebe1ebffcf20b76eedc89f4f474585959212a7224e6ce9d0b777777ed859138bf57b3b3919999891b376e40269381e33868341a0c183000c1c1c15a2d49043d4ac0d0ec51ed2408024a4a4af0cb2fbf60c78e1dc8c8c8808d8d0d46464462ead4a9081e30a0c5311f4f48c08e5d3bf1ebafbf42ad5663e2c48998316306828282f4c85a7ae39878acff12c0044110b503bd83799ec7b56bd7b069d326fcf2cb2fa8aaaa42484808a64e9d8ae1c387c3c6ca1a601834d4d7e3c2850b484f4fc7993367909292024208acadade1e7e787bb77efa2a2a2028585856018062fbffc32de7ee79d16ceb9a1e6cccdcdc5a1438790949484f3e7cf83e33884878763cc9831080f0f47a78e9df4b4605d6d2d366dda84bd7bf7223f3f1fbdfbf6c1dcb973111111216a465eb79423d55094ea3099c2478628830bab0bf5eb6a6b71ecd831fcf4d34fb870e1026c6c6c3063c60ccc9a350b666666d8bf7f3f2e5fbe8ceaea6a28140ad144b9bbbba377efdeb0b1b1414040007272afa1a8a808172f5e44565616789ec7c48913f1e9a79fc2d2d2524f43098280fafa7a24242420292909898989a8acacc4134f3c819090108c1d3b1603060c80b5b5b5087c41a305d4b9b367b16ddb36c4c5c5811082679f7d1613274e444050a09e6f2665f3a5a6f571cbff1eb0049d93ceb250ab54b878f122b66edd8ac3870f0300860e1d8ad1a34763d2e4c9a8aaacc482050b90949404737373f8f9f9c1d9d9196ab51a7bf6ec11358d2008a279ed6465090f0f0ff4e9d3073e3e3e888a8a42a74e9df409544290909080bd7bf7e2c8912330373787bdbd3dc2c2c230e3d999e8d5ab97e8e349038dc6c646c4ee8ec137df7c83caca4a3cf9e49378edb5d73071e244989b9b6b3512cbb45805b81777f5208bdf26bae1776f150675b5b5888d8dc5b66ddb909f9f0f070707cc9f3f1fd3a64d83bd8383d60926045bb66c4156561656ae5c891933678a4e79614101388e839d9d1dbcbcbc6063630317171774edda558fe09446960cc3e0ca952b88dbb317313131a8afaf87959515664c9b86d9b367c3dbd717601808446841811c3a7408cb972f47595919642c27fa60fdfaf5c373cf3d27de2886c0a1dbc964323d90d2e36aebdae45f42631100bcc043c6727a51d4bd962ba411df89132770ec683c626262c0711c264e9c88a8d1a33074e850ed3ed0ec02098280aaaa2a088280a79e7a4a8c0ea594446b511c4b2f163d1e02ec8d89c19e9858a4a7a7430501111111a2cf464da2e10275617e01f6eddb875dbb76a1acb414ddbb77c7ddbb77a1e679848585e1e8d1a3f879c77604050569b51b0002029630e0351a703219042288807ad085ee3fc3c9352a11747f8410c2f37cabdb34353589cf6b6a6ac8962d5b484848087176762663468d26fbf7ee23b5d535cd3b22840842f30bba5fe9a3f4bbd46a35d168347a9f910acff3243f3f9f7cb9ea0bd2c7b7377177752343060e22eb56af21c5c5c5e2762a958a10428852a914ffb767cf1e327dfa74e260674f02fcfc490f6717322c6c30796ddecb24b0bf1f494f3b43820202c9faafd6118d46a377ec82f404191c9af43b8c418cce140a120d2565c83946c7031101e6e6e6282e2ec6ead5ab111313035b5b5b8c1b370ed3a64d436f1fdf66e716040c9816dace3043c0d0d9a56b83ad494a5232b66edd8af8f878989b9b63e8d0a19834691222478e04d165782a954a989b9b432e9783e77994969662dbb66dd8b56b17ea6a6a4108815c2e47d7ae5d51565686aeddbb232929093b76ecc0ba0d1be0e2e282d7172c10bf53a55269094fa2d5b967d2b40bd5fdfcfa8b3ed4e3f2a5da95f34ed343443090e6e8aea8b8086bd7ae456c6c2ceceded111d1d8d71e3c6e1c9279f14b7e5351a7072991e112a250da53f596a4e0d7d18faf99a9a1aecdebd1bdbb76f47d1ad7c38393961ccd8b1cd3e1b2331cfba17441070f2e4496cdab409a9a9a900b4590e53a64c814c26c3f2e5cb515b5b8b9090105cbc7811313131387efc3876eedc89f8f87874b2b484c0f350a954d8b1630732333391999d858ccb5744d0ef8e8d41fffefdc5736532850f20bc5aa355fbbca0353d7dfa101f1f1f121313239a256a2aa4cfa949134d92ce7c50f3421fa918be1604815cba7489cc9f3f9f74ebd68d787a7a92050b1690b38a3442347cf3fe546a3db35a595e41f6edd94b060f0a239e3d7b11674727326a6414494b55102210a2484925610307911ece2ec4d5a50771ebe14a1429a9243ded0c71b47720995732c4fd1e3b1a4f0686849241a103c9bab55f91b7df7c8bf47076217efdfa93b1639ed13be67b99edc725460d2cb5520b88ac8c4c1215399278b8b993f5ebd7938a8a8a167e456b806ae1b8e9004a1f352a3511742029cc2f202949c9e4db6fbf251f7ef8211933660c7175752523478e24313131a4a6a6468774417f7fba7d35dcad271bd6ad27fdfbf623ae2e3d480f6717e2ebed43b66cfe81108190825bf9e4b5575e251e3d5c89ab9333717674223d9c5d48ccaedd8408840c091b4c7ed8b4991042c8ddda3af2eacbaf901ece2e64fd57eb4849513199357d06e9e5e64ede7ef32d3266d468b2f9fb4d7a3784e18d61f2b15a3183743198e338fc9a9888850b17c2c6c606fbf6ed83978fb7b8ad342d8486d9d25c754110c0ab35909b99e9fc1388c978454545484d4dc5eddbb771ebd62dd8d9d9c1c5c505760ef6707070c0dffffe77f8f8f8c0d2d2528f1e00cbb448fa5bbb762db66cde8c9a9a1a30ba34e1f1e3c763e5ca956018065fad5d8b2d5bb6c0cbcb0bcececeb871e306e41c87cf3eff1c53a64ec5cfdbb6012c83bf45cf45424202de7bef3df474f7c081030770fcf8713c337a343a76ec88e1c38763efdebdf8dbdffe8669d3a6b588068dc9141aa58f457d95d89818bcf7de7b183a7428d6af5f8f8e1d3beaf148d21419ca76534ae1e6cd9bb873e70ecea59fc5a54b97909797879c9c1c31dda44f9f3ef0f4f484bbbb3b060e1ad4bc8c22e3f4280e691041088100ed77e6e65cc3fefdfb71e8c04114dcba85c183c2909f9f8faaba5aac5ebd1a43870ec5be7dfbf0e1871fc2d6d616fff77fff879b376f62c5279f40269361ce9c3958f6f7bf830802860f1f8ed97f9b83e4e4649c3973066fbcf1065c5d7ae0c30f3fc4ad5bb73078d0201416164210047cb17a35020202c0b0acc8895106de582a741e3bb0a40bb262b600afd53a274e9c4074743466cc9881152b5634f3473a0e49240459163957afe2d2a54bc8cccc141febebebe1eaea8a6eddba61e0c081e8d6ad1b7af7ee8d5e5e9ecdcebbd04c3c6ad46ac82491556141018a8b8b51585888fc422d61ba7bf76ed4565641a55241a954a273e7ce18316204bc7c7cb06edd3a383a3a62e3c68d387bf62cbefcf24b14171763d1a24558b07021b2b3b23066cc1868041ecfcf7a0e1f7ffc311896c5f7df7d87152b56c0caca0a8e8e8ef8c73ffe81356bd640a150c0dbdb1b363636484d53e08d37dec0dcb973616363d33e78eac7052cc34a12518deb3228070d1c081f1f1f7cfdf5d762cac8993367c0f33cd2d3d351545484dcdc5c9c39730632990c03070e849d9d1dfaf5eb07272727848686ea8351fcc5cd4f332e5f417d7d3d4e9f3e8d9b376fe2e6cd9bc8cfcf8752a9148b4fcdcdcdd1c3cd159d3b7786a7a727ca4b6fe33ffff90f3efdf4533c377b36bed9b8119faf5a85891327c2c7c7073ffdf413aaaaaae0ebeb8bd2d252fc72e204aaabaa3074e850545555a16fdfbef8e9a79fd0a14307dcb9730793264d4269692916bffb2e082158bb6e1dba76ed0a171717646565c1d3d3134bdf5f065f5fdfc75aced5ee4ca19402a04c769a4281175e7801df7df71d12131371e4c811949494c0cdcd0d363636080b0b43535313faf4e9a3d5447dfa34fb683a565a04b020e0ead5ab282828404e4e0e4e2727a1a4a404376fde4407730ba8d56ad8dadaa26bd7aeb87efd3a1886c1e8d1a3317bf66cb8b9b9c1dac606bc20f15d08101b138377df7d174e4e4ea8a9a9c1c08103919999895bb76ec1d3d3133b77eec44b2fbd044f4f4ffcdf471f61fcb871b874e9126c6d6d71e8d021d8d9db634f6c2c3efae823d8dbdbe3d91933f0cd37dfe0f6eddbf00f0cc4eddbb7515b5b8bc58b1763daf4e922c36e2c0bcc46bd564835144ddd95cbe4a8aaa8c4c68d1bb163c70e383939a1aeae0e79797958ba7429a2468dbae7bed4ba54604e26434e4e0e32323290959585acac2c28140a31adc4d9d919b577eb505959a9cd43f7f3c7d8b16331f3d9670100ce4e4eb0b4b4c4912347101616867efdfae96958420820104c993a1500b064c9123cf5d453484e4ec60b73e7a2aeae0ec5a5a5b0b6b6865c2e476868283efde4136466668265597cfef9e7c8cfcfc7a2458b70edda354c993205166666f8e0830fe0e1e1819e3d7b222d2d0d8b162dc2dcb973616d6323fa7db448b6bdc8630396987fceb0b873bb0cab57af465c5c1c2c2d2df1c20b2fe0b5d75e83b98505c2c3c3c1721c882ebf88fa64656565c8cbcb8342a1404949092e5dba849c9c1c71b5dfd7d7179e9e9e58be7c397af6ec892e5dba60f9f2e5509c49c3f3cf3f8f575f7d158ef60e7a7e9babab2b8283831118188877de7907003069f264d16cb32c2b362518376e1c727272b079f366fcfcf3cf081e3000c3870cc12bafbd06e8c8ca848404ecdfbf1f8d8d8d18376e1cb66edd0a854281891327e295575ec1fbefbf8ff2b232f4e9d307191919080e0ec6e9d3a7e1e0e8281e1335e7ada5539b80751fb95356863163c6a0e1ee5d4c1c3f1e7e0101a8a8a8c0860d1b448d260802323333515353838686065cb972053ccf432e9743a954a25fbf7eb879f326eceded616d6d8dacac2c040505e1effff8076a6b6ab071e346fcfbdfff46707030121313d1ad5b371d25c188d1e0e2c58b71e7ce1d2c58b000f60e0e208460e1c285282a2ac2823716b60838cc2cccb1ecfdf7515e5e8e79f3e6e1b9679f8546a3c133cf3c2352217bf7ee854aa5828d8d0d121212e0efef8fd3a74f63e7ce9d98376f1e581d2572f5ea55300c03676767949696c2c1c141abd175269d2e11b5ab2493c7ea6311a0b4a404a3468e446d6d2d188601a75b5f939a1f3b3b3bd8d9d9c1dddd1dddba7583838303ba77ef0e474747585b5b63e6cc99707070d03afa2c8b73e7ce213a3a1a0101013877ee1c0060f5ead5183e6204c0a045eed47befbd87d8d858300c83e9d3a763ecd8b108090dc5cacf3ec3b7df7e8b99b39ec5c71f7faccdca641931f382fe86258b1763f7ce9d98356b163e5eb102d55555983c7932f2f2f2c0300c020303f1f6db6fc3cdcd0dafbdf61ad2d3d3c56a1e00983a752a2a2b2bd1d8d888a49414f8fafae2a5975e425858183a77ee0cc2c0686804a30716cff320bca00df109417d5d1dfaf6ed8b8ddf7c83888808302c8bcd9b36e1934f3ec1f2e5cb317bce1c08b4eb0ac7a1a8b0101b366c406c6c2c789e879595158e1c3982eeddbb836159cc7be92524262662f8f0e1f8ecb3cf60dbb933346a35188e1573d52bcb2bb074e9529c3e7d1a1e1e1ef0f5f5c5cd9b37919b9b8b8e1d3ba2b8b818ddbb7747514931060e1c88952b57c2c1d1519bbe4217b775676fec9831c8caca42777b7b701c87caca4ad4d6d6222c2c0caeaeae78eaa9a71013138392a22268341a4c993205919191b870e102f6eddb870e1d3aa0aaa2123dbdbd505858088ee3505d5d8df0f0708c1a331a23468c78ec0512ed8f2015088a8b8b3173e64c4c9d3a15afbffeba36298ee7919b9b0b373737ade3aabb6bd7ae5983ad5bb7a267cf9e282c2cc4c89123a1502810161686254b9762e99225d8bd7b37162f5e8c792fbfdc4c7eeafc95b3e9e9387efc38366edca8ad0594cbc58a678610383a3aa2aaaa0af5f5f5601806969696b0b6b64675753516bcfd26e6cc99038ee54482926558d4d4d660d6ac5928b95580a0a0209c3c795274b8c3c3c3616b6b8b5bb76e89846e6363232e5dba246a6669158f5c2e47f7eeddc1f33c9e78e209646565c1c2c202515151181a3e02a3468dd26b0e6274b9588f5b63d5d5d5212e2e0ebb77ee4246468618f6bbb9b9213c3cbcb960c0c00c4c9b3a15d3a74fc7e42953d0bf5f3ffcf0c30fd8b66d1b8a8b8bd1ab572ffcf0c30f58bb762d264c9c0800f8bfe5cb71ead429dcbc7953bc20d47ff3f4f4149dfb5bb76ee1c4f1e3623eb934a54664e1cde4080c0cc4aa55abd0bd7b77bdf7af5dbb861953a6e2adb7dec2ac59b3b06fdf3ebcfbeebb080e0e46535313dcdcdcd0a3470f9166e1791ee6e6e66059164d4d4d28292941696929ececece0e4e484356bd6801082c8c84810a2bdf9ae6466c2c6c606c3870f47686828fcfdfde1e4ecdc1cdc70ec5f1b5884107cf5d55758bd7a35642c87a8a8286cfcfa6b1c4f48c0dab56b71fdfa75d4d7d763f0e0c1f0f3f3c3902143b42922d2e2018d063d7bf6c480010370faf4697cf4d14758b16205020202f0f3cf3f8bacfabf366cc0c68d1bf1d34f3fc1cfdf1f3957af62d1a245707070c0f4e9d371f4e851a4a6a6c2d3d313610307a2b6b656aca6a151265d976c686a82b9b939acadad3161c20444454521202040bc594e2726e2a5975ec2d75f7f8d0e1d3ae05ffffa17929393e1e7e7874b972e41001012122266a9dad9d9c1511705320c83b4d454242727c3c1c101757575d8be7d3bb66edd8a84840474ead40983060d120b3eaaaaaac49be3d5575fc5e8d1a30119670256636323222323d170b71e353535b0b1b1c1b061c3307af468787878e0ecd9b33875ea14f6efdf2fd6f1f9f9f9a15fbf7e707777c780010310191989d0d050bcfaeaabb0b2b2c2c8912361636383d3a74f83e33828140a1c3c7810070f1ec4f0e1c3f1cd37df80615954575561f6ecd9707777c7ea356b4074a9cdf1f1f13874e8107af4e8011f1f1ff03c8f828202a4a7a76bf3cb5b293c7de28927307cf87084878763c48811d8ba752b56af5e8dd0d050949595213b3b1b573232b0e5871fb0fe5fff82a7a7273efbec3338393b232b3313717171387ffe3cce9e3d8b2eb6b6a2e9cdc8c840eecd9b0080daaa2a1c3f7e1cdf7efb2dae5fbf0e474747cc99330767ce9c41424202341a0da2a3a3f1c1f20f4da690e338ac5fbf1eab3eff27366cd8809292121c38700057ae5c41972e5d3078f0600c1b360c23468cc0952b5790969686b4b4349c3d7b162a950a8410d8dadac2c7c707818181183060003efef8635cbd7a55ac2b74707040585818fcfdfdb162c50a7cf0c10798346912c030a8ada9c173cf3d070f0f0f7cb97ab5786cb454ecd8b1633879f224cccdcdd1bf7f7f949595a1e1ee5da8d56a141717c3dddd1dd7af5f172911994c864e9d3a61d4a851c8ccccc4f9f3e73165ca14949595e1a7eddb01a2cd2e7dfdf5d7919696065757575cbc781111111198366d1a7af5ea05470707acd09592ad5fbf1ed77273019645537d3db66fdf8e9f7ffe19858585f0f3f3c3c71f7f8cbcbc3cecd9b307c78e1dc3a04183f0e3cfdb4cce3b00dcbd7b17519123d1d0d080efbefb0efe010128292ec691234770fcf871a4a6a6826118787a7a62d0a041080e0e869f9f1fae5fbf0e854281ecec6c242525a1aaaa0ae6e6e6b0b1b141c78e1de1e7e787f9f3e7c3dddd5d0c04f6ecd983c54b97e0c08103f0f1f1012104757575183d7a345e7cf145cc9933479b014aab89756b94c78f1f474a4a0a121313216834183e7c381a1b1b111f1f0f8661d0a14307dcbd7b17f5f5f5fa991684202424049e9e9e58b87021121212f06b52120e1f3e8c279e78021d3a7400c33058b97225020203e91d8711234660e9d2a558b06001626363b165cb16242727a3acac0c93264d828b8b0b323232909090004110e0e5e585dbb76fa367cf9ed8b673870958d491ceb87c0573e6cc41454505a64c9982e8e86878796bf3aeaaabaaa0502870eedc39242727232727071a8d06dedede080a0a42484808bcbdbda152a970e2c409a4a7a7233d3d1de5e5e5b0b0b0c0b061c310111181679e790616161658b1f233ecdab50b070f1e849393b609dac58b173177ee5ccc9f3f1f7ffbdbdff4a22b9ab64c9bd46eddf2233efffc73ecdfbf1f7676763875ea144e9e3c8983070fc2d2d212325d354e6363231a1b1b616e6e2e360ae9d6ad1bc223233165ca14787a79013a3f73fdfaf598397326962d5b8684f878bcfbeebb78e59557b071e3460080a3a3a3b82e7ae8c811949595c1c5c5053367cec4c89123d1ad5b37ac5ebd1ae7cf9fc7b6ed3f9b802536380383eaaa2a7cf6d967888d8d85200870747444787838424343111e11212e28d7d7d78b2631292909b9b9b9d06834b0b7b7476868283c3d3d11121202994c8693274f223131515c2f8c8a8a827f6000b66ddb86ae5dbb62d7ae5d2237949d9d8d2953a6202a2a0a5f7cf1855e55b15e9e936e117addba75387cf8303a75ea044208cacbcb71f0e041fcf4e38fa8a9a901cbb2b0b1b1417e7e7e73b16ba74e58b86811e64647eb9d87cc8c0c2c5bb60c2a950a0d77ef8a65fb53a74e85a5a5258a8a8a909090002b2b2b0c8b08c79b6fbe097b7b7bbdd691cf3df71c3a75ea846fbffdd604acd6c4d5c9196fbffd360a0b0b71243e5e64e4838383111e1e8ea8a82874ebd64d8c0e6b6b6a4473f8db6fbf8920b2b1b111c3711f1f1f141717e3d8b163f8252141e48dc68f1f8f975f7e19eebd7a4150ab71e3c60dcc8e9e8bd0d0507cf185b6739e46e045ce8a6558303a2d161d1d0d7f7f7f2c5ab4a845f18742a1404c4c0ce2f669b55ab76edd9077e3062a2b2ba11104bcfdf6db58b06001c030389e9080f8f8789c3a750a65ba75c3091326a0a1a101bb76ed424949091c1d1d3177ee5c4c983001369d6df5ce57494909befed746ecdebd1bafbefa2ade7873910958ad8997474f6cd9b205c12121008073e7ce212e2e0e8989892829298152a944dfbe7d316edc38444545c1c1d1b145925e9a42818c8c0cfcf6db6f484e4e464545059e7aea29040505c1d7db1b555555b87dfb368e1e3d0aa22344838282101c1c8cd041833073e64c4c9830010b17bda1a759599615830e854281175f7c11f1f1f1b0b3b3d3cb2ba3db16171661cf9e3da8aeaec6b265cb70202e0e5e3e3e5abeecc4091c38700077efde459f3e7d307efc78989999e1d2a54b888b8b8346a3c1a851a33077ee5cf4efdf5fdbfe9b650106b871e3062e5fbe8cb8b838a4a6a6a2b38d2d424343f1c20b2fe8a56e9b8065a0b1bedbb4495bbd2c933533e684e0f2e5cb3875ea144e9c3881df7efb0d1cc7a177efde98306102828383e1e5e5d56cb224a4eaf5dc5c1c3e7c18494949484f4f17cd544040006edcb8010b0b0b1417176b4d18002b2b2b28954a7cfad967080c0c849dbdbdd89c9f9337e7d32f59b2042e2e2e78f5d557c53232bdb6dd60008641654505f6efdf2f0623d6d6d62255c2b22cd2d2d270e4c811d4d6d6c2d7d71793264dc294295360656d2dfefeabd9d9d8b16307ce9c4d476e6e2e7c7d7d317af4684446468abea231653f181db09c1d9df0d65b6fe18d455a952e76af63f47db33b77eee0d75f7f1529014288360d39241421212188888880858585a8c9a44b3ae967ce88fe596a6a2aaaababc1300c6c6d6d515e56868e1d3b42a55289a93d440abcf6000019274944415496969618101a8abe7dfba24f9f3ef0f5f5d5a608eb7a8502d0eb174a65f7ae5d888d8dc5b973e760656585c8c84844454541a3d1e0d4a9533874e89008a6c9932723222202f60e0e62b262755515f6efdf8fd8d858646666c2cbcb0b353535983e7d3a162c5cf8fbfd4c4dc06a96b1639ec1c89123f52a81e909342c409502edc89123c8c8c840d2afa7919d9d0d954a052727270c1c3810bebebe080808402f4f4f1a8e8a6929bc4683caca4a242626e2f2e5cbb87eed1ad2d2d2200802e472391a1b1bb55a88e3a0542a2193c92093c9606565859e3d7b62f0e0c1707373838b8b0b7a797a8a1cd89a356b70e7ce1d8c18310201010190c964484949c1e1c387616666865ebd7a890bd1f60e0ee271011089dab8b8383cf9e493983e7d3aa64e9d8a6eddbbe3b959b3101c1c8c050b1668cf878e69a7b37a8ca522dae8803563da74383939e1f3cf3f172b515896d53333d459366ce343fd9fcaca4a9c3f7f1e292929484949414e4e0e6432199a9a9a10123c00616161e8d9b327bcbcbce0e0e8a8d5662c2b6a1ba2d120373717c9a9a9c8c9c98142a1c0ad5bb7c0711c2c2d2dd1b163473436368a0bd7555555e0384eaf35805aad466060a0b620a3b80856565618306000468d1a85808000383a3a8a37884aa5c28d1b37b07dfb769c3a750a05050598306102264d9a84b0b030bdc66acfce9889808000bcf5f6db7a371dd1bf071fbb185d0e46972e5d505252229e252210517b50e07092ac4a69793c055b972e5d3062c4080c1932449c7993929282b4b434e4645fc5debd7bc5fc762b2b2bf4eedd1bc1c1c1e8d5ab177c7d7d616f6f0f0f4f4f7878798a234fd46a354e9e3c896b577370f1e2459c3d7b562444cdcccca052a9743d26186874eb800d0d0d888a8ac28888700c183040af673c955dbb7661ebd6adc8cece868f8f0f162d5a84112346c0dadabad5b279168085c18c1eda34973122db6874c0f2f0f0405c5c9c5ec30e69ab1eb1f39d2e5293024e3acf06805e9f868080008486860244eb6fd5d7d72333331367cf9ec5e5cb97b173e74e9497974323f0b0b6b68687878796e90f19809e3d7bc2d6d616a3c78c01337a8cd607e238319bb5a6a606999999282a2ac29e98186cfafe7bf807066a0b31747d24a437404d4d0dbefffe7b6cddba151cc761c4881158b56a153c3d3dc5c893fe7e69bda046a3414d4d8df637e9fcb9e6f3a3edbd459ba73c7631b6b2fa1f7fd8425c9c9cb53d1b0c4ae71f557f0241105ab44852a954a4bebe9e285252c9576bd6926953a612bf7efd89a3bd0371767422e39e194b3ef9e863127fe428a9aaa8d4efdda07bae484925ae2e3dc4d7aa26a55e297e617e0179f3cd37899f9f1f19306000d9b46913a9adadd56b0b206d5d64d89b411004e2ead2836c58b75e5bea6f705e8ca97f83d1692c9ad477edda35b879b8eb352e7b54e9b9aded879a9be00103101414a49d22016deab442a140626222525252f0fdf7dfa343870e707171c1c0810311191989c0a0201041808d8d0d789e476a4a0a42424321373313d728e3e2e2909c9c0c6f5f1f7cf0c107183f7ebce88b51ed4ab5b0e1314947b050b780fa838d8d8de8d0a1835155411ba529a48970151515e8a5f371fe8ccc48d1f72168aecad6511813264e149306eb6a6b111f1f8fa4a4249c3871029b376f86b5b535860d1b8651a346c1c7c707e9e9e9b87af52a140a05140a051a1a1af0cc33cf60c78e1d080c0ed2038c61fba4d6c0219d73c8b22cfcfcfcc4f728a8dad282fc2f1d15f26a0d3c3c3cf0ce3befe0b5d7e7eb510c7fc6a8344392b1c5e408e8f7d0cac8c810db6b6766668a9febd4a9130203031119198988880874eedcf99edf71bf057ae9f66ab51aeeae6ed8bd7b37828383f51a94185b6ab2d1692c4e2683afaf2fb2b3b3c53b949aaf47a1ea7fcf645073a3a7c5244227a7d2fdf8f8f8c0c7c707efbdf71e8a8a8a50505000070707d8d9d9b500a874dfe28d748f295ed27ea8f47fb76fdf865c2ed73385d231c1c62446d92ab277efdeb87efdfa7d4ffc230e60f440d7da8c1dfa77bf895a4f3ffd34ecededa156abf53bd4480619480120fdbf34a26ded26e2791e252525e0795e2c8f1304412cbe68cb4df3678ad195d5320c836eddba212b2bebbf5256deda899702c790d1a75a4baa6d341a4d8b79d0b4af687575357efef967bd09f4f4b35250b4688f749fc9f3741f4aa5122ccbc2dfdf5f3c6e4ab7185b372ae30396eec4d5d7d78b059dff8df11d44d20ac91074527faeb551b8d266fdd27df03c0f8542818f3efa482fcaa3fba1e4ae34fa93560d49f3aba4a0a5bfddccccac39b3d540eb1946942660b54016e0dcc3050cc7ead5dd199ee847a1b9ee75210cdfbbd7b652b349c171352b1b0cd1ce3d3474f6e98d22058f21bd400c8206ba8d46a3812225b579dd8669c5273369acfb0be5830a0b0bc5136e6c77e43d830f8e83838383de24090a90b64e3c956a39e9aa03c330f0f5f5d5f33da98935b6662146092c4b4b4b787979e1c68d1bad9a0563164110d0b56b57319d86fa686d3d7e02d2224295fa581616162da26551331a91ce323a6051a7b743870ea8a8a868113d19bbb02c8b0e1d3ab47a33b4055c0c9a1d7da9a6d26834c8c8c81081259da723d56c2660ddc79400405898b659acf484b507add5d4d4a48d1a0d4ce183987169244af72193c9505f5f8f5ebd7ae90534523fcc98b21b8cd214520d555454d47aa58c114b5e5e1e944a658b28b3cdd12af47bb36a341a1144745d506a26ffc877fc65792c9665d1b76f5f1417178b8bb4edc5c7ba7dfb36acadad5b8d1cdb161433620d23a536385deff88c8c0cbdf9d48637a3c9c76a83c6a279e734446f2f8dc72c2c2cc4e2062971f9201a9752175217402e9783e338f4d135f2a59120fd0e8ee34ca6b02d3e069d427af9f2e576052c9ee7d1a54b1740d2d45f6aba7e5f63e95314b4a16e6ece35edf212c78a40325c99206dd8ff5f1a58b4bf3a5dec357454db03e560d85feb41dd0169e628c3b2282f2f07a02db79766974a1d7963e2b28c0e586ab55a0ca11d1c1c70e6cc19f1c4b507ad4541c148b8ab3f72e1a5e9c952d3e7e0e0a0f75dc61ad4181db0e84abd4c2643e7ce9ddb5d53d73b77eeb4a0471ef43748d7ff341a0d40082e5ebc28468152dfcd304fcc04acfb9841fa68666686dcdc5cbd84b7f64037184e709596dfb7d5c7d433a9ba6aa440daeae81e51a14963fd8e29a112181888a2a2a216a37c8d59944a25ba76eddaaa0669cbea81200822a0643299a8c18b8b8bc5aa23690e97f4bc99b21b1ec057292f2fd73301c62ee6e6e6e8d6addb03458286da8ade40946805b463f2ba77efde22ebe28f30fb7fe9a81000bcbcbc5050502032efed61bd90a62ec3201bb5adc978d240854ea350ab54b0b0b0100b4d0cf3c0e8678ce9c6335a8d450881a5a5251886414949c91fbafbff5b54c2fd80c2b2acd8939eb2e70fb2882e2d1c11031a3333fcfaebafe2fea4664f4aa61ad38d6794c0a227ced9d9198220202f2f4f2c4f7fec274c52bcd0da7a1ea76b1e228d70ff08cd40cd1ccdf6605916616161ed263a9619a3a6a23e036d8778f7ee5da319f5a1d16844b34cb50b3d36bafc44358b2160daa251a48e399d6f5d5551290e1c682f62b48bd0f4249a9999213b3bbbd51cf5c77227ea223529254001979d9d0d8d46a35d28362047dbea5c1b9a7bb55a8dbcbc3cc8e57271f0b909580fe100532d10181808b55a6d54a9c9ad55da701c87baba3a00809d9d5d8bf71fd48cd31b89d34d09e3791ededede26603d8cd035420ab22b57ae1895632ad54286c5101cc7a17bf7ee7a9dfd1ea418846a6b29208b8a8aa83a3701eb613582b400a1a6a6a65533f1b81d7829d0a40bc7d2a9a80f0b5c8d4683ebd7af8ba93826603d84f34e232e4208ba77ef8e9b376f1a55e356aa3da9234f8f8b365f0320ce5634f41fdb2272b95c6fe1ba53a74eda0e80ed6049cb688125f55f28e550595e019661612c0992f41869eb4aea038a7d15a0bfdef720c50e86991074626c7b49cd365aba41da0f4b2fa7895e182338b9b46a991e1b059352a9844aa56aee698a9679efbf070e697e3f6d53490881878787c9c77a585368b81ec6b22c8a8b8b8d826e90024a6ab2552a152e5fbe2c96671982e041b49634918f0e5497b6413201eb0f086db8414d083533b462e7714b6b553194c86c6868d04e5d6d25827d90a20ada4c97f258a9a9a9686f62b4897e86d4835aad360a5360488c4a7d220b0b8be694194964f7209a96520df43cc8e572300ca36dcc6b02d6c39b437a017bf4e8219e5ca33a71121f8afa414aa552cc48f8a3d4088d38a9c6a23de4198681b2a9c904ac87f161a420a23948c69a3d2a6d7744db0c917b6433b4457349234e411090939303b55a0d2b2b2b9853ffcd04ac87e3882837a4542a8d8679bf577447fb2d884b4f3a1328add8690bb068aebb34401004019e745c8b09588fce97a17c915188411ebbf478af5cbaac7ba16de64fb5993814a00dcebb54030240797939cc3b5840cd6b8c7a2853bb880aa5c09276043676e699a6cdd0e3a63d45e982322ff06dc02da34712e7e4e4c0c2c2421c1f6c02d64398423ab01b00eceded2193c950595969547e9521fd4029027373733d80d1856a994c068ee5daacb1a4bd4bbdbcbcf4fc2f13b0fe204f24f54b9c9c9cc0f3bcb60ccc88aa745af3b52808a49dfbe84232cff3d0f09a36fd7ebaff868606e4e4e488ff339664c7b688511ea96116a5a01b326ecc4209509a8c4787494901c1b611b054cb75ecd811d5d5d562d58fc9797f0891d20ad4df70707080adadad5181e85ec092d2052d3afa3dc02a7a938eb3cacfcf87abab6bbb28d6356a601932db8076709331f958f70217a5170c41f020a0a0fba56b8ef9f9f9e2940b93f3fe087d188ee3d0b163475cb870c1289d772978681f2bc33c77b1416d1bf80229084b4b4bc1b2ac98e4c798b21b1ee2a201e0893e73ede5e38dccec2c24a7246b372080a0e1c548c9b0abcb7f5553b506060d0f96d1d20b6a5ed3c20cd22599b6c0423ac8f3d6ad5b6059569bea0c9834d6431f14c3ea750e1e366c18faf5eb87d9b36763c6f4e9282e2ad2ab8ea659107f7686a961644839b847e50e1415154110043cf5d453268df5d0174b10c43b9b6aaddebd7be3c72d3fe2f3cf56222b2b0be3c68dc3e6cd9bc180d123541fd5856dab50e0531aa4ad03027e4f280f969f9f0f171797e61c2f93f3fe7077ab34bf5ddb1f0ac8bf750bb76fdfc6d4a953515e5e8e952b57e2e579f3a06a528a2d13ff0c9e474ade8ab4882040a356eb11a30f239465cfcaca12cda0c9143ee2c850c6c9f0af0d1b3078f0607cf1c517484b4b83b3b333789ec7f1e3c73175ea545ccdcafed34e7a6bed821886814c2e7f649a85eeffeeddbb625f77dae9d004ac3f2862958b200002c192c58bf1e5975fc2c6c606fffce73f71e0e0419c3c7912efbfff3e0821b87efd3ae6ce9d8bd2e21240f8f3c0a5a74574af1b1a1a1e9d7965185cba74496cedddde3a1b1a1db0c4620a86c5aa55ab101b1b0b4110505151817ffce31f183e64084efef20ba2a3a3f1f9e79f43a552a1b4b4142fbef8226a6b6bff14e0b7183722085029956287e787116a5e799e47535393d87ebb3d2de70046da14846559141514e2dffffe37e6cf9f8ffefdfbe3ca952b28282840564606e6cf9f8fe79f7f1eeffffdefe0380e4b972e45464606366cd880651fbcff5f37d3d274637abc66e6e6225bfe28cec19d3b77c4043fba3c644cb595ed0e58b4af544242021842a0562af1f24b2fa19b9d1dee36d4a3bea61684106cd9b205d5d5d558a53393d1d1d1d8ba752b860f1f8ea0a0206d4103f3e8c7fd4afd3fb19591a035872ccbc2dddd5dd43854cb180e0d6f8b39cccfcf07cbb2b0b2b2fac3fd1f4ca6507ab742cb5e373636c2d9d9195bb76ec5dcb973713a2909e7cf9fc792254b606d6d0d9ee7b17fff7efc67ff7e8c080fc7bc79f3505f5f8ff5ebd78b5532f4423e4ae2543ae6adb5712c4f3cf1849ee952abd52d72cc7e6fff32990c2a950a1cc7c1c3c3a35d01ca688145f9e9a6a62671106654549458b01afdd24bd8b16b17ba3cf9247842b064d932949694e095575ec1d34f3f8de4e4649c3b7b16900cef7ed41a8b2e38d34a1a86657145e75fd13a40ea84cbe57291896fd358399d76cbcbcb436363a308d0f6948b65b474832008f0f1f1116b0af3f2f29a9d67b51a3d7bf6c4b265cb0068ab8fdf7cf34d3cf1e493081f3e1c72b91c3b77eed49bf4fea8392069271c9ee7a1d6cdfc615916fdfbf787b9b9b9086a6913b6b64476749bb2b232d8d9d9e9458926603da429645916bebebe90cbe550abd57ad32964667280653069f2640c1a34081a8d06a9a9a9485728306dda34a8d56a2426268ad1d57f2b9aa2268be338c8cdcc70fbf6ed160d78f5b4da1f0086ababab9e7f25989a823c9c29e4791e76f6f6f0f3f303c771888f8f476363a3de764a95120b172e84b9b939388ec3be7dfb4432b1b4b4143068dffda83416a51ba839a4fed38d1b3710181828a6ce18663648b362dbca9549a987f6a6b58cd61402c07befbd07954a85868606fcf0c30f1004014ab576d9c4cccc0c0141da6e7fdedede484d4d454242022c2c2c2093c9c01b4cc67a5417c55003d2d7e5e5e5623591d4a793fa646d3906c344c1079d296d02d67d442e9743e079f8050662c89021686a6ac2dab56bb177ef5e98c9cda0e6357a1ac1d6d616b76eddc2a79f7e8ac6c646d8dada8aa9cc34dffc51cd4d36ccb5e2791e4410909b9b2b6a4c4390187eb62d04299da343b59fb14d9e6897c0e2791eac8c03afd160c5ca95da105e10b0f8ed77f0e3f79b20676500013e7cff0398c964e0752933d5d5d578e79d7750555585e79f7f1e7535b5e018565b1d4300c2eb67774a23b5b6664648d38f29974508414545056c6c6ceee9ac538018f67ca0cfc5d70468b85b8f6347e3c1312c58866d71dced428891094f84e61782f6ef6a4626e9e7db9bb839bb90febdfb9060ff001216124abc7bf62263464611ffbefd482f377712bb731721bc40ae5cba4cfaf6ee43faf7ed47d2521584f00211343ca1bb56abd5e25728954a4208211a8da6edc7c8f3441024c7c90bc4ad872b397634bec576e24f916e2f795fba0d2184e4ddb84946478d22fdfbf623b939d708afd61022b4f29d462ec6a7b1740bc93ccf8be99a8ececed8b56b17acadadc1701c9c7bf480bda323fafbfba3aaa606d5b5b5f8e8934f3079da342d55e1eb8b949414b8bbbb63e6cc9958b3668db8a647cd0dd550d2a90eadf567bf97d6a2a68a1082baba3a68341abd820f430d63d8fe88f26b54036a341aa4a4a460dab469a8ababc38e1d3be0ecec0c96e3c448b95d510ec688767a17f33c4f948d4da2e62acc2f202fbf348fb8baf4202e4ecec4c5c999f4efdb8fc4ecda2d6e43856aa575ebd611676767326edc38a2502844cd64a8299a9a9a1ef8f8a89c3ff71b71ebe14a0af30b442d64a85deef75aad5693f5ebd713575757327dea3452595ea1f77b0441202a958ab427314a600982209e78f1220a8468546ac2ab35a4a4a898285252495aaa82d454556bcd052f10c20b22700441206ab59a088240b2b2b2c8c89123498f1e3dc8d2a54b494545851ef8e8766d11439329080249faf53471b477d09adbfb984e4110f43ecff33cc9caca22e3c68d234e4e4ee4abafbe6a0694d012c0edc914c2980f8e9e58c38b41ff4f81712f6d60f8b9efbefb8e787b7a91003f7ff2e5aa2f48c3dd7abd0ba956aa1ee8d8341a0d110481c4eddb4fdc5dddb4e0fe1ded46bfabb2bc827cf6e90ae2d6c3958c19359a645ec9d08249e753d1dff120be9f0958bf2354ed0b82a07761e849969a33a989e0795ecf313774d0054120d59555e4ab356b49dfde7d48dfde7dc8dad56b484d55b5a8f1da2286dff1c53f579141a1035b38d952cd2b1e8740c8914387c9d0c14348809f3ff966e3d77ae06e4d3b0a8240541a35114cc07a3833d86af44404f1c44a4fb8542b185e48437f8ae7795133d556d78800f3efef47de7ef32d525254fc40c74af7bf6eed5764e6f4198408f7d69e4aa592dcbe7d9bcc98369db8383993d75f9b4fae5fcbd57e8646ac7cf3f14bc12b08426bb83301cb58fd384208a9acac246bd6ac21bd7bf726aeaeae64d6cc67c9d1c3479afd1c6a9a747fad8177f3e6cd64debc79cd00903ae64a15210221470f1f217efdfa9321438690d3a74feb6d23d5d0ff2bc290f6b656f0089873e9928b5aad865c2e07cff3d8bb772ff6c4c4e2b7df7e43a74e9d306dda344c9830015edededab41d86014173a3122965a056abc5ee7bd26c4f5593124b962cc1fefdfb111d1d8df90b5e47e7ce9d4572567a2ced2943f477d73aff6ac0a25c126d38225d4c96c9b48cfecd1b37b06ddb36c4c6c6a2a1a1016e6e6e98316306860f1f0e2717e716ab041450d2ec5296659192928277de79078286c7c68d1be1e7ef2f66b5d24c08ba406db80f13b0daa1881d025be971251d58c9f33c7efdf557c4c5c5e1d4a953a8adad85b7b737264c9880c8c8c81683932860737373f1edb7df62cf9e3d080f0fc7c71f7f8ca79f7a1a4410c013416f21bbb5266e2660b54391f6ada24207844ba76218ceb4e1791e898989d8bd7b375253535157570737373784858561d4a851502a95c8cdcd455aaa02bffcf20b3a3fd1052b57aec4b061c3f43491b408439abf454db20958ff23e0929a45ce2057de107454ab088280d3a74fe3c08103387efc38aaaaaa606e6e0ea552895123a310151585b163c78293cb5a7cced0a79282f77f49fe72c0929a4169254d6b9accd0c4a9d56a31e74aa552b53ad880576bc0d1fd1002b08cdebea56930d27d4b416c02d6ff8003dfdaffe823ed09419f4b81d71a1069a12da09d57c8721c04d2aca578228063d8165ab1ad83c84dc032c95f5e58d32930890958263101cb24266099c424266099c4042c93fc85e5ff01cb858931b9efeeb30000000049454e44ae426082	image/png	0
3100	Corbeille à déchets débordante	1	3000	108	1	\N	\N	\N	1
3200	Colonne à verre débordante	1	3000	108	2	\N	\N	\N	1
3300	Déchets divers légers en sac ou en vrac	1	3000	108	3	\N	\N	\N	1
3400	Malpropreté du sol	1	3000	\N	4	\N	\N	\N	1
3401	Grille d'arbre	1	3400	108	1	\N	\N	\N	2
3402	Jardinière ou espace végétalisé	1	3400	108	2	\N	\N	\N	2
3403	Flaque d'huile	1	3400	108	3	\N	\N	\N	2
3404	Urine 	1	3400	108	4	\N	\N	\N	2
3405	Mégots 	1	3400	108	5	\N	\N	\N	2
3406	Grille d'égout	1	3400	108	6	\N	\N	\N	2
3407	Déjection, crotte de chien	1	3400	108	7	\N	\N	\N	2
3408	Fiente d'oiseau	1	3400	108	8	\N	\N	\N	2
3409	Feuilles mortes	1	3400	108	9	\N	\N	\N	2
3410	Autre	1	3400	108	10	\N	\N	\N	2
3500	Chantier mal tenu	1	3000	\N	5	\N	\N	\N	1
3501	Barrières et informations	1	3500	174	1	\N	\N	\N	2
3502	Propreté du chantier	1	3500	174	2	\N	\N	\N	2
3600	Graffiti	1	\N	0	2	image?resource_type=image_type_signalement&#38;id=3600	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e20000001974455874536f6674776172650041646f626520496d616765526561647971c9653c0000032469545874584d4c3a636f6d2e61646f62652e786d7000000000003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520352e332d633031312036362e3134353636312c20323031322f30322f30362d31343a35363a32372020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a73745265663d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f73547970652f5265736f75726365526566232220786d703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f702043533620284d6163696e746f7368292220786d704d4d3a496e7374616e636549443d22786d702e6969643a32374136393546394139333031314533384239454535433446373037323534432220786d704d4d3a446f63756d656e7449443d22786d702e6469643a3237413639354641413933303131453338423945453543344637303732353443223e203c786d704d4d3a4465726976656446726f6d2073745265663a696e7374616e636549443d22786d702e6969643a3237413639354637413933303131453338423945453543344637303732353443222073745265663a646f63756d656e7449443d22786d702e6469643a3237413639354638413933303131453338423945453543344637303732353443222f3e203c2f7264663a4465736372697074696f6e3e203c2f7264663a5244463e203c2f783a786d706d6574613e203c3f787061636b657420656e643d2272223f3e5f96fde8000012cd4944415478daec9d0bb85555b5c7e7392088813c1450791a881c05c31015a5974f344bd2302f66975be6fb6a6a756fd74c7b79532bd34a331f15994956f440b9dc7c929750514411319087a24008140f8108f69dff6fffd67726abb5f7d97bb3f7e2ec75c6f8bef1edbdd75eeff95f63fcc79863ced590cbe59c8949b5a5d16e818901cbc4806562c0323131609918b04c0c582626062c1303968901cbc4c4806562c0323160999818b04c0c5826062c131303968901cba48d49fb4a366a6868b03b57dfd2c9eb40afddbc6ef53adfeb9696362aa78cbdbddde3362587793dcdeb68af877bede3f56f5ea77bbdd0ebbaaa1d49282c574dea4edee1f5eb5e97abc9d127bc7ed5ebd3fcfe4e4bd4a82c8c18b0322ffd01911a6e87d75f7a1d863b94eceff551fe7fb701cba414d9d3eb3440b31c379824477afdabd7070d5826a5c8a980ea2dafc7b5b0ee1fbc6ef37a40358065e9866ccb003e27e3ee8ac94238d6d1d538b0012bdbf20f3e9f2d61dd39a41c3a56e3c0594937ec4b5ea68bd7e110d30d3c856bbc2ea96a289daef4467b7855025179a757b8ae96645be4c54a58773de4bed180e5dc18af63bd7ec0eb3145d67bccebf7bdfeaa0eaea981eb791779a7c3f91e8a5204dff57a1f6028244b02125f4cba7b1d85b5bac0eb08af2f11416eace82aea94bceb66ffdaeb5a9e463dbd3ff67a99d733bd9e40e3e8fb2d5e37f3a49fd3ca4125204dc5dae638ef87bddec4b59cee753c0f4a8e6b2b666186b2de0f0a181191fb3bbdcec66de6623ac5e5b3f3998d0a3ba07aa2aec66ceb44a673b3f76bc1faea695cecf50d974f16b64691fbfe19d7a508ed64724c49d646d7f09facfbed22fbd47d59e4f5195c69284a886e621fabbddeebf50caf83bc9eebf535febb0b2b9a29601decf5b35e67787ddceb1fb958f56d9d1d5d700922eef50bb67d5f2b0051477861f760991a7e2e2ea8776cddfff2ba806b181efcf775aee993058eb387d749006860b05c56e855afaf7b3d9ef5e232920778231e2013c0521fd6570297309727682d37b75f99fbbb2c30ef7a3adfb31bc0d49d5cd29584ff8ad49ef4fa05af9db1b877d2904382ede402b7c397b6732f22e0ed4d1a4154a0a9c071cfe7ba4f8cdddf259c4731f926dbde980560ed8f75caf17906cb9a788a8a11d11be128831338d9255e2f876b3d91a27bfba8d7dbbdce0234b9c08d2fe4fb95ac7f1ebf4f0ff6713a5c4b2ee90ec03532f8ff581ec0e905e8c051fcffcd60d93e5083e7f9fd7997cfd0ef1fdb7608e7a3fff6aa77607d22784aba96b9ed9d6c7b7591751449adf47a488d22ba6e58995f60657704605a8a6b1f024f1a84e5fa1bdbbf9ff5be16735b2f926392c55e16b3680d042edaee5f0ab8c347707ded83fce50cb6d1c3f61cdfbf94c0e5e42e5f9097a8776045a47414bfdb05e9849638955cc4f7bc9e52649d2fd34063aa74be6a2475f47ed0eb8fb02e1190d69378fc3e5c2629f9782feb1ee8f2dd29f3b16e1d82752642c2e763c1e332024bfc628187f1ab1c6340b04cfb59c5f22822fc9fd8767b024af1bb01f50c2c7186ffe3228f099e1ab9aebfb822fd5865c875f0ac2377114c72479fc645ad08c0a4e4e50358a696ba473a056eff5896fd9286ee9a706f8a3d580fb29fab12fe3b05027f4d6cf99158ac2b881caf49b076d300565d5bacc80d7e2b088f1b20f25a3eac0ac7f8014ff7591564f74fc545ebc97e2b00932cccb5588183cad8e747e05ddb480db8e05acbb5a8c7b19d00d233f6df5e806351118e3a90f55c2c52959bfe8db6ab6760456ef063b1e5c713c1ec578563fc8463ac28b1f1d460f7c335360509d9c9709a26c87039d6ae2b19ee75ecef8ee0ff71b8d3eb0a6c3f115e3609a03706d6ef39c8fdf884ed6e86ef8d2fe35cff9bf3bbb0dea3c24371032b01576360b5aad561de917d6f2567b45f11be36991bbb15f22b0ef55e9efa72cee74040f84322b11c566a2509ce3069db0f103f99b09f41b8da5cb08fcf24a455ee8f71348725dd8145ebdec2f976868be6388f1ef50e2c01e862dccc14d7721f5744ee0f26542e6794474468af28e0f69e0dba353e5ce1f57423d2da1c58ba995eefc10af42fb0ddd358b32eb1e5c320dc6f04c47b26e71b016f2d11e49084fdde1d006f78c2ffbdb8d6a9acf77ce8da5b33b07a919c2b964618cd933c37eca72a22e711c6cfc5e295631d571069c5c1fd8d84b0bf12f98fa0a7e05222ddce256ca7c8f6ef0911a008fc63e4a03e4c10f236f7cc61a57ec831cf2f90238c2ca652213fe558dfc31aff29b086bf8d4591ad0a582291135cbe27fe2900b01422f9a984f52fc15a6da11ba394ea8b312407a7c56f44091245524363aef275f23c0d2558cb3134c2ac04fe3289fd1f556110734b8174490e977c29df2706ff7f08d7fd48817d0f0650b902fa2054e19f1e80d602ac0958846d44166b884a1461a8be7a79cc725d0407580e81ede94a2febd9a3407f574bf2458e794e2c29a865bf2fb29dd21e9fc44a868d226bd03758ef2e9697db05f54eb67b2481cb8dc64dde0305d84ed2377c309ee61aba147920e4364f263da187fc045c6a874227d55a803507337d39f992bd83ff6ee0c60d0fb8c19220493715ab71618d93b1e348625e1403e9339ccb5738b7be34b6f24137b9e63e4c5ddf1f20d0d1a0857f0bf6f539969d5cc1b92de51e342580e231dc604fc097c3ed1e4717d06c8055d53ed1d602ac8590ccb89c1674275cc0b23e4163aec1123c5420cb1c59952e55b85767038e4fc7969f1358a12570a4c5c13285f5d7bb9d3b76a33cd2d420c33e0a323db98273bbb90857fa0eee4ed1e6c7b15ab958f7d18e32736a7503ac9fd16827242428a38bbf3be83a98c9b255b8994211a196df4af7c559bb709ffa92e5df946015e47ede472a600ad9f02958ab93dc3f77d646c4f805f861efc0bafc96144af732cfef58d7dc01dc25e11eeea01ba9539016097572995172dd00eb5c2ef08b0959e08110f8f941439e44e3ad273cbfaf400336c20ba2544063813ccca92443af8dfdd7054bb990c8ebb216d21f7bc0f54ae170b7705e61f5c199f0cc6b2be8de8a1eb68f06cb479053d3f27705d7fb3980bd94c8b047b579436b0156ffe0894bea239bc9d31d8fe4de13e451e61779d2cf2b925f1a46e0b085eea138618f9eea2f54f9de7f0a4bf2afc1b2ae44bacb13ba5a4a8d0ed7e1aea3d48a963d5a61c052f7c072419fda0448a55208b74378b77283c6256cd73ec8c74cace01e08b863b15af12847a17f545e33b6caf7fe1838d5dd0979291def9a32f7274b7463829bbb077ee5da2ab04ee4466cc21d443746950a0f90952e148adfc0d33fb106f7681ce7716695f72b6ef532c147280a4e3662459bcadc677bf8d6a544afa3abcd9dea11585d889eee83179d0d586e2e905b094dfbef68fc4e55be3fdd71b12bcbccd4972ad3e16efbc6967f86ebb96d7701234bc07209c47d09fcea08222f598fcf13e94c72cd754917d010b793efea1c7311fd21b2c7971156871dcbb7d6a881af230a1c9ff0904de1d8ef3760ed3ab09a482c5e05b7f94b905cccc5f22e61a19aacd7bd812b9d0ab7f811dcedcf6ee7925f25260f2b60e1a27ccf9f826e8bde35baff63b896a909ff455d3037641d58b51c09dd8744de48ba40a2a4e1cb84fa5bc81e8b5cbf84055392711eeb6dc36a3d4a74f4c160df02e732f6df95ff05ba3789be56c52c857256d1008bebd96e758dae7b16d77312a98c5b597e4490dac8fe4c8a35b458912b1361fd32e1f21d806a1bf9aad5709d95f092a8577d644274d417cb3380b07defc0b20934ea3a7a18606d0f540056b7878a0887a4745bc3ccfd133c1c51143cc3ed3cc62f935869a884339538b9ed2910f06964cb15216ec0daacc29545a34e060198617c972bb9d8ed5c5959d62986f76337b44103f9b2f14144f81656f52e405697c06a0d16eb04d73cfae3155cd019ae70719b035cca2047fd7297d6b94390cb3bda955fce63e4bd882b588185bab202d32f12bec0151f3e6ed2c6807519dc4656e7985db88e4389f614117ec09ab56d03eb6448f862577e86b990e55287f41fddcef55c266d0858bdb030eb08adab2597e3122fb1a66d9bc0baddd5a66240964a25bfaaa6dcd79ab76d016b38445dc5771d6b704d4983064c5a31b0aa350854516067ac562d72348fbb7c56fde3d6bc194461018ba5faf319aeb2f2db5245950f0f116d76b4566b1b166b283ac3d56ecaebed70ac464b3dd48754a333b417a4faf15ddc4f0396a92fa98aa82c46fd7b9a5fa10feba9ba412536d1ac2c261905d6be8062590bae4cfd852a69513583eab25439aab17a7ae3d44097ef601ecabe940bdb826e46d712210a64d7b97c5fe3cfad09b30bac8857fd95cf1e581bd53bed0368fab1ec202c5c38025aa3a435fe509dd3cf40d25f064c72ad6b0098c6e85d1f582ed5d0ff0a1056c4174c5a37b0dee453d3f428f37e08aeac576c3d8143b556ea909e03985e05381d882ab701c041006800bffb63c9c2d7cb6eb6e66bbdb2ab65331aaaa59137f1d12e2a8bf95f979fabe10540b40177260b17cd82dc1480b0276e353ea44985739a5248c582e30098f6af892b2a9efdd82c56ebb458aaca54bdd1bf13fecb0a6936198d2c9e0d801a018bdcdf04acd068d2139d12a2be8d00662e166d26ae7123964a80d3b0aa73f97cc29a2f7bc09ae8f203201c00b81a2ea591b967f23d5ead298ba5aa51558bae0630f320fd8bd0620180dce4af0156576bba6c02ab5df05dfc277a998f88f4725c9f2cd70a342a3f5e137caf44a2f17a9dade9b209ac49f02b558446f34169bcdc1d4479ebd1ed553e5f81f66d22ce3d5cf3fbf84c32022c71a84f60993e06e9de0451afb5c865ee475a63953561eb945de9d21190542d3a02f27e94abfd08df6d10fa3eae3a53739bb4426045a2c4e69b90f534de31bd8c68f3006bbe6c036b3ba45c1664af14cef9193eade82fe3c09244ef1e6e4ae19ca388b2af355ff681b502cb95c69c4dea938c5e16d9ce9a30dbc07ad125cfe5590b511fa126bf5725848ddcc938b094765072b47f0ae7acfc98e67f189012a733d98dc05a04b046a470ceea375ceaf21dd99681cf38b0b6c37dd48757eb095773b85e490f6bc26c034b320bd79406818f6aeb075b13661f5822d42aa1492371b902123fdc9a30fbc09a07e71994c279abaf5219ff612e9d6cbfc96e04d602f855ef14cefb0d544584edad19b30d2cd5af6b26bea1299c773467fa606743c0320f2c35b03aa3f749c98abc6604be6d004b79aca720efdd5338f7e8957587593366df62bd06c7ea95c2b9ebed12aaa37fa73563b68125d1302d65c4d3a83c5054a8c2bf43ac19b30fac57f8dc27258ba57ec343ad19b30facb570ad81299cbb12a45181a14d6d947160bd4d64a8ca8334de70358f08b49f3565b68125d7a444a972599d53029646651f614d997d8ba5996286b8eabc65be2559801b1c644d996d604996c07bd200d6b3b85c4b92b601602de5b35b0ae7bf1a122f4e67f5ef1907d63a22c334d2002a307cdae573677dac39b30dac6558ad61299c7f0e60f5b5c830fbc0522e4befe66b72e9d44abd40046a3c2be3c0d230b05769e83478cf1c3eadcf30e3c092ac025869e4b2a239b754e5b0a73569b681a57ebcad2959910d582dcdaadccb9a34dbc09205d9925264a8a4ec02a2429b2824e3c07a194b92c65be315193ecff791d6a4d906d6725ce18894ae4305867a49d4586789d24c034b8dacacf8c1295dc74278dd492e3fddb749468115117835721a457f1ab1138d6b3cd29a35fbc052f89f46065ec3cea28975cfb266cd36b054e5a09296fe295dcb34979f0a5c2f6fea644d9b5d60bd4203a735d84116eb29520e63ad69b30bac45a402d2ec6ab9896b3ade9a36bbc0fa3b56eb80145dd3232edf4fa99741d9dc591905560e60ed8fa6213ae624dcef506bde6c024bf267d20d3d53bca6e78846cf31ab955d6029b7a412e534ab3b4fe5f362aff7bb74f2682629032b9a2bb4965507ed707d57b97c35e9452e9fd7929ce8f50a6be6f4a5d6d30d452f20ef5b85074073ba6bf25c0d9c78b7cb4f13a92ea326c0a5791c34b0e236ace404b61d68cd9c3d60a99a541dd28339d63f4ad8664fd7fc7e68917e0d255337cdd12eff06578906512c75f924ec9d2e9fbfd26fd5db2bd3ff13d6db0a9937495976f565e3a580e4612cd6e1ae79b6e348de0158fa6359949a50deeb402c53d4a12c4bf412009a872e01a85a6f14964b91a05ed0d9c1e513a65ff3fa4062f8682f1baf5b60092c77d3d0eada994e23cbdaf463f90158a56e01dfdb4864370700a9b6eb2d5c9d807a10166c14c7d0bef60ad20d8f729c87bcbe5e302f61c0aa5b60ddecf57c08f5a1b8371d6c0b9646045bb5f17a59f9632e9fd87c0d80b5c3120dc17a1de79a47fdb4675b256095dd9f0f0867bbe602c32d2d9d9c01ab7e81751b2ef0425200c3705f8b5d7e469ae88df53dd143e05123022e25006982b595582db9c3a8f66a162eb2223160d52fb0e4aa9e74f9ecbbf8ce5ac0d40031ef07d80607ae6c43608116072a6bb6be9a176ec0aa6ff2fe5997ef184e120ddb7a110b349bcfd58175aaa918b0ea1b5892d320db8d58af05aeb9267e339f3bd2be7003562b049689494b62efa13131609918b04c0c582626062c1303968901cbc4c4806562c0323160999818b04c0c5826062c131303968901cbc480656262c032316099b435f97f010600004767b279830e690000000049454e44ae426082	image/png	0
3601	...sur statue, monument, œuvre d'art	1	3600	108	4	\N	\N	\N	1
3602	...sur immeuble ou mur	1	3600	1499	1	\N	\N	\N	1
3603	...sur trottoir et ouvrage d'art	1	3600	1499	3	\N	\N	\N	1
3604	.. sur colonne à verre 	1	3600	1499	5	\N	\N	\N	1
3605	... sur arbre	1	3600	94	6	\N	\N	\N	1
3606	... sur corbeille à déchets et mobilier urbain	1	3600	1499	9	\N	\N	\N	1
3700	Affiche, autocollant	1	3000	\N	7	\N	\N	\N	1
3701	… sur statue, monument, œuvre d'art…	1	3700	108	3	\N	\N	\N	2
3702	… sur immeuble ou mur	1	3700	108	1	\N	\N	\N	2
3703	… sur trottoir et ouvrage d'art	1	3700	108	2	\N	\N	\N	2
3704	...sur colonne à verre 	1	3700	108	4	\N	\N	\N	2
3705	...sur arbre	1	3700	94	5	\N	\N	\N	2
3706	... sur mobilier spécifique : RATP, EDF...	1	3700	174	9	\N	\N	\N	2
3800	WC publics	1	3000	\N	8	\N	\N	\N	1
3801	Sanisette, WC automatique sale ou en panne	1	3800	1488	1	\N	\N	\N	2
3802	Autres WC public	1	3800	94	2	\N	\N	\N	2
3900	Bassin ou miroir d'eau sale	1	3000	94	9	\N	\N	\N	1
3910	Canaux	1	3000	174	10	\N	\N	\N	1
3920	Autre 	1	3000	108	11	\N	\N	\N	1
4000	Défaut de signalisation routière	1	\N	0	7	image?resource_type=image_type_signalement&#38;id=4000	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e2000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070e0026632c131a000020004944415478daec7d777c1565f6fe3333f7a68724048590dc960669840e2114e95d563a092c2ab0bae22a1d57b12b824a11141777b1ac851ac0420b2022909002484b42a8690868482ff74e39bf3fee9d97b937ac65d7df972879f9e4931b92cc9dc93c73ce79cf79ce7338222234ad46b12449822008e0380e44048ee39cbe4f442022f03ccfbe561405822034ba6be19b6ee79d5f5a80a8601245917d5f5114288a62bf613c0f455120cb3288a851820a00b8268bd578960a169d4ee7649db4d64b966506a6db59b5266035ad5f0c362d90144501cff38d16504dc06a84f115cff32c7e720595eb52dda3d67d36a6a56bbaa5777e298a029d4e0759960100a5a5a5f8e69b6f505050c080d3b76f5fc4c5c541511448920437373727103659aca6759be81d9044113abd1e20c2aa55abb06ad52aa8b7c62689d0ebf578e49147307bf66cb8b9b9c166b3c1cdcd8db9c6a65d61d3bacde30df03a010402780e0aec41f9bffffd6f9c3c7912ebfef92fc44445e3dd77d6e0fcb97c66b1b4a05241a8ee2625496a0256d302388e03c771501405d9d9d9b0d96c48ecd9133ebebee8dfbf3ffcfdfdc1f33c222222a013742cf5a0028ae33888a2ddb2a93bcb2660352d4892c4d20b3967cee2befbee83e4b03e824e878b172f222e2e0e7abd1e0060adab678052241920b0ef3586e8a629786f0c21161103455e4e2eae5fbf0e1f1f1f9c3871029d3b7706c7f3b87af52a4c26133efef863ecdbb70fa74f9f869b9b1b424343317efc788c1a350abc6077a78d21e66a0ade1bc992651902c7a373e7ce282b2b63bb445f5f5f18828371eedc39c8b20cd99114edd6ad1b00a0b2b212f9f9f9080e0ec6bbefbe6b77956efa3b9e3c6d025623d91502c0e953a73062c4084c98300163c78ec5a14387f0ee3befdc8a5b781e8f3ffe38a6cd98010f0f0f088e38ea687a3a1e7df4514892846ddbb621223212843b0baca618ab31c457a20810e1dab56bf0f1f141dbb66dd1ac5933ecf8f24ba78234c77158b97225860d1b86c58b17e3daf7df43962474e9d2051b366c80a7a727a64e9d8aaaca4a7bdcd514bcdfdd4be7d8c99d3d7b1656ab158aa22069e244141717439665701c87d1a347e3c9279fc4d0a143515d598975ebd621313111efbcf30e049d0e6da3a2909c9c8c1f7ef8015bb66cb9f3c569fa9d2c49921afc9fa2284e9f5dbf27cbb2fdb5e6c32ada48212249914926856452485114a76358ad562222aaafaf6f702c22727a6db3d9fee76b531cd737392999222ca1d4b37b0245868651f2a424b298cc346fde3c1245d1e977366fdc44f171ed283c348ce6cf9d478a24d3d5e21232198c3472f888dbfebdfe2fd7efc6620982c0b6d18aa24014c50631842ccb8c5ec2711ca39828b20cce9e8784c0f100117870e008f60f879b912409b22cb31c90bbbbbb931bbadd527773bfc5f57df7dd779065193ffcf0031e7ae82194959581883077ee5c764e6ad967ecb8713874e810c2c2c2f0f9e79f63d7ae5d086add1a515151387bf6ec1ddf19fe2e80a5fe31d59bcbf33cf47abd1388546e12cff3ece7d5ef09bc0028041020f00238977fea965fa7d3391582553681f6bdd5a5feff6f13bb132a2b2b515757079ee7e1e1e1814e9d3a212f2f0f83070fc6bdf7de0b51141bf0af7c7d7df1c1071f40a7d361cd9a35008066cd9addf67c9bf258ffe1695601a65a22d57aa90c00ed1f527d5d525282a2a222549595233f3f1f1cc7c1cbcb0bd1d1d1d0e974080b0b835ff3e62c632d4912e342499204bd5e7f5bee93fafe5af2ddffb635074e9f3c059265e8dddc307cf8707cf4d147902409e3268c07c7714e96515114f01c0f701ceebdf75e242727e3934f3ec1d59212701ce7f4603501eb6796d56a85bbbbbb535251966566b98808252525d8b76f1f323333919e9e8ecaca4a3b7749561808dddcdc18898ee338787b7ba35b620f0c183000090909080a0a02cff3ccf588a2c85e6b6b733fe51e7f35b0380e67cf9e85878707cacbcb71f3e64da4a7a7232e2e0e7dfbf665a51e276bcc01a42810743a74e9d2056bd6ac41414101743a1d743a1d7b489a80f5334b05950a08f506cbb28c6359d958b97225b2b2b2a0d3e9505f5f8f848404848787233030108989891045118aa2c0c3c303fbf7ef87cd66c3993367909d9d8dd4dd7bb07be72ef03c8fa14387a24f9f3e183f7ebc3d86d2e9e1f0964e37f8b7ce635dbb760db22cc3dddd1d070e1c80af9f1f56bcb512e09dad247385045cbd7a15448480800008828013274ee0f0e1c3cc223759ac5f9aef713c85eae7fcfc7cbcf0c20bc8cecc0200f4efdf1ffdfbf7c7c0810311d0bcb96adaec8c010d203a75e9cc404a44389e7d0ca9a9a9484d4dc5ae5dbbb067cf1efce31fffc08c1933302929895154b4f19cfa59dbdcf0bfacdcdc5c66956d361b468e1a85f0f070305403ec3c8808b5d53518326408e2e3e3d1b97367b8bbbbe3ca952b100401ddbb77ff49926053bac125d5a0a6046459a6d5ab5753484808592c169a3b7b0e5d2d2eb1efdb65854821522499e5186c92c8d20d364974fa5aa15b3f2bd944da97ba9792264e22b3d144e1a1613461dc78ba7efd3a4b41b8a6366e97eaf86ff20deddbc55398c94ca14613458686d1a37f79842449b29f9fcb7b545656d28861c329cc124a2b97afa0a1838790d968228bc94ca1660b151716ddf17bd66880a5e692d41c11cb41290aa97f56c926527579058d1c3a8ccc4613252626527ac65192e916e0244962205191a305e4ed8020393e44f9168033d28fd2fd234692d968a2b898584ad9bce51660b5bfabc8bff8fab4f92fed2a2bbd49a1660bf5ec9148e1a16164369aa8437cfb5bc8773c2ca410e5e79da3e1438751982594e6cc9a4d450585643199293c348c4c0623ad7e6bd57f7c9fbb0e58b7fba32b8a72cb521191288a5453554d23870ea33093991e7f6c26959797db139e2e094eadb512adb74f6032103ac0a1dce69c2449a295cb57509825940cc121b470fe029245e93f266c7feafa6ef710298a42a2285246fa510ab384d29ab7dfa19327bea3cd1b3751a8d942cbdf5cc6aea3acf426cd7e7216594c66321b4df4e2f32f10294433fffa18fbbff8b87676103682d528622cd7dd951a43dd0a5409757575989c948c9c9c1cfce94f7fc2d237de80a0d739e5ba586a80032acacab067cf1e5cbe7c19274e7ee7949be2380e010101888989415c5c1c7af7ea0d10202bb78ea1c6504fcc9e85c18307e391471ec1a64d9b6093442c5fbefc57c52fda5485a2284e3b4a9d4e879c9c1cc8b28c4e9d3aa15d7c3cdac5c7e3fdf7dfc7aa55ab101818883f4f9d8af3e7cf63d7ae5d484c4cc4dffef63774edd60d295bb6e0cb2fbf445c5c1c727373111d1d0d388eab8d0befea184bfb546bcb17eaeb7973e692c960a4a7162c74aad1b8963a323333e991471ea1d0d05032198c643218c962b1d0b061c368e2c489d4a3470f32994c64341a292c2c8c424343293e269616bff432ddb876ddee421d6e5126c55efa1125aaaaa8a491234752787838cd9e3d9b59d95fe376b45652bb56bfb58a4c06239d39759a5d576579050d1934982c26334d9a3091366dd8481b3e5b4f450585b47be72e9a346122859a2d3472f808dab56327594c665afdd62ab2d6d5378afbd9a85da1fa7fe947d228222c9c860f1d762bfe529c8b807939b93476ec5832180c141616463366cca0eddbb75371717103f0cab24ce7ce9da3b56bd7d2238f3c42e1660b590c460a6ad98a9e7ff639aaa9a9b1c763442c7eb35aad545e5e4e43860ca1b0b030fae8a38f6ec53ebf2286d4824c1445521485814475e1a2d546a410d556d7d08c69d359606e3199a96d641b0a0f0da3e0a0d6f4e85f1ea1b2d29b743cfb18855942e98375efffe2f3b96b82771544aa05d282a06fafde640c31504e4e0edb9d59ad56fb8d95157aff5febc86232539b88489a3b772e5dba74a941b1f87637575dc58545f4d20b2f52549bb66431992931a107e5e6e636b02e8aa250797939f5eddb97cc46139d3d7d8659b85f63915d2d5d62420f1a3664e8ad405d56481625dabd7317fde9fe51640c3150647804c5c5c4d28471e32931a107458647508fee0974342d9d367cb69e0cc12194917e944821aaabab6b02d6cfb11852525228dc6ca1f973e7d96f08296cf746b2424fcd9b4fc141ada963fb0e74e4d0e1064fac2bb82449ba6d302d8a22151515d12333fe42a1660b858786d1d62d29245a6d4ee72449126565649231c440491327fd2a8b753b575f5f5f4f66a38992272591adde4aa4106ddab091faf4ea4d66a3890cc1219498d0832ee49f77da21a61d3e42bd127b52647804dd3f622419430c949591c9cee74eef0c1b15b06e07825ebd7a518425940aaf1430f7a4dea20fdfff80428d261a3e74185557561129c4766d6a6a41f90ff18d0a26d2b83b9bcdee82b66cda4ca6e0108ab084d2e79b5318ad859da728d15fa6cfa0304b286dd9b4f9175d9b164c2ac8eaebebe9dcb973146609a515cb9653756515cba1594c668a0c8f208bc94c1161e164080ea1f163c7d1d62d29ccfd575554528fee09146609258bc94c47d3d2d91fc735f6bc2b6933da1626c61c20e05856360aaf14e0be01fd613019ed3b3b590147c0e58b97f0ce3befc0d3db1beb376e80a7b797bd9140e75c34264da158100427b60227f020003c6eedd0c00163c68dc5ced43df06f1188675e7c1e39274f41e005d6abc7093c9e9c3d0bb22c63fbd6ad9045c94e2f2667d683f6b55adc66ac094986bb9b3b6efe580a81001d384c18370e591919ac90dca95327cc9a350b8f3ff1370c1a3218195999983b772e264e9880ca8a0af8f8fa62ce9c394e9a0e70bcc71d6fa868b419768568c1bcf964319969f7eeddb7ac99c31dcc9f3b8f22c2c2a963fb0eb46eddba06eec66673ce6fddce35288edd9f4ae873b530274f9e2493c9446346fd89c5529224b1386fc4b0e1146a34515e4e2e7363daf77275a1ae6f2e5a6df4d68a9514690ea576d131141511491ddbc593c564a6e44949ec5a55eb73e3c60d9afef0340a0f0da3c103075165790529924c3d7b2452a8d942a53ffcc812b8bf4945e0f76eb1d48abd4ae6e3380e20c237df7c83162d5a60d0a0414e4f60414101b66fdfceea6a8b172f46dfbe7db175eb569607d3ebf5b79a4025d94e3371581195d00722081c0f777777760eb22c33b25fbb76edf0e28b2fe2c48913f8f2cb2fd939aaf9a13163c640a7d3e19b6fbe713a3f2dbde676f54ed592e9f47a949696821378545757a35fbf7e68d1a205f47a3d264f9eec60cc71ccda356fde1cfffcd7bf307af468e4e7e7e32f7ff90b389e476262221445414141013897cee8bb9ae8e7eaa2d4a26c696929faf4e9c35805eafaf4d34f61b55af1e28b2f223b3b1b8f3dfa5754949563eeec39e8d8be0356ad7c0b7535b510ad3680005e4d9cca0aa3c46813a15ab725080203b8288a983a752a8c4623d6ae5deb740e369b0d03070e84cd66c3be7dfb58c78c9a00d57ed6aaeea912448a03d8858585a8adad05cff3983a752a2e1714e09e7beec190a14301ee56abbc16284b5f7f1d5dba74c177df7d87737979080a0a822ccbb05aadece16862906ae211ed8dcbcbcb83a228888d8d6537449224c89284fdfbf743afd7e3c71f7f849b9b1be6cc9d8bb4b434cc9e3d1b3ccfe3edb7df46d7ae5df1dc73cfa1a8b010b246c7801cdc2cadb681aaf6e25a0d50b95e4f3ef924ce9f3f8f3367ceb01bece6e686e09010582c16e4e4e4c0e6b8a9ae71a3d672a94c088ee318d8f3f2f2e0e9e989b8b8386cdebc1956abd54ed9e16efdae0a142d58a64f9f8ebaba3a7cf5d557e0791e9e9e9ef607a2918884349ae05da505ab4fdce5cb970100515151b75c874e87d2d2525cbe7c191cc7e1cd37df44626222bef8fc73e8f57afced6f7fc3debd7bb168d122dc7befbdd8bc7933faf6ed8b993367223b2b0b1ccfdb5d05c189c8a71532d3ba2a1508fdfaf5832008f8f6db6f1b04e56ddbb645757535ae5cb9e204a29f7287369b8d1da7b4b414b22ca3bebe1e5bb76f478b162df0e0830fc26ab5b2f757b9fbccbaca32ba77ef0e777777fcf0c30f282f2f87d56a657d008d412fab5100cbf50f218a224e9f3e0d4110d0b55b37f6870580acac2c701c87f9f3e7e3c1071fc4f5ebd7316bd62cf4ebd70f5bb76e4540f3e67878da34a4a6a6e2f5d75f47e7ce9db177ef5e4c9c381143870cc1d69414871bc26d29bfaebb3700681610807beeb90767cf9e6524c3fa7abb76424c4c0c0441c08f3ffef8933cb2069dc944b87cf9326a6b6b418ed7369b0d4b972e45337f3f1623aaec5895e8b7352505afbdf61a645986288a902409e9e9e9f0f6f6464c4c4ca3d06d6854164b95df2122787878a0aeae0e5e5e5e0ddcc9c58b17210802dab56b87a79f7e1a870e1dc2d8b163515c5c8c050b16a067622256ae5881fafa7a8c1a350a1b366ec4a79f7e8afbefbf1f57ae5cc1ac59b33060c000acffecb3069b07f53db41d412a080c0603eb9a01000f0f0fd6d0a0b5b6aeb1a20a562d31d0cdcd0de0385cbb760d5e5e5ee0380e5687e5f4f7f76f401e548f959f9f8fe79f7f1e5bb66cc1b163c74044b87efd3af2f3f3d1bd7b77f8f9fb83d3f40334592c8de5d03602a8f195fa67924509753535906c36bb7601cfa155486bbcfefaebc8c8c8c0638f3d86dada5aac5ab50a3d7af4c0c2850b515458882e5dba60f98a15d8b56b17264d9a84d2d2523cfbecb3e895d8135bb7a438dd085737484400c7411004141514dabb7ad47c1507b48989862449f6dc9343ee516dfad006f05a9ebcfa7e5959594c8f41dd50141616b28e22a6370a0ee773f3307ef418d8eaebb1f4b5d7f0f5be7dd0f13c4e7df71d4459c2ccbf3d0e599101eeb7ed20fadd07ef6aeca1c63eaab0185c9ebedcdc5ca7ae1cd50a346fde1cf3e6cfc7debd7b316fde3c346fde1cdbb66dc3800103f0f7bfff1d599999305b2c58fafaeb387cf83066ce9c89eaea6acc9f3f1f83060dc2962d5b980ea87a4c16d738cea1a6a686bd563b79b481b9ba33542d9e1abb69cf953d3c44282e2e06cff3e8debd3b162e5c084551b06ddb36272b5d515181d52b5762f8f0e1a8a8a8c0d2a54bd1bb776fecdcb99335998c183102717171ec7d0541b8f39d3a8d893daa26f54451a489e327d0b8316319b5584d2afe392999c24c663b4bd441ddd55291655122599448b4dae8ab2fbea4c1030751a8d9c2928e470e1d66f5b68ab2725ab97c05c5c5c591d96ca6c4c4444a4949699854558806f61f407f9e3cc5a96c444474f8f0618a080ba7eccc2caaafad6b504ad11216d5efa92cd709e3c693c960646cd7e79f7d8e2c26336ddeb8891449a66b57bfa7f8b876640a0ea1bebd7a53665a3a91acd0cbcfbf40119650ea14df9e428d26faf6db6f7f965c7857d60a9dfee08e3569c24456f15734d9ea956f2e238bc1c8b858ca6dd802aeb5c723870ed32333fe42c61003855942697252321dfef610034959e94d5af6c69bd421be3d19430cd4a37b027df8fe072cb35d595ec1f8efaeacd48c8c0c328618a8a8a0d0a920ad02ca956aadd6306551a288b0701a3f769c134579d890a114191e418b5f79958a0b8b68d28489b465c346561f5cbd6225859b2dd4af771f9a3f7b0e859b2d545959e9545cbfd375c246937957b5a0b4cda1d1d1d13877ee1cabf54992646f8d777441e7e6e440a7d34121e7a651756a83d615f4484cc4bbefbe8bb4b4348c1f3f1e870e1dc2830f3e88c9c9c93876ec18fc03023067ee5c1c3870000b162c407d7d3d9e7df659242626e2ef7fff3b52525260b55ad1b56bd70679a9c2c242787878a055ab560d18a3da54817667cb711cbefffe7bd4d5d5213c3c9cfdbf7ff300fcfbdfff46787838de79e71d8c1c3912c1c1c1b87efd3a5e7cee39dcd7ab1756ac58012f2f2fac5ebd1ac5c5c5f0f7f7878f8f8f93fbbbd3ad5f8dae56a87dd2d6fdf35f640c31d0b5abdf53bdcdca2cd6b18c4c0a359a68d3868d4ecd0cffa959c1d52588a248252525b470e142d6e53371fc043a78e01b66157ebcf103a56cde427dfbdc47a1660b8559ec6cd48307beb1bb410d83e0a5975e622e9b64672ba5ad576a7966b22c53564626ebb2916599d51fd5e3fcfbc38fa86fafde1466325398c94ce61003454544d2843163e9fba2622251a23661e1347ef4186a8cab5105ef5aadf3b8b838787878203b3b1b6e7a3766b1a2a2a2a0d7ebb175eb567b7293e39d843b5c83563510d7be47ebd6adb164c912a4a5a561ecd8b1c8cecec6430f3d8431a34763ffbe7d080808c0e83163909a9a8ab56bd7429665040404203131d11edc6b1813df7efb2ddab76f0f6b7d3ddb3daa164d5bafd4e9744e49cec3870f8388d0ad5b37703ccfea8f047b87779b880874ecd8113e3e3ee0380e6e6e6e888f8fc782050bd02a3818757575501405168bc5295da3d6429b76852ee50fd51d76e9d205eeeeee3874e8101452d88df1f4f242bf7efd909999695767516427da8db6c9413b1e444d34aa09580030180c58bc78310e1c38803163c6e0d4a95398316306faf4e9830fde7f1ff5f5f5c8c9c9812008183870a07dd7c7712c5794979787f3e7cf63f4e8d17077e4b55437ecb40374ec78b52ef4c68d1b501405212121cc9dcbb28c9494143cf4d043983c7932b66edd8ac0c04074efde1d1d3b76c4b973e7909494844767cc407a7a3a244982c16080a2282c5da382f88ee7b21a3383f4d1471fa5f8f878e7efdb44cacac82493c14853932713c94a83be4157972893c2f8ebac55cfe5ff88880a0a0a68debc79d4be5d3c590c468a0c0da3f6b1f61da3ca9dd706c84f3df514f5eeddfb171118d9ef39f8ec13c74fa0ceed3b30f7bb7d4b0af549ec491693994c0623c5c7b5a3b756ac74ea8b942489562c5b4e1693993ab6ef401693995277ef6994aeb0517742efd9b3878c46236dd9b285014e8d7192264ea2e0a0d6f4dacbafdc7617e41ad3fc27beb92ccb64156d4ea02ebf5946efbff74f0a339929c2124ad3a74f6fc0ed2a2e2ea6e0e0605ab972e5af63c83a521dc61003258d9f40d5e5152c85a2ed666e131149268391dab78ba7050b16301e3f29441bd76f20b3d14466a3c9ce736f8ab17e9adde0faf57df7dd87f0f070ac5ebd1a82606770f282004914b174e952b46cd912eb3ef8009f7ffe392449621f5af7aa1699b59243da1d24cff370d3e961b3d920080244ab0d7efefef06fde1c8220c0cbcb0b2b56ac606e468d935e79e515b46cd91253a64cf9c5252b9eb74b0f9d3a79121cc7212c2c0c13274ec4e1c387213b129bddba75c373cf3d8755ab5661f6ecd9f0f6f6464a4a0a060f1e8c4f3ffd14a428183f61027af4e8e124e7d4e8566374815a0bb461c306b298ccb4fccd654e6df3242b949f778e0cc121141a1a4a2b56ac60bfc376583fc1a7bf5d6e4965aee6e5e4525c4c2c998d264a3b7cc4991f2fcbb477ef5eb2582cb46cd9b25fdf3ba9107dbd6f3f0507b5661671f8d06114191e413151d154595ec1ae4fb5907bf6eca1b8b8380a0f0fa7552bdf229215da97ba97cc4613bdf4c28b4daef097f6156a33d5b22c539f5ebd29323c8272ce9c75069742b42f752fc5c5c5515858183df2c823545959e994cd578fa105ad16b85a8d08528872ce9ca50ef1edc96c34dd6a5cd0ac8a8a0a8a8d8da5e8e868aaafafff45c948f57ad4668d7756bf4d268391c24c669a346e3c2d9cbf808c21065afdd62afbf5c94a032af3cd9b3769e4c8916432185972d71862a091c3473401ebe75aa35c4b29eae78cf4a3141e1a463d7b24de7aa235bf7b2e378f7af6486431c9eab756ddca3729b7b75adad76a39685fea5e7be06e32dbbb6f648514497602e7c48913293c3c9c76eedcf95f3d3ca2d5468ffee511bb9087d942fb76efb1976d0c46aaadae71d25e70ad489c3d7b96da4444b2bcd9d0c143c8623237c5583fc7c7224d87891aff88a288ae9d3be3a1871ec2d5ab573165ca14949795b16c3cc771886cd306dbb76f67acca65cb96a15bb76e58b962058a8b8a587c75bb0e1a455170f4e8514c993c193366cc80b7b7373efef8638c193bd63e854be0d9f67de1c285f8e69b6fd0bf7f7f0c1d3ad4696ef3cf71fad54cbc4eafc7e5cb97e1e6e6065f5f5fe4e4e4a0a2a202e3c78fb7e7b2788ef1b7749aa2b6a22868d3a60d3a74e88093274f42916596e36a8cab514da67025c3b1af153b7565e28409c8c8c8404c4c0c3ef9ec53f8fbfb33bab1da4450545888d5ab5763cf9e3da8aaaa62f9aa6eddbac16030a0b94390ede6cd9b282a2a424646060a0a0ad0bc79734c9d3a15d3a74f87b7b737c07150e8963ce3175f7c8179f3e6212a2a0a9f7efa29fcfcfc7ef5e684e779c8a284366dda409665980c06545555415214a4a6a6a265cb960c582aa85c251fdf5ab1122b57aec4faf5eb3179f264b46ddb165feddcd1e880d5a814fd5c9f3ef6b5e38ffdde7bef2139391967ce9cc1e4a464ac59b3060683019c708bd26c3019b1f48dd7f1ccb38b70ecd831ecd8b1037939b9d8b8712323dca949cbf8f87874edda157f9bfd241e78e001bb54374335ec9d3d0a61fbd66d58b06001fcfcfcb0f89557e1d7cc0f20bb0628c7f35ad1bd9fbdb60b172e8064193c80e2c222f03c8fc7663d819641adec964de11a92fc0898317d3a92939319cfbfa4a4049224d915661ae1fadd4845ea743a34f3f3c3279f7c82a79f7e1abb76edc2c89123b17cf972f41f388015b1d527dccfcf0ffdfaf543af5ebdec3aa2b80504726179126fe75c69056405de9ec17fe59557f0c1471fc2a7992f3ef9ec534447473b8dcf650ac6bfb0b270e9d225b87b7a42912458ad56e8781d3b9eca3353ddb47a4df3e7cec3debd7b919898882b57aea0bebe1e5959594c33b531aedfd7c8130ef0f3f3c33b6bd6e089279e404d4d0d66cc9881193366e0faf5eb0d580e6abd4e9dfbc7f13c2451bcd554c171f60f974e6c8117702e2f0fc3860ec5fbefbf8fc8c848ecdcb913d1d1d18cc0a7d524fda52e5e51149c3f7f9ef1dc8d46236c9288ebd7af3bd197799e677935955d111d1d8d6eddba212323037e7e7ed8b46913626363d1a74f9f2660fdaf4b1445280ea2f2acd9b3b163c70e444747e3c08103484848c09c397370e1c205a71baa280a747a3d6b01d3e9f5506499592d68e2380e1c4e9f3c85a7162ec4f0e1c3919f9f8f69d3a661fdfaf5080e0e760292ea4e7f4988aab6ae298a82ab57af4251144c993a1563c68d43bb76edb07be72e94df2cb3377838a8cf274f7c873fdd3f0aeb3ffd0cd1d1d1d8ba752b76efde0d5996591fe2abafbeda68078eff6ec6ca69f95a8a62d76fe0781eb2242165db56ac59b306c5c5c550140546a311fdfbf747972e5dd0be7d7bdcdbe21e96f556c1a4bebe5a5282bcbc3c1c3a7408070e1c406161219b07f8e4934fa273e7ce10f4badbca70ff52d53c6d003e7eec385cbc7811d968d1b1400000200049444154d9d900808c8c0c242727a36ddbb658bf7e3dbcbdbdf1c9279fe0d9679f854ea7c3c30f3f8c59b366a1a8a808494949f0f5f5656c8baf76ec6096bc0958ff23fb41b518a228b2d8099c1d78999999d8b46913f6ecd9c3a668d9cd32078bc582c0c04056fdcfcacaba751cc776bede6643727232929393111717e77095b73f17b58dff976d09891dab53a74e888888c0860d1bd8b75f7df915bcf7de7b68dfbe3d162d5a84dada5a6cdfbe1db367cf86d16442566626a64d9b869a9a1a2c59b2040b162cc0b061c3b07af56afbf5e9844677cf7e17c13b717617419a20d7f5a612111212129090900000c8c9c9417676368e1f3f8e1bd7aee3ca952b282c2c645aeabebebe68d3a60d7c7c7cd0262202972e5dc2fefdfb3179f264c4c6c5316e1429e424dccfe230c7d7bf640284a228f6b1ba44282d2d45e7ce9dd9efc9b28c67162d82979717d6ac5983499326a175ebd6e8d9b327de7efb6d9c3a750a67cf9e859797171e78e001582c1636ae857350789a6a85ff6d669e1aca5e6b9569b4a3ddb48c515616d19480b66cda4c66a389d6fdf35fb7d49565850eeeff9acc21067a6ac14296b567150107bd4694a506f41be5175e80adde4a595959643299a84f9f3e949696e67c81b242578b4b68eeec39d42e368e0cc121141e1a46619650ba7fc4483b3d4621fa60ddfb643199292b23d389cdda54d2b9c3b5c8caca4a8a8b8ba33ebd7ab3ee1e15403d7af4a0d8d8582a2b2bfbc9e2f57ffbfed5d5d5f4f2cb2f53ebd6ad59d7d0d62d29b7ca54caad8ea39c9c1ccac8c8a08a8a0a279df7656fbc49e1a161742e37ef5769a0ded5d4e4ffafdb5f87cbf0f5f5c590214350505080d43d7beca907c7367fc68c19b05aadf8f8e38f1bfcdeff9af855853b162d5a044f4f4f346fde1ce9e9e978e28927d0be7d7b4c4e4ec6ca152bb0eaadb7b06ddb36787b7ba36bd7aef0f5f5b5d3ab1df1e2850b17ec597b93c92955d214bcdfc15291faf9ca952be8775f5f74eedc199b366fb64fd22242757535ba76ed8ac0c0403b47caa1f2f2bfd6e3540e1711e19463a0f8fcb9f3306edc38ecddbb175bb76ec5f1e3c7e1eeee0e4992e0eeee0e519610141484e0e060f44aecc9f25b9f7cf2092a2b2b91939b0bd16683decdad51ee0a757783b552f5a9d49b6b369b316cd830ecdab50b470e1f4662af9e6c96e1a851a3f0c9279f60ebd6ad183d7af46f6a2d398e435d5d1dab0cb46edd1a531f7c10376fdec4993367f0c20b2fc0c3c303858585b876e33ace9c398313274e203333137abd1e56ab157abd1e9d3a75023840efee76e78731fd9e83f7df8a96a306f9b22c53fa9134321b4d34392999b569111115151591c964a2debd7bdf5661f9bf5d6aacb662c50ab2582c94917e94f1df9f5ab09042cd16ba74e1e2ad0d05dd52782e2e2ea6f4f474fae69b6fe8fbefbf77e2dddfe9d9cf77758c753b5a4ec78e1dd1ab572f7cfbedb73875ea14a30f87848460c28409b87cf932b66ddbf69bd152d49c5a414101645986d96c66698ac3870f2320200066b3b9c179731c87a0a02074e9d2057dfaf441ab56add8fc6aa7b1304d259d3b97b95767fd01809bbb3b66ce9c097777772c5bb6cca985eaaf7ffd2bbcbdbdb172e5cadf8453ae6a9acab28c0b172e203030102d5ab400380e65376fa2b0b0101d3b76747a0854c111952bafad3a688fd75843e4bb02585a0d5076231ccda2eddbb7c7e1c38771ead4299689379bcd183a74288a8a8ab07dfbf6df2cc6aaadadc5d9b367d1b973677bc2545170fcf871e8743a44474783d3347da8d64cafd737a84baaedf4aeb3b09b8075875ca17a93c93175d52689787bcd3b100858b97c85ddbde8f5200073e6cc815ed0e1ad65cb515d5965d7ab92e4db96997ef6fd612f721f3974181c01b1d1315064191ccfdb35b24841976e5d214a22789d60d7b9bacd43a11d59dc585de05d052c6d9bbd16106e6e6ef0f7f7c7a44993909696867dfbf6b19b1a1c1c8c51a346a1a4a404fffce73f19285d45787f89c819290ac071f6ce6d59c6c0810399b8edfefdfb2108021213139975d2aa48ff6eb34174172ed76c7a4941210507b5a67efdfa39ed224b8a8a29cc64a60ef1ede9e68fa5ff7d96db914d1f32683075ead09165cc8b0a0a29222c9c1e7ef8e1db9e5f6390236ada15feca9847d5722022b43618b060c1025cb97419292929f67c97ac20282808a3c78e45797939de7fff7d270ba2fefe2f95652c2929c1f9f3e7d1b56b57d6547bf4e851701c87fbeebbcf495be28f90b3be6b8277ed8d734d5a8203a64c998266cd9a61e5f2154c0b9ee3ed337300e0934f3e712a9fb8ca40fedc4a4d4d852ccb183c78307befacac2cd4d4d430151b6d4ca576e9fc5e41c6df2d164a0ddab51646ab6cecdf3c000f3df4107eb87e1d5f6cdfce00171c1c8cf1e3c7a3b2b2129b366d62392475fd52c9a0a3478f42afd7a367cf9e2cbedab56b17222323111a1a0a9bcde6149cbbe6de9a80d5c801e61ad403b0f70f721ca64c99025f5f5fbb56832a7d0460e4c891100401efbefb2eb3242aa07e897a5e7959190e1e3c883e7dfa20b0450b00407a5a1a6a6a6ad0af5f3f9663d35a58b567b1b1528f9b8005fcc7c65235c6523b72029a37c79ffffc67fb10a86ddbec1d3b8a8cc49e3dd1b973675cbc78117bf7ee6580521b517f6e7dfdf5d7b05aad760971d8274b1c3870008aa2202121a1418e4d9527ff35315c13b0eec0d2b24db51680c5492af83860f2835311704f0b2c5bb60cb22841c7d96ffad4a953a1d3e9b079e326263caf4d0b0070ce843be61792ac60efdebde0380ec3860db3eba80a0276eedc8966cd9aa1ff80010d5cb3f67393c5fa03808f8810101080a953a7a2a4a4c429eb3e78c81098cd66ecddbb17c54545b705aab6ec22da6c501c1d35fbf7ef475454145a0707031c87dc9c1c5cbb760d03070efce3861d4d90baa5dba9f6fe8d1d3b169224e195575e416e4e8e3d4817458c19330600b06fdfbe06c951367dd5b153d4bbb931cb545b5b8b891327b216b47dfbf6318e3efd4e5d5d13b07e6150afddda07050521393919555555183a7428b66cde0c9d5e8f1123464010046cdcb8b181b5d20af3aa23836d562b0e1e3c083737370c1e3c18824e075214ecdab50b448441830635de66882660fd36cb6ab53ac534a3468d62e059b46811fef1eebb3099cd888a8ac2850b1770edda35a70d80d6154a92048ee751575787ddbb77233636960998141717233f3f1f03070e846fb3664daef08fbedcdddd5900ce711cba76ed0a83c1009eb78ff6bdefbefb0047ea419224b6abd32649b5cc04599270f0e041c8b28c51a346d9559589b07fff7e701c87010306b029ab4dc0ba0b96968ad2bb776f10112a2a2ad880a6c4c444e8743a9c3c79d269a093ab9ebca0d3e1cb2fbf844ea7c3e0c1839925dbbd7b37880843860cb1274a1b29eda50958bfd172cd70f33c8f071e7880ed143d3d3d0100b1717168d9b2254e9d3ac5027ef54375a39224a1aab212fbf6ed439b366d1012120210c166b3e1f8f1e3888c8cb46b70fd91e3d62648390bbe31521d07b46b1f0fffe60168d5aa15a263629875e9debd3bf2f3ce4127e86e0d53d4e49f743a1d525353210802c68c19c3661eeedebd1b922263f4d831e07502ac366ba3ecb06902d66f082c72913252ad56444404ce9d3be7f4f33d7af4802449483b72c429dda0d5b5dab56b171445c1800103d8ccc3ddbb77b319d3dab8ae09587fd0a50dc05d3f27242440a7d3213d2d8d4daaefdebd3b044170029c3a43871c13c1d2d2d2d0b66d5b188c46f54db067cf1e4447472334349405fbd414bcffb181a5de68edec661558a228223333136e0e0b13141484808000e4e4e4805c28391cc761fffefda8aeaec6c48913197b74cfeeddf0f0f06042696a336c93c5ba4b57dbb66dc1711c7273739db2e4919191f6a9f60e4a8e169cea6eb07ffffef6042811f6eedd0b9bcd8611234630c51ced34b02660dd05964b3b10dccfcf0fc1c1c1c8cbcbb35b1a47f2b37bf7eec8cfcf6fa0677ae6cc199c3e7d1ad1d1d1b78663721cbefefa6b848484203232d289d4a7349574ee1e60b9be8e8b8bc3952b57c0f13c0447f233262606b22ce3d8b1634c979d88f0d9679fb17aa33a7cfcc0d75fa3b2b21203060c601a0c2aaf8b6f2ae9fc71d74ff1cd154541dbb66da1280ab23233a1c832049d0e4141414c604415a6e5380e3b77ee84bbbb3b7af6ecc98eb163c70ec8b28ca4a424a758ae29786fa460d07e569776c2aafadaf567b43753b520aef92cd2c87377ebd60d7abdde9e6d77d403a31d16aba4a4c49ecb52081bd76f80b5ae1e6196508447443037999a9a8a7b5bb544449b48964865efdb1463350e20b98247bd49eaffa941b176d7a5e5bbffd280593b7e2e2424048aa2a0b4b4d4e9670c0603b2b3b3d9cef08b2fbe802449f8f39fff6c77a73c8f4d1b37a2aeae0e63c68c7122023200a3c962ddd913d5944bb43923b5aca2320bd422b2ab18bf76aabc96f2ab9d54713bc01111824342c0f33cbefbee3b563426c73ce64b972e81e37994949420333313bebebe18356a14e35e7df9e5971045d11e7369e645dfee816902d61d5a5a21591540eaac68f526b9ea196807636aad857a8355a17e5717e81ac477e8d001e7cf9fb71fc371acc8c848fbe002227cf5d55790651963c78e85a7a727049d0e850505387cf83012131361b158d8316d365b0337dc04ac3bb454851575a92e4fbd49aed6475daac28c1a5cbb6ef1dddcdc9cca31ae3c732282248a080f0f47454505cacbcb018e032f0868d1a2056c361b727373b161c306c8b26c9fb8ea00e39a356bc0711c1e7ffc71701cc79a3ad4eb20b20f2d6802d61d8caf5c8bc4ea8d717373b3cfb271342e08bc001020d944a78606f535cff1e01dd31f40b0374c38b6fdda9da1ba6353ddaac16080cd66c3e5cb97992b6cd5aa15f47a3d3efffc735cbc781123478e84c96c8668b3e166692976ecd80193c9c424c25577ad8dfdfea8eb772115a9ddb5a9964afbfacca9d358be7c396a6a6ae0eeee0e9bcdc6f43ca3a2a2e0ebeb0b777777346fde1c46a3110683012d5ab480a79717cb35692d969a2065ae95e7d1a14307e8743a5cbc78111d3b756202b3922461fdfaf5d0e974f6a09d087a3737ecd8b10375757598397326b360aeb3a8014021c579ea5813b0fe6f2d963a954b6d1655276fbdf5d65b787bd56aa7405dafd7b30689ecec6cb61b534b2f6aac1614140483c180604308eeb9e71e444747233e3e1ec1c1c10dac89ea22af5dbb061041e7d004757777477575352c160bba3afa062551c4ba75ebd0b2654b8c1d370e80bdbdcc357897248901bb0958ff9f97eb765c516e0db9541b1edcf46ea8adacc28c1933d84eec1ffff807ba272438cdc951574971318a8b8b0100696969d0ebf5387dfa34eaeaea70f8f06170e98e6c38c7c1dbdb1bebd7af47746ccc2db56510ba76ef064ee071f2f42980b75bb460430814d803f9c71f7f9c81eae0c183b852588079f3e631bed5ed7a1b75ba3faeb670a3b932ad429d5609d81ee0c26946605e4e2e262725a1a2a20283060dc2d237de40696929de5ebd9a95575497e6e7e787989818288a0293c984d973e6dce299ab3ae91c87a3e9e9387dfa345e7ffd752c5cb8109f6d580f5f5f5f662d054180a7a7272a2a2a18e08d46a3ddedeadd18c74aa7d763cb962de0380e93264dc2ddba748d0954ae3b3e6d1ca5b6686dd9b4190b172e84288a78f5e5973165ca14a4eedb87f9f3e7c36ab5a2aeaece298f258a22144581979717eaeaeaa0d7eb613299d0a2450b98cd66848484202424043d7af440f784045cbb760d1f7cf001e6ce9d8bd5ab5733329e3acdf4dcb9736c33919b9b0bbd5e8fd1a34723c03112f8f2a54b3870e000c68f1f8fc0c0c02660ddc9a5cd96ab7537ed2e4d8d8b9e7ffe797cf6c9a7080808c0bbefbe8b6eddbbe3ef4f3d85f51b37c0dfdf1f73e7cf434c4c0c3c3c3c505f5fcf8e55515161a7b8701c0e1f3e0c9ee7919e9e8ee3df9d407d7d3d048e47404000d6af5f8f458b16e1fcf9f3d8bf771fd6bcfd0eb3703a41079215549657b089aa9f6fdb0e5bbd1503070e84ec88970e1c38009bcdc67857ae73aeef9ad59855f75465bdeaea6a1a366c18998d261a3a78087d5f72954a8a8a69d890a164321869d8b06174e5ca15a6c6a7280ad340573fb44b55ca531485323333e9fd7fada3f0d0301a3268305594955359e94d1a366428594c66dab269331ba2b462d9720a0f0da3abc525a448328d1c3e82c243c3a8bab28a1449a6bc9c5cba7fc4480ab384de7668d4ddb4d05840a4956f5485fead562b9d3e7d9ae2e3da51445838cd99359b6aab6be8685a3ab58b8da350b3859e7eeaefec066a2782ddee86aa6055dfcb6ab5b2ef3dfdf4d3141616468fccf80b9142949f778edab78ba750b38572ce9c255288562c5b4e86e0104a3b7c844821321b4dd4b34722fb7943700885594269d284894eef7337ae469140d1167c6559663ba82fbef8020f3cf0002a2b2bf1cc33cfe0cd37dfc4175f7c81891327a2b6b6168b97bc86575f5bccb2e9da388de33896955793aabc46ee5acdbaabbffbeaabaf222121017bf7eec5f3cf3d8788c848bcfdf6dbe088307efc789c3d73062d5ab480bbbb3b1445c131c784d4e0e060cc9f378f89b21111e2e2e25811fc2e1855d4785da1eb4892d2d2525ab06001190c068a8f8fa7ac8c4c926c223db5602145848553bbd8383a7df294f34c42cd71244972b216b7b31eb22c377091376fdea45123efa7e0a0d6f4f9b6ed440ad1f62d29146ab6d08861c32975f71e321b4db42d652b7dfbcd418a0c8fa0e56f2ea33ebd7a537c5c3bea775f5f0a691d4c2b962d77ba9e268b7587969a62d0ebf5a8282bc743531fc4679f7c8a0ef1edb16bc74e44464662c48811484949414444040e1d3ac4a6a0de4eef5ccb7e70cd1d69bf76153c0bf0f3c792254b1010108059b36621372707a3468fc6b469d370faf469cc9b370f3ccfa3b8b818972e5d425d5d1d789ec7e43f4f41554d35cacbcba11704f4e8d10324db879c2bb83b2d56a30096d68dedd9b307df7df71da64e9d8a2d5bb6a0a8a8083d7bf6c4a54b97306ad4287cf6d96768e6e7e7548651f958ae6ec7b595cb3511ab7e68bfdf362a0a5bb66c01cff3484a4ac2d592123cf5d453183a7428eaeaea00d805442a2b2be1e9e9092242525212bcbdbd515656c68469013bd7cab528de04acffe3184bbd19c78f1f875eaf47525212ce9f3f8f091326a0b6b616f3e7cfc7d2a54be1e7ef0f599260136d2c66d2e6ad54b0dc4e29d935bbdf00680e7c454444e0f5d75f47797939a64f9f0eabd58a65cb96b1214a353535202258ad56c4c6c6c2c3c3030f3df4104451744a9570e0ecddd24dc0baf3ebd0a143080e0e46545414befefa6b262a3b7dfa74460b16f43a16786b0bbbae5648db96e5cac7d27e68ad9a244be00501a3c78cc1f4e9d371e1c2053cfef8e3f0f2f6c6871f7e087f7f7fa4a4a4e0ecd9b3d0ebf5f0f1f101cff398366d1a4b8892430e523d5e13b0eed052c978b9b9b9b87af52a121212a03804ca1445c1c04183ec2ac6b2cc6e94baebd21698b51fae72d63fa5c9ae2d03e9743a80b30bd02e5cb8109d3b77c6a14387b062f972b46edd1a4b962c61ba578aa2e0e8d1a3902409cd9a35c3f4e9d3edaa348e9a21819a2cd61d4dff3b32e4478e1c812ccb183264086a6a6a70f1e245fb2407559a5a27b0c2ad0a12d7e05db94d67f24f15bcd5362cd7ffe77502747a3dfef18f7f203838182b56ac405a5a1a060e1a84e4e46478787830aba825eef9fafab29a21113559ac3b5d2b5414055f7ffd351b4d9b999989baba3a0c1c38103a373d14b207eac5c5c5f8f1c71f1dc1316093c406f19aab75fab9362bb223b0c1f948b28466fe7e78f5d557e1e1e181050b16000066cd9a85162d5a308ba9aeb0b03010919d1bef0075639fd2f587af1502f6e90dddba76858f8f0ff6ecd903777777c6be2c2b2bc33df7dc83a0a020d86c367cf0c107183878108e1d3b869aaa6af8f8f8202020007e7e7ef0f1f181a7a727b3246a50ada6215ce32a02202b3274bce04481565d748fc44474eedcd9de9c2a8af0f3f7875eaf671c2bd58dde73cf3d0de9d2e09a8075e7b2b440ea9e3dd0f102ba77ef0e8ee370f4e851040707a36ddbb6282f2f47686828468c1881a4a42458ad567cf8e1879834691262636311101080d2d252545555a1acac0cd5d5d5104511555555f8f8e38f3173e64c701c878d1b3762e0c081f0f0f0407575350a0b0ba1280a7c7c7ce0e3e3033f3f3f4612e4799e4d8b20c7ce539d6708c0dea8caf3c8cbc901396232b589b5b2bcdce10e38fbd48bbb105c8d0258a4283876ec18eaebebd1ab572f5cbe7c19df7fff3dc68d1b075e10b07bf76e0c1f3e1c8f3df618eb30eeddbb372e5fbe8c279e7802fdfaf5c3a54b97f0c30f3f40afd7a3b8b8184b962c818787071e7ef8612c5ebc18d5d5d558b76e1d92939351545484909010188d46088280dada5a545454a0a2a202c5c5c5b8f7de7b99a5d3b23ebdbdbda1c8b29d112108e01dcc090ef6e68a909010c8b28cdcdc5c48a20841afbb3b990d8d05581ccfe3d0a143d0ebf5888f8fc7175f7c012242a74e9d98486cdfbe7dd1ae5d3b646464e0e0c18398346912e2e3e371e9d225444646a24b972e4c12bba6a6061f7ef821e2e3e3b17cf97246d8cbcfcfc7a2458bb073e74e444545e1d1471f455050101445c125078f2a36361667cf9e45606020ab59caa284f4f47424262682e338366e170eaa0fe3ad731c5ab56a85caca4abb65e37097e6dd1b1183342f2f0f5dbb7685a0d3213333138aa2a057af5e2c6179fefc79dcb871032d5bb6c4cd9b37b16cd9321c3972045bb76ec5975f7e89175f7c1183070fc6f2e5cb919a9a0a5114f1c4134fc0cbcb0bebd6ad838787079293933173e64c4c9a3409eddab543efdebd111e1e0e9bcd069d4e8761c386e195575e416c6c2c7272721018180822629b85b0b030703c8f8b172fda5bc62409c78e1d03cfd98782eb757a98cd66a4a7a7dbdda7c0ff619b257e17bbc2a3e9e91004814d6a387dfa34bcbcbcd0b2654b083a1d264d9a844f3ffd14efbcf30e5ab66c89bffffdef888b8bb3b30c8e1d434646066edcb80122c2d75f7f8db973e7c2c7c7075dbb76c5c58b17f1da6baf61f1e2c5c8cece469f3e7dd0ae5d3b58ad56787878a0b0b010efbdf71ed2d2d21016168661c38631aba566f54f9c3801373737c4c4c4801405252525e0388e6d2c2459b28fdd952474e8d081b9e3bb79350a609d3e7d1a4484366dda30ca6f870e1d008e83248aa8a9a981878707b2b3b3f1f4d34f2327270793264d42525212d6af5f8f56ad5ac1dfdf9fc533b5b5b568e118df565a5a8aebd7afe3e2c58b3873e60cd315154511369b0dd7af5fc7f6eddb919e9e0e49921018180883c160972d7294882e5ebc88fafa7a984c26703c8fd3a74fc3dbdb1b3d7af400005cba7489a5353c3d3d21cb32befffe7b7b3e8ce39b8075a7d68d1b37200802626262909f9f0f5996d1b9736796685cbd7a3566ce9c89254b96a0acac0ccf3fff3c388e438f1e3db078f16288a2c8ba99b5a3ded49a617575358808b5b5b59024093e3e3ef0f2f282288a888888c0cc9933d1bf7f7fe8743adcbc7913d7af5f476060203bcea953a7a0280a2223230100d9d9d9888e8e66c7ffe1871f00007a3737a64ca352a1e92e8db21a458c95939383baba3a188c466465660200020303198f3c303010b5b5b530180c58b264090e1e3c08bd5e8fc2c242d86c36787878c0c3c3039224c1d7d7177abd1ed7ae5d83288a2caf65b3d9d0bc79730882c05add6b6b6be1efef8f071e7800f5f5f5b87efd3a0e1d3a849c9c1cb46fdf9e9d5f6565255ab56a8566cd9ae1daf7dfc366b3a16ddbb668d7ae1d4bcaaabb5b3f3f3fd4d7d7a3b2b2d2a975ad09587760555554a0bde3265db972056e6e6ef0f0f204af13000e98366d1a121212505e5e8e59b36661c28409387bf62cb66ddb861d3b7620292989b5db4b92049ee7919f9f8fe3c78fa367cf9e983973262e5cb860e74911a1a0a080b9d79b376fe2c0c16ff07dc9559c3b770e292929b871e3068282821c697b42666626ba74e9025e1070e5ca15787878d8735eeeee00cf232b3d03dd3b77052f088868d306bc4e87bcbc3c70047004dc8d39d24601acb367cfa26d743400a057af5eb05aad58bd7a35c639ba8883828270e8d021b469d30667cf9e45646424f2f2f270e8d0216cdab409d5d5d5387efc3862626250595909777777dcbc79136bd7ae454242025e78e105949797a365cb96c8cecec689132760b15870efbdf7a2b6b6166bd7aec5d1b474b8b9b9e1f4e9d3ac5ca3280acee7e78388101b1b0b5214646666c266b3a16bd7ae70777777ea87546419bc20c0cfcf0fe5e5e5ac27b229c6ba436bd09021c8c9c9c1b6ad5b11181888d9b367a3b8b8182b57ae64353e93c984aaaa2acc9b370f168b0573e7ce45595919bcbdbdc1711cd6ad5b87a4a424e4e4e4203e3e1e555555f8eaabaff0d4534fe1f0e1c36cb0d2f2e5cbf1cc33cf405114d4d7d7a3bebe1e353535484d4dc5952b57101414e424de515252022242484808389e47414101f47a3ddab56b87d0d050f03c8f1f7ef8c1ae9e2c0820472c76e6cc19469db92b5763e0475fbbfa3d990c464a4ce841d6ba7aaaaeaca2ce1d3b5187f8f674f9e225272ebbdabaa572d86d361b499244454545f4edb7df52797939e39a575555d1aa55ab28363696060d1a44f1f1f1a4d3e9a8b8b898cc66333df3cc33f4c61b6f50fb8e1de8c489134ebc799513bf62d97232198c94917e941449a6e4494914d23a984821522499c22ca194347112493691b5894d7f781a458485b39f696affba53cd14924c6faf5a4d1161e1f4e6eb6f902c4ab469c346321b4db470fe82068d176a1384fa5905d9ed1a2b1445a153a74ed1fefdfbe9e4c993545f5f4f8aa2904ea7233f3f3f6ad1a205797a7b517d7d7d83631011cdfceb63146ab6d841e368f9328618d8d7ed62e368d28489440a912c4a440ad1aa956f91c960a473b979f69f6b6aa6b84356930392a74c46cba05678fbedb771e3c60d8c1b3f1eb1b1b1d8bc7933b2b3b3d94e4e6dbb071a0aadb98ad6aab9a5b8b838561252e3a1eaea6adcb87103a74e9dc2b56bd7582bbd56e39d8870e1c205f8f8f800008a0a0bc1f3bc7d072a8a2045416c6c2c4a4a4a587c05d56d3aea887fd4d1bcbf8b188be779f8f9f961ce9c392022bcf4d24b2045c1d34f3f0d81e3f0c61b6f40afd74392a406cd096a91584b77d13656a8b4169500a8fe8c9b9b1bf47a3d828282e0ebe38bfafafa5bb54b07b8aaaaaa70fefc79c4c6c60200ae5ebd0a4110505757878b172f32e66a494909fb5d4992980cd2912347eeda7443a3b96a8ee33072e448f4ead50b3b77eecc5bc6c3000007e14944415444464606127af4c0c0810391959585cd9b3743a7d341afd733be930a286d978fca48d04e9457b9585ade3b9328727cede1e1e1a4095a5c5cccd462a2a3a301224643160401d5d5d5e00501e1e1e12cc5a12674dbb66d6b4fa354553595741a0bb81e7fe26f10f43abcfcf2cb0080679e7d16242b787bd56a26efe8a6777372793ccf33529e56874afd9ea2c97fbb4a4e2a8a024e21801ca43c85b07fef3e8c1a793f72cfe660cc98317866d122c8b28cab57af82e338b8b9b93170070404c05daf477a7aba9d2b4f0a9af9fb4126c53e1daca9fdeb8eee4c9925e8d6ad1b468f1e8d3367ce60dbd6ad68d9b22566cd9a85e2e2622c5fb6cc0e0659663756756d5af564ad455214051c3848b2e44413562d9fa0199f5b5e5686c71e7b0c3366cc80288a58b66c19962e5d0a1061fbf6ed3870e000eaebeb213aea972a40b5932654e0c6c5c5d91595efd29443a3e984d6e974b0d96c5014054f3ef924020303f1c20b2fa0baba1a53a74e456060203efae823d4d5d632ab2149124451641a585aad52d5c5f13c0f0e808e171af0de058728ae22cbd89b9acadc70b76eddb06bd72e3c307a34389ec792254b3077ee5c101166cc98014571582322f4ead58bbdb74a7bb65aadf0f2f2b20be1525327f41d5baaa571737303cff368ddba35a64e9d8acaca4aac5fbf1efe010198366d1aaaaaaaec05684da3aa5eaf875eaf776aa1d7ca4caa16456bc14451041482a0d3a1bcac0cb366cdc2a38f3e0a9d4e87e79e7b0eeb376c4088c180737979183a6408d6ac5983b8b8387cf4d147b8fffefb210882ddf56a84478e1f3fce3aa5dddddd613299ecef2d3575e9dc5160b9ea2c4c99320521212158b26409ae9694e091471f85d168444a4a0a16bffa2a0e1c380051141bec12ebeaea58cfa1aacfa0be56ff5fafd3031c87b42347307af4687cf9e59768d3a60dbef8e20b3c3c6d1a6449c28ae5cb316ad428e4e7e763e2c48958bf7e3da2a2a2d0b153a7062356789e475d5d1d3c3d3d61754c616dddba350441601d3b4dc0ba034bed2bd4e69f9a070662d6ac59e0791ecb972f0700bcf6da6be0380e6bd7aec5c30f3f8c8888083cf8e08358fdd62a64a41f856413e1e9e169d77a5708b228010476b3799e776c00082fbff412264c9880828202cc9e3d1b3b77ed82c160405e6e2e1e78e001ac5ab50a1e1e1e58bb762d96bcbe14debe3e8e4d00410121eb5836c001cdfcfd6e1d1bb7e63cab2a85d25d6ab1748dc562a9168505d8441833762c366dda84eddbb763ecd8b1484848c0858b1791979b8b23e969484d4d457a7a3a0e7f7b08eeeeee104511898989183a7428626363111313c36eb62ccb107801674e9fc633cf3c8393274fa24d9b3658bd7a35a21ce984952b57e2bdf7de435d5d9d5d3477e952f807043076827a6e5151512c708f8a8a724a5ba8d7121111f1875645fe5d004beba6d45c945ea787248a58b87021468f1e8dd5ab57c3d7d71731b1b1681b1585b6d15198366d1a2449c2b1ac6cecddbb17696969387af4280e1e3c088ee3e0e5e585b8b83824f6ea89ae5dbb223b330b6fbef9260441c0c30f3f8c79f3e6c1d3d31325c5c5983b772eb2b3b3e1e6e686b56bd762d0e0c14ee7a81db7dba2450bdcbc7993014d922496e6502dafb7b73714078db909587770b9a6020040e7a647c7ce9d3068d0201c387000c3870fc7bdf7de8b5ebd7ae1befbee434c4c0c42c3c2fe5f7be7efd24618c6f1cfe562c14852231151305a1591b68ba026e83949160741a1fe01bab80bb65d1cac6efe094e0e0e821dea968051114f49483ab401970c25362e09c1b6b13167af437c2f6f0e4bc7b492770bf783f7c8c3f79efb3ecff7fb3036364620100045219fcb914c26d1751d5dd789c7e39c9f9f5ba59ceeee6e36373709048300bcdfdbe3ddc63ab95cce1253f87c3e6bc88040d18a2ac74475a818b765529f3e572538c243e2eebeb1cf8427ce8ac4fe4b265323d5b9cc64300c03bfdf5f65e51f616f8d62fe075e86c5ef3f383e3ee6f0f090939313aeaeaeb8b9b9c1ed76d3dedecec4c404535353048341dc1e8fc5758941931f934962b1184ea793d9d9595abd5ebe5d5fb3bcbc4c2412e1a9b795b5b535a6a7a72d3ecc2ed3370ca362f0619acccdcd6118061ff6f731ca658686860885422c2c2c00953efb6834caeeee2e7ebf9fcece4eb2d92ce9749a9696165c2e178964d29a22a6a88e4660d58741a55ae405be5e5ea2eb3aa7a7a71c1d1d91cfe7ade2f4c0c000e3e3e3689ac6f0f030deb636ccfb24bae95ed91c0987595959a15028a0691aef36d6e9ededadf19697d979f17b676787b7afdf609a26cdcdcd148b45cb4e49b43c0bf5b4a228148b455c2e17a66932323282aaaa8c8e8ed2d5d5c5abf979abf5ba8158755ae27524f230c147892ecf542a452c16e3ecec8c442241a150b0ce1d1c1ce4e5f3174c4e4ed2d1d1c1d6d61607070778bd5e969696585c5cc4546a5d698420431ebee9743a0987c36c6f6f57be366dc9bcc7e3b12a089aa66118063e9f8ffefe7ed426674d3540dc4f26751b81554fe0920ac732092a3b2eabaacac5c505d168d4d21cdefe2c512a952c27e55028c4eaea2acffafafe9ae3d8a7660832d7a138aa88432da24a1b0645e1eed79d45aaca799bfc4c8dc0aad3125f65f6593b0f059f7c5c5114d2e934f1789c6c364b4f4f0f333333560e25fe6c797aab3d6065d492d15375a8dc1906a6521d202502cfbebf9aeba44e8b0662fd03cb6ed2512e97abfe0a7f08363bcac901235f2fce157992dcbf259c8f1dd4be821f0a0afb3e1e423c792ef563f5cffa0d1bf9b5034784b1090000000049454e44ae426082	image/png	0
4100	Marquage au sol	1	4000	\N	1	\N	\N	\N	1
4101	Passage piétons 	1	4100	174	1	\N	\N	\N	2
4102	Lignes bandes axiales 	1	4100	174	2	\N	\N	\N	2
4103	Marquage de stationnement	1	4100	174	3	\N	\N	\N	2
4104	Bande en relief pour mal voyants devant passage piéton	1	4100	174	4	\N	\N	\N	2
4200	Panneau 	1	4000	\N	2	\N	\N	\N	1
4201	Panneau mal orienté	1	4200	174	1	\N	\N	\N	2
4202	Panneau endommagé	1	4200	174	2	\N	\N	\N	2
4203	Panneau manquant	1	4200	174	3	\N	\N	\N	2
4300	Feux tricolores 	1	4000	\N	3	\N	\N	\N	1
4301	Lampe éteinte	1	4300	1475	1	\N	\N	\N	2
4302	Carrefour éteint	1	4300	1475	2	\N	\N	\N	2
4303	Feu mal orienté	1	4300	1475	3	\N	\N	\N	2
4304	Matériel détérioré	1	4300	1475	4	\N	\N	\N	2
5000	Dégradation du sol	1	\N	0	8	image?resource_type=image_type_signalement&#38;id=5000	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e2000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070e0111c28a8754000020004944415478daed7d79745455beee77a6aa24554920cc011292002103533385667078adb6b4ae1654bc6a2f047c5e74b5f2bc97a197ab4551b8ede53d9b6bb45b51ecd7efca6d4145edb61b87db2ef45d5020d83e4948c2182033289090aaa4aaceb0df1fa7f6ce3e2755212181b4b07f6bb1aaa89c71ef6fffa6fddbdf960821044284f4b2c8a2098408600911c0122280254488009610012c210258428408600911c0122280254488009610012c210258428408600911c0122280254488009610012c210258428408600911c0122280254488009610012c210258428408600911c0122280254488009610012c210258428408600911c0122280254488009610012c210258428408600911c0122280254488009610012c210258428408600911c01222802544c8e506960502028044bfd3ff9bc4b27fb32c762cbf731dffddb22cf67ff731a6693a8e03c07eebca4e78f41c4288e378febaf1ceb95242088165598e76e82de1db8a7fe778dfe9b18661f4cafda59eec57689a2664598665595014853d9c2449b02c0bb22c3b7ee33b8ffe9f7eba8f73bfb02449d0751d9aa675b9d3e8b54cd364cfe73e867f060a424248cce3bf6fc2b7816118505595f501ed1bda3e9224397eeb338da5eb3a6459862449ac8322910824498261189065998d00fa77cbb2d80bd0f34cd37474301dc1b431e8a806d06550757849aec1f8112c499203c8f4d9aec4dea0f1eec183bb27ff685b53710f7cb7727003ad4f35563c0de51e119d8d24da006e4de5d626dd150aee58d7e6af4f3ba2b7476c77b4c9c534764fcda1a2286c70bafb88ded3dd273d6d8b1e018b374db11e8657b1fc28926539a679a29dcc6b0d5eb351554eafdb152dc5371c7fff781d71a501d619c87aac3562b491bbdd691f1a86c1da89b6f3df85c6729b335972768e15ed34898e18d384ac282051c755e6414608401b25fadd8a8e3e7a8ed485ceb7a26a1e311a98debf3518c4d1a347d1dcdc0c9fcf075555110c062fbb8f45db8cb61ffdd7534dcd03c6e3f1a0b5b515494949c8cfcf4792cf17ab0359fbca8a02d330ec77977b767fb52780a2da856aabfafa7a9c387102aaaa42863df2038100aaabab71f6ec59288a024551d0dada8ac4c444442211343434a0bebe1e914884690aaab1645986aeebf07abd3879f224eaeaea5807743582932409a669c2b22c689a064551d8e8746b44aad1ae84e34edf910716d528f1828dee88dbfcf1ed40bf7b3c1e06c2c4c4444c9c38118aa2405555bcf11f5bfa065812ecc6307503b9b9b9cca7515515e1701800e0f178909e9e8e112346405114844221489204afd70b5dd7919595c5fe4e41459d49ead46b9a862953a620212101adadadf0783c5d02158dec6823262626223d3d1d03070ea488b3359f2439b563f46f57c806dac0e2b4afa1ebd0751d6565653df6afbc5e2f060f1e8ce1c387439265d4d6d4a0a1a181993bda9e9aa6a1a5a5058661a0bcbcbc57520e3d368500b06fdf3e1042306ddab4f69146e0e8386abe4ccb1e8d966132f3671a0694a85daf6fa8474d4d0d2cc384a6690887c35014058410783c1e18963da265d89ac5344dd4d7d7a3aeae8e8dbc5028e4d00874c4cab28c70388c848404e64fd14f5555d9880e068338545101236a168ca8b6d375dd1e8daa0ac3306059161bf5e170189ad7c3b477cda96ad4d7d733adab280a8804f60c899aa7438ecd300cfb1d0d030ae7f750ad43071dd5b4d4dcd1411dcb37f3783c0804025055159aa6318da845071d1fc4f0be7055f5a9be07d6c68d1b59031b868193274fe2bb33dfb287354d938d8292aff6c3e3f1408684969616f87c3e442211e630460cbb1324d26eca5455651dee4d4c88e64924141515a1b6b616e7ce9d437e7e3e7342e9b52449427373330e1c3880d9b367b34424bd9e699a48484840381cc6be7dfb70f7dd7763c89021b6c994249c3e7d1afff1e69b58b16205229108121212d0d6d6669b7a59c60b2fbc80f9f3e763d8b061484e4e46a03588d4d4541416168298167ef6b39fe191471ec1a44993909c9c8c50246cbfbb2c83e83668b76edd8a8a8a0aac5fbf9e01c5344df89293919b9b8b7dfbf661c992253874f8301035d98aaab2814a2c0b0f3cf000264f9e8cc71e7b0caaa6b5fba851e0161717a3b4b414cf3fff3caaaaaa1c26989add679f7d16858585b8f5d65be1f7fbf183a953fac614520987c3d8b16307060d1ac4d03f77ee5c648fcac2175f7c81eaea6adc7befbd90651963c7e562e5ea55b699332d2c5ab4084f3ef924468f1e0d4551302e3f0fa9a9a94ce3658d1a85ad5bb762465151f4272e248e6abc552b57222525056b9e7aca6162a82fb177ef5e2c5ebc185bb66c69774e69d413eda850288449932661e9d2a518979747d3f0d8b3772ffe7dcb16fcfcd14761e83a032c7dcfddbb77e3a69b6ec2cdb7dc0243d7212932f36d6449c6983163909d9d8debafbfded6283297b0956d6dfd5fbb77236218983c658a6d125de6d8ebf522100830b0d06797380da5eb3a3232326c50f1117ad477a3662f6dc000a40d186007528aec0c10640953a74fc39cebe6f68a95ef11b00cc380d7ebc5aa55ab70d34d3731d3a4280a40ec17f4f97c78ecb1c7402457b292d80d9c9d9d8d1fce9ac54c248b342161d8b061686969b1c1a0a990d09e365054bb03eb1b1b903e623820d9095a4dd320c91264d9369f92226368fa30488a0c4880a2a9b6869415c8d160a2acac0ce17098818a4693898989b6b9b02cd6699000d330a12a76d31d3e7c1837df728b0d3ab9dd6c8100292929a8abab6b8f64d1de9116b13b5ff37ad0120c40526467ae89d8c00f87c3f07abd1dfdbe28d068b0a1691af4a8e6671176f4185dd76d1045ff2f2b4a7402ae5d0e1d3a84c18307f75a1ead47091b3a829393931db61fb0fd2b1a014a8accfc1c0a480a208fc70348b193a2595959282b2b83a2a92c7ae1a336599691979787b6b636e6eff011230d006a6a6a1cbf793c9ef6c68ffa5eed80b7531f84ef54aadd2c93bdb71935b92c4bcdf92b7c7a45d77598515f89be371ff1b5b5b531df8dcf969b86c1ae49c10d4258da859a3a29eac39d3a750a1a7d7ffe98e8fd144569378faeac3c0016a5f7f9940e6d50c330e0f3f958a3f2c9c5fcfc7cd4d6d77598e4a5c7689a0649919993ec9e4ab02c0baa4763fe104dc652c01042909a9a8ab2b2b20e0da5474d17bd170d0098b30a62035a02f20b0b2029328e571d87492c40b24dcdb469d3100e87f1f5d75f03b2c4ae4165fcf8f13874e810eb48fe196445417676361a1b1b6df3c5f98a7c1b0c1a340867ce9cb1df5555d9c0505415966962d4a8519024091515154cdb70b91436209b9a9a980b202b0a40080c5d07b12c8c1c3912478f1e651acb5d080000050505282d2d750cfc3e01166fb6ce9c39e3884aa8094af425a1aeaece99bb89fa078669c0b04c87e3aeaa2aab8ea01d5e515101599619f0080022b5cff3f97c3ed4d6d63afc0d59961908478f1e0d003878f020f337f886a3a9084208aaaaaa9c8da32818316204feefaeff72cc610280a2aa484f4fc7c1830799a9e3e73d4108860e1d8aeaea6a476a81551d98164080f105853871bc0a322458860910d8c9e5a8e64c1f3e1c00d0d8d8686bada835b04c93017aeedcb93876ec588744b3a228906419c3870fc7b7df7eeb488482d8cf60df0bc818311295e515d0c31166e6fbd479d7340d252525f8d18f7ee4985cb62c0be3c78f87aaaa282d2dc5840913da7d0bc9ce774d9d3a15070e1c405151517b4a406a9fcbf2fbfd0c346c6e0b8439be9665213f3f1fd5d5d52cc2a169014db335dd800103e0f7fb71ecd83104020116a552cd408f2f2c2cc45b6fbd85fefdfb231c0e432276a89e9b9b8b6ddbb661e6cc99f07abd2c47a7ca0a1a1b1b515f5f8fdfbcf492ad6534db49d6340d1201cacbcb515f5f8fe2175eb0efe5f5b49b73c9d6d42d2d2dd0751d2fbdf492238fc74f310d1b360c9b376f4645458543e3d136d9b56b171a1b1bf1e28b2f3a34274d6dd07cdeaa952b9191916147c6d1bf25272723180ca2a5b9199fefdc89575f79059224e1e7ff63791fa51b48fbb4c8dc3973b069d326b4b4b4b0cea21dfff0c30f23373717b367cf76f8489665e1bdf7de83dfefc7cd37df8c8686061c3f7e9c25502dcbc2d9b36771e2c4094c9e3c9935f6b973e770e4c8918bcea5a9aa8a5028c432c9544bf1a523173bbfadad0d8aa2b04e1c387020323232e0f3f97aad6ee9ef55dedcb6b56f80454c8b85c7d9d9d98e24234bc2691afc7e3ff2f2f22049123c1e7bc4d2ac786b6b2bfc7e3fc68d1b079fcf0759961d25375eaf97cde1d10872c890215daa02a0cefcd0a1433164c890f6a80e801e89408be6dde2be5fd4b4b1109e9feb248445b957abf4343aecb9c692659c3e7d1a83060d627e09df39fca4b345c376d72433cb9053bf2dc6c4340f8658514d8c9669f7277a69fa055cc446235521bdadb1b83a2cf724aa3ba48e57f949fd09ea1fb9cf8b3519cb67d62f5addc03d1bcdbaf313dc5dbd863bda157299816518067392e93c177528ddb54d848b8ae839b13a8b82295669339d3beb4a275fac04a52baf1debbcde288213c0ea86e68ae7f7442211368f18eb3c0008854248484870fcc6cf65b9c1d4151f2bde3154735dac2c85afb0e49b4880ea0a4e42f3268b464b7c2d95fb18fabd3b7547b4f28026112f05fcdd91ce4aa6bb634a05b0ba29b1467e3ca0501316ab14999a381a51bacb92e967776aea3b0353575fd76d4addd723573b30fe1e349610216e11fa5c88009610012c210258428408600911c01222802544482fcb553f45efce94bb494c8869a1a4a404fbf7ef87a9ebe8d7af1f6eb9e5160c4d4f6735e2478e1cc18e1d3bd0dcdccc2a35a568b5aac7e34192df8f1ffff8c798bf6081bdd8229a28660b3fa2739f9224d9d5af8e651557a75c1309523adfc82fe6d0340da5a5a578ee5f7e85afbefa0a63c68c41ffd45494949420128960547636c68d1b87d2d2529c3d7b160505051833660c468e1c095dd791e0f1e0d0a143f8e4934f9033660ccacbcb3161c204fce6e5df223333b3c3243d9da520000cd380a65cdd63faaa35857c8527ad0205ece99960308875ebd6e1cef90b50565686993367a2b1b11129fdfae16855153efbec33fcf4a73fc5e79f7f8e1b6fbc117ffad39fb072e54a646666b2953b393939d8bd7b375a4321b4b5b5e199679e415959198e1f3d06cb30214182a6daa542b4669f100210025556aef6b17cf56b2c6af2e8676969299e7cf2499cac3a81e79f7f1e69696958b060015b22451763cc9e3d1bdf7cf30d52535371e6cc19e8ba8e828202b6a0b6b1b111c78f1f87a669c8cfcf876559a8acac84a2289832650ad6ac5983bcbc3c7b5d9fa1b325669224e19a1072958a65591d7edbba752b99306102b9f7de7b49f3f926424c8b94971d243959d9e4c1254b49c9de7d64df9ebde4cb2fbf241b9fff35195f5048ae9b3397bcfbce76fb788b10621162ea06317583b40682e4938f3e263fb9751ec91c9941fef3e34fc8a6975f2163724693ec5159e49db7de66e7104248381c26966511d334c9d52e572db02800e8e7daa79e26a3b373c886e7fe9518119d108b904ffff3afa430bf80ac5eb98a5896450cc37080f2f4e9d3ec375dd79da0352d6219263175831cae3c4432476690dfbef41bf2c843ff48b24666907bee5e4872b2b2c9877fd9418845ec7b464500eb7b2c7a3842884548b0254016de7537f9c1a4c9e4dd77b693705b88108b9077de7a9b8c1c3e82fc62d5ea0e5ace249643e335373793dada5a07281838a21ae91ffffb436452e178f2e8c38f9009f905a4f97c137976ed33e4079326336d47c1154b9b0a607d8f34d6c1d23272fddcebc8cc1945e450452503c1ff7efd7724272b9b3cf3f45a422c422291083bcdb04cfb30aef3376edc48eebfff7e629aa6e377cbb248d98152525f5b47cacb0e9239337f48c6646593eb67cf21179a9a49f3f92672fddcebc8d2c54bd8bdaf05501142c8a517fa81b07c4c281482d7eb75d01fba7946dd65c77c8e89af2c8de5e0d2c518b168296904481758d0ef9b7ef35b6cd8b00113264cc01fb66e853f3919c4b2f0c4134fe0adb7dec2f31b7f8df9f3e7b3ebd1a8d15d4a4d0841301844535313d2d3d3599447ff96939383a79e7a0a8b172f462412c1471f7d84356bd62063c448fc65c70eecddb307f7df7f3f366dda841b6fbc118aaae24273330e1e3cc81692f241466d6d2d6a6a6a18e95c666626d2d3d36118067b3649926c8ead281798a66998366d5a3b891cc758e35ea944d976185f59f4ff8edf25a9c7549197be9822463e265e7d3bdf495d898af845136eeae878a5ccf4def498ac911918356a144ed5d4e0f3cf3f476a6a2a56af5e8d929212bcfefaeb98326daae39a6ed0f234986ef0f335f8e5e5e5c8cdcd7554c8565454e01f16de8365cb96e1e78f3e8a67d6aec51b6fbcc1de8792bf85c361f67e696969c8cbcb630b4e3c1e0fa31fb02c0b0d0d0d3873e60c42a110745d475252122374a3895a4aeac1f37fd13629282880d7eb85dfef67e7058341a8aaca8eb72c0bfbf7ef876118385553ddf7e9067e55b12cd9646086653af8a4f851ced793bb174fc402e3575f7d85d6d65678bd5ec621ca6b315996f1e5975fb2460580f7dfd98e53353550140577de79274a4b4bd1d8d8882d5bb6a0a0b010906213e9f3c0a57ffff4d34f3176ec58b63cddad79dd1b15188681575fd984d75e7b0d5f7cf1057c3e1f6ebffd76d4d5d5e1f5d75fc7d0a143317cc408fb1e518de226ff8d4523c96b1f120502cf22535252e2d89183ae4aa78b806559c6b973e7505959c91604a7a4a420272787d17cd2f79e5e34a38f34567464499284071e78c01e851e2f6379812cb17a763ae27992d9caf20a5cb870818d2c3ae2f9fa770a3c5a074f4727fd6e18061213133165ca14f65dd77584c361b4b6b6e2f0e1c3b8e1861bb073e74ea4a5a5e1cd37dfc4d871b90c301f7ffc31faf7ef8fa953a7b2e70b0402387cf830a64f9fcede73d9b265c8cfcfc7f2e5cb9916e34d226f8229b85a9a2f60d6ac598ce077f1e2c5d8bc79339e78e2093cfcc823edec7c5160581cf72a6faa3ae345ed00c6787de56699e616dff2cc808cf150d37a5cf4dea37905ca8950545404cb30190d63381c86a2a96cd4f059ef81030722333313091e2f42a110a34ea45a8c5f76959a9a8adc71e31caba0dd3e433814823721a1c3286f0d06197d2400fcee77bfc3d871b91d16cff28b5f1545c1871f7e88f5ebd7a3bcbc9c01e6d5575f8de9cf512096969662ce9c398e64acdfefc7830f3e88175f7c11797979300c03d9d9d9b8efbefbb077cf1e4892c4a827ebebeb515b5bcbcea59cf63cc92f4fd46b591666cd9ac58e6b6d6d454242823dd59490c006f3d8b163913660403bfb9f8bcc97079524cb5064b99d5bab2f33efcc2c44d9e7745d8fc989d019df7a2c356f72bb4ab8f9de3b1b89f4ff86ae43d534ccfae10fd1d0d0603bd74b97b0e3e2019a3685aaaacc67e317e05233c99bf243870ee1a1871ec21ffef007c6fe4c1909c3a110a64e9d8a254b9660ebd6adf8f6db6f993f138944a0280a12131351505000bfdf8f7038ec5819ee5ec1cd4f6c4b9284402080f2f27266d6c2e1306359a496811082d6d656e64b512bc22f1cd6348df967090909080683a8a9abed1b60b1c6a567f39d1e9d8055350dc4b250575787c6c646d658bcd6a02ba8a969354d13df7df71deaebeb59b44981409d5ddac1e5e5e5363f27679abd5e2fbb4f4545057c3e1f767ff905bb57ac48ec620387e7465755b5c30e1abc0fc936ae326c20161717a3b8b8183e9f0f9b376fc6c081036dce2e97d670476b311ec6d1c61d484aa8bfe7daa021120ee3c08103505515814000494949cc9453461d0a4cde57ee331f8b0f0f47656676d8ec889f77732fb9e7232d0a2caa21c68c1983e4e464c7d61bbcd6a0f4d3454545ec180a3c4551d8a82784a0bebe1ee5e5e5d8f1d187ec1abc292b2e2ec68c19333063c60c0783b0db997797dab8f7a189197c444953dadada3069d2242c5fbe1c8f2d5fce404299f7da89d09c29029606e1f94463f85a543bc7d4e471d20e8ce0d7754dc7ef7db533050bf3f5083ef8cb9fd1d2d2c22672e92e6023478ec48811232e1af95d6af502352bacb3a34c78b4a1bedabf1ff3e7cfc7ba679e454a4a0a162c5880112346d8a65b02d2d3d3919292e21810fcd27e5996f1c61b6fe0f6db6f47fffefdd9ea6eca974e07c62bafbc829c9c1ccc9b378f1bb200640995870f41370d2c5afc00204573772090d5288f6af49357fcf437474bc56937d5d3916c4552e40ee7d06b026867ca715d33deef571c5894832a3f3f9f8df458207233c9f406b10635490ef6180207bff9f9f3e791949484caca4a343535e1e5975fc6fcf9f3f1ab5ffd0ab2aae08e3bee607e060dddf9a4ad6559d8b3670fe6ce9d8b7efdfa0168dfda8e27d8e5cb7278ad27491242a11000b0aa087ecf1cb79617d50d743e8e9b98ed6c82d53d8dd15bd31a7482987d4674424c8b108b905fac5a4df2c7e591d52b57b109e35fac5a4deebef32efb18ee1ddcd7314db3c384b46559ac3281fe46a782f876a8a9a921b5b5b5ecfc929212929d9d4d2ccb62c79ba6c9ae13ab2dae86691fb937b4064fea1a6b03cc7809c5de48ccb2cacca8d6aaacacc43b6fbf8d6ddbb6e1b6db6ec3934f3e69f3a1cb32eaeaea307bf66cc67d4edf819ebf6edd3a7cfcf1c74c0b516a4b7aecfaf5ebf1c1071fb0e7a75bb2f04c86dbb76f47494989cd934a80efce7c8b649fdf2efc5354c0229025b9d3bd14af698dd599168aa5c9f8e37a5b63314d6911b2f6a9a7c9989cd164ceacd9f6a4af61328d75cfdd0b49f1bfbdc0eaa3dccffac9279f90b367cf3ab46e281462dffffad7bf9293274f76fa1c8661d8ef6898a4b2bc828c2f2824637246937ffbf54656c6c36b4c51dd10c7e4c5ab2da2f54deebff3754f97a354e6de7bfe81fcf3e3ff446a6a6a3a3ce3e38f3f4e0a0b0bc9db6fbfcd4045ffe606bbfb194dd3249148840d0cfe3d745d27cb962d23bffffdefd9f1872a2a49d1f419e4d65b7e4c5e7f6d33c9c9ca26ffef6f5f93b54f3d4ddef83fffdee5e2c46bce14f2ce2afdd475ddb1df32efd452b3d55bfb0152f34427a001408d466ba3478f66c9cad6d6566686d7ad5b8779f3e661ddba75c8cacac2f2e5cbb17ffffe9811a77b4303ca1dcfcf71d228519224ac5dbb1677dd751700a0b4b41477de7927323333b17dfb768c1d3b169aa661d4a851f8ecb3cfd86e145ddd73f19a5a4ce1de8d9eeee7c2477eee44a33b4aec89d0ac32cd83d16bf6ebd78f71b10340525292639a65c3860d282d2dc56bafbd06c33070cf3df7604f748a853e37cd73f15122f50fdd34dcf49dd3d2d2e0f3f9f0eebbefe28e3beec06db7dd866ddbb621c9e743555515c2e130e6ce9d8b9a9a1a7cf0c1078e41c8b7d3d5b204e19ae6c7320c038b162d425353133efcf04380b4271c032d2d484c4c6cdf290c40241c8627ca50c8333bd3c4e27befbe8b152b5660e1c285d8f0bffe27cbb51d387000d5d5d5686969c19ffffc671c3e7c18c9c9c9d8b9736787929dabc599bfa6814508416363237ef2939f60debc7958bf6e3d00e0a5e80e0f34534e01f5f5dffe86482482a6a6261c397204c16010df7cf30d545585cfe7c3ce9d3bb178f162fcf297bf649b5ec6a2966c6e6ec61ffff8472c5ab4c8918bebcd5de405b0fa582ccbc2a79f7e8a871f7e181b9efb57dcbd70214cc3402010c0fbefbf8f8f3efa88f9611e8f07a15008595959183e7c383233333178f060689a86aaaa2a242727e3e9b56bedeb46b78d73cf8bd2d902cacf1a8b8ff56ad05cd72cb0dcf37fc5c5c578f18562ac59b306cdcdcd78e1c562646464e0861b6ec0ecd9b3919c9c8c2953a674d832852f69e6771b8bb7b43fdeb3507fb537361a17c0ea637177e21fdf7b1f2b56ac80cfe7c3e3fffc4f58ba7469cc2a537ebfa05820719b3e3e22e613c8fc36796e46e9efbb5cb3fb76f01b7453494f4f876559d8b871236efcd17f730085070b6fdae8a2079a02a1290977edbc6334bb522ebc26e39df96b32ddf0bd1f5151b3c5d788efdab50b9224e1b9e79ec3d1a347db6bca5d69153a7dc3ef0c4f01c76b2777cd166ff6e2518b5f2d91e1350b2c77071342b062e54aecdab50bd75d771dab2573e7e068f2944fa0d26bf1e7b84bb279ed44c1c76b337e6b61916e102244682c2102584204b0840811c01222802544004b8810012c21df2360d1a41e5f0417af3a325e02b0b78bdce87df8e77017e9f554f865f9fcd44f772a43e9d233f76f5d398fff74b75dacffbb8b16ddcfdadd67ef4c2e3941da9ded7763d517f12fe89ed2e0a7527a0b005da932e8c9f563bd47a70d1f67bf6af775bad3aeb1567bbbd774c66b13beed7ba37cbcc799777ea3703a454189bdf8e90a3a2d42978af12c2ff140d613a1744aee5214aa21f8fb5f8a74b6997977df83be7f779683b997fbd377ecac48d07d1f1e806e169e3ed3586ea1c4faee25ea97a21d2e5705e5e5284971aff8eeaca4a6abcfc27778570791bb04c70d7c3733a15b63f156a237b47a8f88d7624db4c62b70e3d52c1d613cf0dc354b3db5f56ef617badc3d817269f59279ed89e9ee8c86a03b0385b708ee0dd2dd6697f70bcbcacad0dcdc8c94941498a6c9a8952ccbc2cc9933fb48637167f1c4683cfb495c4a9e2b21941c8432e7a92a8e1f3b86f3e7cf3342d81e355cb4b3befbee3bd4d4d420180c3a4a642e0610cac14507d1e9d3a7d1d0d0e0e8dc8b0d1cfa1e8140009595951d564ef103996760e4571ff1a69b0763d5c9137d08ac68e7dd7fdf7d4c7d7b3c1e5cb8708191dcf22c749aa6415555565e72faf469d4d5d5211008405114c69345ffde5313158944909c9c8c70380c8fc783d6d656b63eb0a71ab1a0a000c9c9c96c093e4f12db9526a535efc3870fc7d0a143996fdad5ad51c2e130fc7e3f264e9cc8283229991a5f764dc143b5aadfef87dfef47666666a7fca68cb1e61245ede1b085659a983e7d3aa388a45c08d481a7c04a4c4c447a7a3a060e1cd8a993ca3b983d3585a669a2a8a80890a4ded79e311806ade80052bba80df967725060c6b87667cfc09fcb5b8f0e9c5a3138b608d5583ca87aa19d7acd79bfd4903e568d38d5888e97e41bbbb7f25d1ce0a8098f456416b7535d9d1413746ef6637ee0b858fddcdaa38316e178dc29719bfb7e5d25bce5e5fcb9736cdd23550cd3664cefdb3c165d62ce13f8f3748c976ac6601146a128cb723b435d2fe6a0e868d5751d656565cc07a19f17d388bcc9a1dcf49aa6419665ecdbb78f11d5bad30ff477bafc8b9a30daae9aa6e1f4e9d3a8adad457373b3833f94decbebf5321f8db6594242020281004e9c388173e7ce5d5411d07bd1dc1735c38661e064f58c1bbf620000020949444154a9bed558a669e2c1071f445b5b1b7b790ab6ae44957cae89772c3daa866030888a8a0ab4b4b4308a48eac7f4469a805e4bd3ec7b2526263aca86bb9add9724091e8f0769696918326408525252180878873a56d446ef6f59165a5a5a909696868913273aa83669229a8f98f944289d51c8cece46464686636382ce80959a9a8af4f474f4ebdfbfa3a6ed2b3a6e3e3c9e3c79324bb8f1b990ce8492d6f2442103070e447a7a3a929292108944185d355db440011bd3747653faf7ef8f51a34675d8de24140a213131b14ba69ff715e32546e37182f1f9267e2918bdaefb1c1ec4fce28d58f7e94abece9dde60c0ed258bd02b1a8b8efeee646fdd0dca8fce581d773993a5b1724897322513d3a477724ebcfc53acb68d27545bf15338ddc985c56ae7ee26687b15583c88dcce7a571e2caed30ee73c244f96418fed8d17ef2cc0e86ae7b8f346dde55e88e78ff23e9edb37e3cd68ac7b7435707283baabf9b72ba6b1dc735697326a62812c96f673ecd9d34353e8ce9cf3d7eb4e441b8bccb7ab9d1bef3877fbc59a7be5373f88b58bdac5daff72af5fecd10602b12673bb0aaa785bc4f18f43fd361aadc49a91ef69e6fc521bfb52f855e381afab8420179b3eea0ec76bacfbf42647ac585728e4b288a8201522802544004b880096102102584204b0840860091122802544004b880096102102584204b08408600911228025e4ef5bfe3fcd35db41a6005a400000000049454e44ae426082	image/png	0
5100	Chaussées	1	5000	\N	1	\N	\N	\N	1
5101	Trou, affaissement, bosse	1	5100	174	1	\N	\N	\N	2
5102	Revêtement manquant après travaux	1	5100	174	2	\N	\N	\N	2
5103	Revêtement manquant	1	5100	174	3	\N	\N	\N	2
5200	Trottoirs	1	5000	\N	2	\N	\N	\N	1
5201	Trou, affaissement	1	5200	174	1	\N	\N	\N	2
5202	Bosse	1	5200	174	2	\N	\N	\N	2
5203	Revêtement manquant après travaux	1	5200	174	3	\N	\N	\N	2
5204	Revêtement manquant	1	5200	174	4	\N	\N	\N	2
5205	Bordure endommagée	1	5200	174	5	\N	\N	\N	2
5300	Escaliers	1	5000	\N	3	\N	\N	\N	1
5301	Marche dangereuse	1	5300	174	1	\N	\N	\N	2
5302	Rampe / main-courante endommagée	1	5300	174	2	\N	\N	\N	2
5400	Aire de jeux ou de sports	1	5000	94	4	\N	\N	\N	1
6000	Défaut d'éclairage	1	\N	0	4	image?resource_type=image_type_signalement&#38;id=6000	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e2000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070e022a58ac3db300001fa34944415478daed7d797454659af75377bf151c214b65630d498836adb4640169bb4948c2a29e16920073fab44a36d0efb35536ed7346c90afa7d2d4bd09e9e69054240fb9c4fc120dd7d7a1a4216c0f309d9f174b70a64617a6680acb49a54dd7b7ff347b8975b4b101d4196f7774e9d54aa6ebdf5d67d7ff7799ef7d9ae03008881e15b06c74e010323160323160323160303231603231603231603032316032316032316030323160323160323160303231603231603231603032316032316032316030323160323160323160303231603231603231603032316032316032316030323160323160323160303231603231603231603032316032316032316030323160323160323160303231603231603231603032316032316032316030323160323160323160303231603231603231603032316032316032316030323160323160323160303231603231603231603032316032316032316030323d6680040866158cf4d188611f075fbfbf6317cdfb3bf6f7f7e27c0814067ec0e2191c3e1208ef3bfb6344d23c3304892242f62381c0e02400e87830cc3209ee749d7f5807fed9f33bfc3fc2c23d66d0c3b01cc05f7783cc4711cf13c6f11c2fceb4b183b6902bd673f06c0a8ef335578bb5d5197a58ffdb9288a5e6433094844d6eba6b433496897429aa6110002603d3789aa691a699ac654e1ed0ac33048d7751245d14b729904e238ce925ea2287ad94e2651be8e5abb93d41f53853689e3aba240442050474707b5b6b6d25ffef217fafcf3cf69cc9831343c3c4cbaae932ccbf4fdef7f9f264e9c48f1f1f1a42a2a81400e7290838886878789e7791204c192705fa5326f370877aa6d65924ad775e2388e868787a9b1b1917ef3d69b74ecd831eae8e8f032ee1312124855553a79f2a465bc8ba248e3c68da3d9b367d3c2850b293b3b9bee0a1a43b22cfb49b8d176964c62ddc6aaf19d77dea1f2f272fae4934f4890447ae4914728353595a64f9f4e3f7ae847574869e8c4733c1930e8e38f3fa6a6a626aaababa3dffffef73430304063c68ca1258f2da6c2c2424a4c4c245dd72d72de712a11b7213c1e0f00c0308c91bfb6870e030600cdd0f1eebef79070ef3de0041ee19111282d2f43676727745df71b0b00745d87a1e9579e1b0634438766e8a8fee000a64c8d812ccbc8cdcdf59a8f399e6118d034cd6b6ed67b9a3e32c1db04b71db1cc05f322830fb9ce76762073c17c38780e91d151d8505c84fec10168c6c8226b9a06c330e076bbadffcdb14d2258af5d7eb49d6a4758b80b494949b870e18275cc2f7ff94b04070763e3c68dd69c8687876118861769a11b166919b16e42e8ba6e49134b1a00706b1e1800de3f508d7f187b376455415e413efa06fa2da963d824c8d5c6f77d7ea1e722c64f9c80c8e828b4b5b559c4340c03adadad183f7e3c1c0e07a64d9b8603073fc0907bd86b4c93a4b7136e4b5568975c1e8fc7527d15af6f87d3e9446464246a6a6abca4934946bbfaf3783c96d472bbdd7ea4330c03172e5c4072723264554165d56e6b0c3b590e1f3e0c5555c1f33c14a78af4cc0c9ce9386b7d0f23d62d22b1fcd4210ce415e44356152f557535f5e92b9dcc63dc9a071e7d840803030398356b162449c2ae5dbb024a4e13555555505515a22c811705284e15a5e5655e92f5aba42523d64d0053d200c0d68a6d106509b9f979de764d005205822951344db36caaa69666242525419665545555596399b693fd7b4ca9989b9b0b5196505c5a82b969a9e04501c9b352d0dedeeeb75160c4bac9a5d6ef7ef73b70028fd9731ec4b0c7edb5d8be8b6fff9c4910f3ffad5bb7a2adad0d43ee617cfee51708090b85e254515c5c6c112a1059ed52a8afaf0f4929c908090b45475727b6566c83e254f10f63efc6ce9d3b992abc9961dfc10d0c0c60dcb871183f71027afa7aadddbc7de14d428d66a01b8681279f7c128aa2c0e572a1e1d8513c9038d35267c5c5c557bed7f0b7f3ccf998aab1b1b909bc2860d93f2e8701e0a3932730ed9e04288a82ddbb7733627d67d2c833b28086a65bcf61d85e07f0f9975fc000909d9d0d411070f0e0c18004fa2a7202406969298808a74e9d426e6e2e044944786404b297e64094257476765e21aa8180c6bba90a3d1e0f741858b36e2d14a78a9ada233000f40df463c6033f80e254b17b4f95b54bbdda8e9411eb3aeefacc87dd0169da40a5e5659024096bd7aef5b2b7beaef4932409bffded6fa1eb3a72737311ea0a436d7d1d425d61489d97e6e597326157b1f6f9e1f2eeb4a7af17822422bfb00043ee6118003abbbbc0093c4459426b7b1b7418b7b43be2962496a6697e27db725c1a3aaaf6ee8183e7909292e2b5031c1e1ebe661bcd2ee11a1b1b111e1e8e888808b4b6b761f3d62d708e09c2d6ad5b03cfc166ecfbba144ce23ffee413088f8cf08a06c44d8b072f0a98999438729ccd497b2d9b0c46ac6fd14fe5fb5ad5de3de0450161e12e9c3e7dfa6befb44653370d0d0db878f12274187877df7b080b0b832449686c6cf49acfd5a4cb993367302f231d4525c5d85ab10dce3141387ca4060680866347119f300dd113c6c3c173282a2966aaf046c2943ae60ece1e1ad9bb772f0449446474149a5b5bae2ae1be8ebbc2f7b38661a0bdbd1d2e970b89898996241af6b8bdd5b26d6ebaaee3ecd9b3888c8e822089509c2a3881476d7d1d0c00a22c4152646c282e425afa3c844746a0afafcf2f8ac088751d612e967df157ae5c092242a82b0c8dcd4dd7149eb91aa1ec816c73617ddd11fbf7ef872449285859888bbd3d232acdb6130c245d4f349e84ac2a9055059222e3b52d9b61009832350673d352a1c3c0b10f8f4356156cdebcd9db39fb0d6d4546acafa102cdc56b6f6fc7cc9933210802e6cf9f8f331d67af049c7d02bdd76aa7d88f1b1a1a1a5525198681850f2f82ac2a88899d8a8ad7b7a3a5a565549bce300caf28406d7d1d2ef45c8447d750b0b210ce3141d6dc274d998ce4e464e66eb861c4ba6cec0e5c1a44514931887320323a0adbb657588be2d1352f9752a030cfb5fac2fc6c1bddf07aef3fcfff173217cc87284b9055058aa2c0e17060dbb66d01c96a00f87fefbd8ba0bbc6e050cd616bcebb7657c2c173683bd58e618f1bbffaf53f83e3387475757905b519b1be860d33dac2077aed6c67078a4b4b103d613c789e476a6a2afef6b7bfdd30e376345bedfcf9f3a8afafc7bc8c7408928886634747558b7d7d7d902409a5a5a5d6982d2d2d902409f5471bac341c5996b16bd7ae5b4a059af8ce5293cd62060448df35332dcda206411068606080b66fdf4ee59b3692dbeda69898187af7dd77e9273ff90901b861f9e43ccffb55e6088240616161141212423ccf534c4c0c252727fbd52d9a731c3b762c0507075347478735e6fdf7df4f0e87830e1d3a440f3ef820dd7befbda4691afdf9cf7ff63a57b74a162af71d64acfa55089b05a2e689b31f238a22b5b4b4d09c3973a8b8b898264d9a44959595f4e9279fd2638f3d662dde8d2c52d075ddca5ff72d983874e8103df4d043566da2991f8fcbb5856609d87df7dd479f7df69955d841443471e244fafbdfff4e9c8323cec1d1dcb973e9c4891316816fa5d4e61b2eb1ecf57c9aa67991020061e420d2748d04ce41cdcdcdb468d122f2783cf4da96cdf4cc33cf908346de177981344df3922237e2e4fbe6b09b52c99ccb840913887370644ec5acd0e1388e0441b0ce83d3e9f422e7a44993a8b5b5950c8c10519224fae4934f6ec9428cefb460551004eba4bbdd6ebfc5bb74e912fde217bfa0c1c141e2799e2e5dba44838383d68937c730a5d68d28083555b74926b31ed19c4b707030b5b7b77b4922b38f83c3e1f02a641d1c1cbc72410114131343e7ce9dbb4c4a07cd9a358b3a3b3b2dc97d2b91eb3b5185e6156fb75b2449b22480dbe3a6bffef5af949a9a4a0d0d0df4e8a38fd27df7dd47c5c5c594989848cdcdcd240aa2a582ccc535a5c1f59ebfefdc755db7d4f90f7ff8433a70e0000d0c0e58b611c77116314ce914151545274f9ef42a929d3061027dfae9a75ed25d1445abc8f6565285df09b1ec768af9bf6118d4dcdc4cafbcfa0acd9933871e78e0016a6b6ba3bbefbe9bd2d3d3e9d09f0ed1962d5ba8bbbb9b1e7df4516a6b6fb388652eee8d5283be7696599cca711c3df3cc33e4f178a8b0b0900090c7e3b1886f3f7ee2c4894444343434648d3b7dfa745214850e1d3e34626771dca885b5ccc60ab030baae5bd2a5a9a989fef0873fd0891327e88f7ffc2369c6955abcc993271311d1ead5ab293c3c9c9e7aea29baebaebba8a0a080f2f3f3e9c363c747ddad5dcf0bc3e170782db4fd029933670e3dfdf4d3f4ab37dea0b8a9b1545e5eeeb57b341b8998c6bda228d66b93264da2a1a1213a71e204fdf8c73f26c330acf3845bad2ef14678ca75185604df00d0d8dc84dcfc3c64cccf042f0a101419a2aa809725a4ce4b436d7d1db297e64071aaf8c9e2c730352e1691d151f8eccc69188681d2d25288a288a2a2222fc7e1b7e940b4e7a1f7f7f7a3b4b414fbf6edb35e6b6868c0be7dfbbcbe5fd334f40f0e60cdbab5e0041e6161617e7332cfc1eab56be0743aafccfd725da12b221ce9991930003cb66431e2a6c57b396aedbfd53ef6cde6eba2eb49a82fbffcd2eb647a740d7ff9e4af088f8c802b221ca1ae30c8aa82c5594b50535f87e7d6ae812089484a49c6f98b17acd0476e7e1e887360d93f2eb74e707c7c3ca2a2a2d0dfdf6fc5f6be0d62f906ac354d43575717e6ce9d0ba7d389b8b838343737232121c1ca2a5db66c195e7ae9251c3f7e1c89c9492007e1674f3c8ebebe3e6bd12d725cbec0e6a6a5223535d52b350606ac044203406c7c1c3217ccf70b42fb3a947dd375ee08cfbb997c67d6f52d5dbecc0a7f4c9a32194929c910650939cb96420350b5770fd42027b297e6c0009094928cf0c808bcb9e32d341c3b6a8d5b5b5b0b87c381975f7ef98679d8fbfbfb919595054551101c1c8ccece4e54575763cd9a35c8c8c88020081024d1ca02350963977e661644445424b272b2fda211dbb657409425ecda5d095955505a5e1630f5275005d11d412c33003b343464d5f5e515e443144564666662edfa75080e0d416474149267a5c0c173786ef5f318720f63cdbab510241135b547d070ec284459c2aaa79f82667817a3ce9e3d1b53a74e1d3558fc3f99b75d32d8535f6a6b6bc1f33cf2f2f2fc16333d3d1d31b153ad78a6f919bb84d10c1d7bdf791ba22c61f79e2a18004e9f3d63157a34b534435615c4274c0327f023991a86f758e6779a1ae1660cf9dc9058a147d7b076fd3a284ed5ea6ba0691ada3f3e0551969094928c590fce861ae4b472c0398147c1ca42b8350fb272b22148e24841844d05ecdab50bb22ce3c08103dffac9b5174198e8eded85cbe5c2c30f3f8cbebe3ebfef2c2929012f0a96daf7259e29bd376fdd024ee011ea0ac392ec2cc8aa825dbb2b2d93811c04c5a962da3d0956303d5041adeffc6ea69cadeb462cfb8f3f7df60cd4202716672df112ddc3c3c3d8b26d2b14a78a679f7f0e9f9efecc5a88eaea6ad4d5d501000e1e3c085114ad2a165362f5f5f5212c2c0ccb972fffd68cf7d14ab78091c28a2953a658b693fdd8e6e6913a4351962cb56f1fc72e09cd6c868cf9999014198224222c32024fe4e5a27f70003ffcd143102411cfad7e7ea4f43f4030dbb720f6664b04bcae12cb14d56bd7af83a4c8e8eceef2333c354d437a66c648c54b7757c02c08b7db8de8e8682c5bb6cc6f17689666f5f4f47cab7661a0c25697cb85bd7bf75a178e4996eaea6a040707233c3c1c4525c57eaa30602e17809ada231024119c24624a5c2c384944a82b0c13264d84e2544776c1f02f57f3bd70ef5855382f231dbc28202d7d1ecacbcbfd4e465d433d2445c68abc5caf93e6ab46025da1070e1c00cff3a8a8a8f8d6930903e567f94a0a60a4985555d511f7c36552e930fc48605e546eb71bd113c6831378b822c241028fbc958558b234078224420d72626e5aea95b16cc67f7d7d3de2e2e2101919e9b783bd2354a1b903f2e81a245985a0a8f84152322449427979b95f0fabb4b434288a82eeeeeeafcc7d3255837922c785046349769697fa094482abd9285efe24c04ffd98cd4560f8ecc800d4d6d7419044d4d6d75da9751cc5fef1e81a3443c73ddfbb178224e2979b5f43ceb2a5905505a22c4114452c5bb60c870e1dba721e0c1da7cf9ec1c28717419044ebd8d6f636cbe81fad7580f5bddf2093f6a6f5639986b824ab58fbe22fa00158b264094451446767a7d7f17575751045114f3cf184df16daf7e18b1579b9509caa95733e5ad2e0d59a6f58631ba3db59a67ab313dba36bd859b90bce3141f8b7437fb28a697d1319ed44acdabb07e4202c5dbe0c068003073fc0b89060c8aa82cccc4c3f876ff9a68d102411c439b0fec517d0dcda825057180449445afa3ca4a5a5e19d77def1faeda65fcf4ea81bd91be2ba4bacdafa3af082849929b33036340c1d1d1d080a0ac2ca952bfd6c83193366202222023d3d3d7e4ebf23478ef85d6d274e9cc03fffcbafb1b372178873a0a5add56be1ed8510813cd6818a5eedc4f2f50f19a3fcce877efc238c0d1ee757c2ef4b28b7e6416d7d1d2445c6d4b858f4f6f761d8e38666e828292b85a4c8d8bc79b3d7f77ffae9a79055058224226e5a3c7656eec2c5de1e9c6c6a446474143881475050101e7ffcf1806a3ad0857823d29cafbbc4aaa93d025971420e1a83c5394b01008b172f467878382e5ebc68fd78c330f0f6db6f435615bcb9e32d18007afa7a71b1b7073b2b77811378b4b6b7792dd8f6375e872089d8fec6eb106509750df55f69378d66875845a66e8f9f53d3bcd297646779154b783c1eac58b1028aa258d536813630a653b4fe6803425d6188888ac4c9a6461800062e0d62d5d34fc1c173484a490e28e5bace75a3e2f5ed88899d0a5196e01c1384e0d010284e1569e9f3505b5bfb953b5a2f757f3b10ebbe19f7439255908343c9c64de8ededc5fefdfb218a22f6eeddeb1deed0750487862065f62c180052e7a561e1c38bd03f38005e14f0fc9ad5571c8e008e1e3f064ee051b5770f2445c6a19ac3568334536af9f9912e4b27b7db1db89ada187d6778ff0f66a0e2f5ed706b23af171616c2e974223d3ddd92b2bebb5e7bc93f2f0a08090b454b5b2b0c0047ea6a111b1f077210f20b0b2c556bee36cdf99965f80680fdd5ef63455e2e785140716989e52fbb9afde4dbf2f2968f15b6b4b5429425444446839715384409070f1e84aeeb888e8ec68a152bfcaeb0fcc202089288b39d1d282a29062f0a686c6e42524a32e62f5c80be817e149514e3b333a771a8e6302445465149f14839d5d186af54cf5793668631d255c4b76cebb5d75e83d3e9b40a4a0d00b9f979906519797979013703a6fdf5c73ffd1ba6dd93004ee091b9603efa06faf1ff4f7c84871f7d04a22cc115118eb77ffbce95786aa0f0cde5f8e28e5d3bb1a1b8081ffceea0574f55df7e5cc3c3c35eb15353235ccb0ef89670901a0082ee1a83255939909c41088b8c426969293c1e0f323333111313e3f7235bdbdbc08b025effd51b686d6f83ac2ad8b26d2bb297e6606a5c2cce76764094256c7af5156b3796bd34070e51404d7d9db5a8a3158dfada5cf6dda5dbedb62496c7e3b1c6d8b97327789ec7d1e3c7d0d9dd85bc827c38780e7905f9a32ed2e1233558f4c8c3200721323a0adbdf78dd728af2a2005e1450b0b2107ffbcfffb0dc0a9bb76e417777b7bf5d7859ba99d5d29222233834042565a518b83418f0fb7d9ba598bfc9d7aebde58885cbc66a7a6606c60587624a5c3c7859b1fa49bdf4d24b5055d58b048661c0ad7970eff4ef6171d61268860e5955b076fd3a14978e844b741896947aff40352445c6cc94648c0d0d811640329d3d7b16959595282828404646061445812008080b0b436666268a8b8b71f4e8514b4a199aee67bcf7f6f6425114bcb77f1f56af5d03511ea97e365b0d59d2c1005a5b5b316fde3ccba31e111589a4946470020f595510ea0a435e413e3aba3abd1a82e830109f300de9e9e923e1aef676ac59b306a9a9a9c8cac9c6998eb3989994085e14b06d7b059267a58017053c99bb021b366c407575b597bd58535383e3c78f5fc930310c545555e1d2a54b37c4a17add88658adfd6d656c8b20c9ee721cb32384944f9abafa0a8a41892227b79964d29979b9f677562b96fc6fdc85c301f2f6d78199222438761395bc32323463cd7028ff90b17e0485d2d1a8e1dc56fde7a13eb5e588f99498950834654182f0a888c8e42c6fc4ccc4d4bc5fc850b101b1f0735c8094e18693a3b372dd5226c534bb3153cf7e81ab272b231ed9e044892642d7e6d7d1db66daf40d9c6722cc9ce427a66063881871ae4b4fc4d9cc02379560a9e5fb31ad51f1c406f7f1f0c00cf3eff1cc2c3c3515676a50f694e4e0e162f5e0c00a8787dfb885febf2636bc53614ae5a095955505c5a8203073fc0e49829964feb674f3c8eb653ed58f7c27a4c8e990235c889b869f1e81be8c76fde7a1309f7de63b5a6fcaf0be70336a1bba53cef8661e0c8912358be7c39445184a82af8d71d6f61f5e5dc2bc327c06a00967432007ceffbd331372d151b5fd9045196b0f79db72148229c63821012168ad8f838284e150e9eb3a484e9bdfec1cc07909b9f879d95bbd0fdefe72c23d86cbd3de41e46d7b96ebc7fa01a4fffefff65d93d66c30e4ee01174d71804dd35069cc0831705242424607070109b376ff6226d6c7c1ce665a4232b271b651bcb71a8e6305adbdb2c3bc8fc4ef379706808e2e2e22c87b1af2dd8d3d70b574438662625e2fd03d5484a49062f0a58929d65f5a4372e87cbd420273aba3a1112166a91e7b9d5cf5be74194254cbb27016bd7af832089c8cac9beeef72ab821b73c31efa4b561c306daf4ea2b3463c60ceaefef2722a28f3ffe981cb852086110a8acac8ccacacaa8bbbb9bc68f1f4fcf3df71cd5d7d7d3c993270900b95c2efaf0c30f69f2a4c9d6ed47fafbfbad7a445996293131914441248fe621511047cac978810c18c43902a7fa9bef7d74e223eae9e9a18f3efac82a8020221a3b762c2d9cbf80626363a9a5a585f657bf4fd3a74fa7d4d4540a090eb16ed4041a99477b7b3bdd7df7dd3465f214323052a533721b272245552878ec384a4d4da5fcfc7c4a4b4bb3d2974d749deba6f3e7cfd3a2458ba8afaf8f525353e9a1871e22b7db4d4ea793c2c3c3a9b4b494424242e8c44727a8727725151616d2a44993a8a9a989de7bef3ddab16307151414d04f7ffa5302402fbef822bdf1c61bb46ad52afabfaffe1fafdf774ba426dbdd0876bb676bc536c44d8b07710e38c70421232303e7ce9db38eeb1be8c794a93150839c58ffe20b96e43077640d0d0de8eaeaf272a0fada0cbea1185f23d6aeaa7dd35102858002dd02a5bbbb1b2565a5d8bda7ca721f98b69266e8f862e84bf0a2004ee0515256ea77778c2375b5e8e9e919d51beef178d0d8d838d24a4014ace44853a28ab264a9dbe2d2121800ea8f3658bdc17afa7ad1dade869d95bbacd8e5ee3d55181b3c0e6a90134bb2b36edd20b46f8aaf7ddb7be1c20594979783e338088280cccc4ccc9b370fae88704b9d11e7406272124aca4a477a2104f09cdb313434744d4ec0d1fc39a67fcbda488cb283fae28b2fb069d3264bfd72028ffdd5ef7be5f52fce5a024991a13855d435d4e3d7fffa2fc85c301f73d3529157908ff24d1bb165cb16cb896ab69bb4fbd75c2e178282821016ee426e7e1ededdf71e1a8e1dc5966d5bd1dbdf871579b988888ac4bef7f74387818bbd3d489e9502411251b5770f42c24221293232e66762497616d420279267a5a0aea1def2995d2fdfd60dc96eb0fb857c13e83a3b3bb166cd1acc4c4a84a4c8484949c1c68d1bb17fff7eecd9b307fdfdfd7e52c97e9708df20abbd4d63a006b3e67c7c3f7fb53c72fb674df7c4a953a720ab0a962e5f86a971b1d60d01ce5fbc80ba867a10e780ac2ac82f2c404f5f2f22a3a3101c1a82d8f838488a3cd2234b96470db998118acaca4af4f4f478b566f20b6cfb34778b8a8a82c3e1405454149e7df659b85c2e489284152b56a0a7aff79a6fef72f3ba1b6c57bf25f28d2b15295e27c9bcda7daa5e46736eda8916c84bee2bb5aee61c0d9426e3bb68be0b6a180632e6672238340447ea6a919e9961b5e86e6e6d41dba976b47f7c0a9aa163497696d581266e5a3cc2c25df8a7975fc2e9d3a7fd432d9aeee5f2f0fdada3c6656de7acacac0c515151686a6af20fe81b57b24eae6758e7ba06a103a66b58c68877268249ac40e92657ab48f1750a06eaa46c974af6704fa024bcaba5eaf84ab92375b59055054fe6ae4062721214a78a7919e9564f798faea1a9a5d9b28fcc585f6979995f86a93d06a47bfcef3636303080a2a222444646e2d9679fc58a152b90939313f077fa6a86402126e31a497b53abc2db09be77aec8caca822ccb1004011515157e6194818101e4e5e5a1a4a404191919c8ccccc4fefdfb47959866dd6558b80bd94b73b0effdfd56e189e254a13855f0a2005955101b1f87fec101e830fcd2a1bf6b30627d43729912e1d2a54b98356b9675eb135f09e47bf3cb40fd53edf8eccc698485bb101e1961ed86cddda02089104511313131d8b163c7356f4a18b16e41d877928102d1be2e8440d2cf1e972c5cb512a22ca1b9b5059ddd5d7862c593981a170b35c889295363505959e935863d640326b16e6dd8edb34077a40894706757a1f65da9fdfd9a9a1a38780eeb5f7c016feddc81f88469568da1598368f7b78d768be19b0177fccdc6bf69b71cb3819c6fa30e33cae0fbffd0d0104992e4d716d3de2065f6ecd9d4d4d26c75d1193f7e3c151515d1e33f7bfc4a6ba351da2ad9c7bd23bbcddcea308964b626323be398ed864c5299e43049a3288ad7e7789e2787c341822090aeebb46ad52a6a6c6c2400141717471b366ca065cb968d90d7d65613973bd7489264bd6676aeb999c8c524d637807d118786862cd2d87b94fab656325b459ac4b44b3e22a2d0d0507ae08107e8e73fff39656464902ccb5e63fac61103bd869ba8d51123d637849d2826d1cc850d4482408bef76bb4992243fd2d9c787ad03a2c3e120e80639388e70b9612ec7f3e471bb49bc2cc1c8c12416c36d0c8e9d0206462c06462c06462c0606462c06462c06462c0606462c06462c06462c0606462c06462c06462c0606462c06462c06462c0606462c06462c06462c0606462c869b14ff0dc882504672933e2c0000000049454e44ae426082	image/png	0
6010	Eclairage éteint la nuit-	1	6000	1475	1	\N	\N	\N	1
6020	Eclairage allumé le jour	1	6000	1475	2	\N	\N	\N	1
6030	Porte de lampadaire ouverte / fils électriques apparent	1	6000	1475	3	\N	\N	\N	1
6040	Matériel en mauvais état	1	6000	1475	4	\N	\N	\N	1
7000	Mobilier urbain dégradé	1	\N	0	9	image?resource_type=image_type_signalement&#38;id=7000	\\x89504e470d0a1a0a0000000d49484452000000720000009608060000000208dce9000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070e031087bbd5400000001d69545874436f6d6d656e7400000000004372656174656420776974682047494d50642e6507000020004944415478daed7d795855e5daf76fadb507260504544046135150409936620a8a63969abe6a1deb94a7faea7c65bdd9781dedadbe4ec7f76d38d6f9ce397ed55b9695b3d51b0ea09803a3a8e180284ea888268220c2de7b0dcff7c7decfe2598b8d5998ca713fd7e5e5668f6b3dbfe7be9ffbfeddc3c3114208dca3db0fde3d056e20ddc30da47bb881740f37906e20ddc30da47bb881740f37906e20ddc30da47bb881740f3790eee106d20da47bb881740f3790eee106d20da47bb881740f3790eee106d20da47bb881748f7f15201545812ccbd77c8f2449ea634288cbf7b3b9d29de54dd3efd1bfcefecd7e3721e49aef7503c94c18cff31004413351ec848ba20883c1a03ec7711c04415027545114f51f05cbd5644b920483c1a07e073bd8bff58fe9dff43bf59fbda3812484401004c8b20c9bcda6799e9d3c8ee360341a21cb320c0683467ae9c4f23caf590c0683013ccfbb5c301478fa59424887bfd96b615ffb5704505db05dadfda0c0e91f0380cd6683d16804cff3aa3aa51225cb320441c0c9932771e9d225d8ed76b4b5b5a1a2a202b1b1b1f0f1f286979717860d1b06de09b0ec945483d10870ae55a51e2c2ae5ece27203a99b209ee735ea8e9500fa1c0b5a5d5d1d8a8b8b71e8d0211c3c7810bb77ef06cff3906519b22cc36c36c36ab5c2d3d313501cea59100404070723252505f1f1f1983c79327af7ee0d99281af54c41a2bf45af8fbd2e009a2dc00d24032495424992347b1f070e8a2c63fbf6edd8b16307b66edd8ad3a74f431004489284e8e868f4e9d307a9a9a930180c484e4e86c96482dd6e872008b87cf932d6af5f8fb2b2325cba740966b319adadadf0f2f242606020b2b2b23064c810242727233a3ada21b54ec07841d048ac5e83b09ac1ad5a3b31444451c48e1d3bb0e1fb5c6cdfbe1d8d8d8d902409090909c8cece465a5a1a121212e0e5e505701c644982e09cd4ab2d2d58b97225d6ac5983e3d5d5eadecbf33c4c2613144551a55466d4b8bfbf3fe2e3e3919a9a8ab4b434c4c5c5c1e461eea072d97dd72d913a89b4dbed30994c387bf62c3efae823e4e6e6e2d2a54be0c161cc983198306102c68c19035f3f3f10ba5ff13c88a280734e6cd3e5cb58b26409962d5b06411010141484c8f070b4b6b6e2ecd9b3686a6a822ccb2a703ccfc3ee5c38d410a28f154581878707060e8a45626222b2b2b2909898083f3f3f8d3bf2af066aa740d22715e79e23cb32789e6f37189c6f385d5383bffffdef58b76e1dac562b929292f0bbdffd0e93a7dc03a3d108a3d1a8015fef0e104230faee51a83d7306999999f0309961b3d9b0bd7097eab2d03d97be9f7e075d4ca228421004f5f9909010787b7be3c48913b05aad301a8d888d8d45767636264d9a8498981880e7345b832be3cdd5b0d96c309bcd9a3d98eecb8410d8ed7698cde6db0b48499620707c870b561405ad2d57f1fefbefe3f3cf3f872449983a752a1e79e411c4c5c5413018204a8ec965573e3b49744200e0bf3ffe04172e5cc0c6dc5c9c3f7f1e8a24a3672f7f343535a912d8a74f1f582c16a4a6a6222a2a0ac3870fd74a362158b66c19de79e71d58ad56cc9f3f1f73e7cec5eeddbb919797879292129c3d7b161cc721222202699674582c16dc7befbd1dae8d8244179e5e82d9f7b2c6def52e86df64904e862ccbae5f5008d95d5a4632334690a88848f2e09c07c8818afd842884d8daac84288ef7b8fca8a274f8bba1a181bcf9fa1b242cb41f199e904806f6bf8b44f60b23fd4242c9dd9923c97f2c7a8d1c3a70b0fd7b15426451521f4b7651f3dcc9e327c894c9f790bba2fb937f7ff639d27cb9891059218a2493ca8387c8474bff1f7960f61c12151545c2c2c24864642479ecb1c7c8b265cb484d4d0d9124a9d36bb65aadea73fa7b91659988a2486ed5c0f5bc895eb86417c9077f5d42c242fb91c4c444b271e346224992e6a6f43778add1d8d848a64c9942ee8aee4ffed7e34f908b177e2209438692d19923c9f7dffd0f116d76ed02919576002549b3d86c369bfa5c7373339932f91e121d1945fa4745935933ff8dfcf7c79f90c3872a095108116d76d27cb9897cb36e3d59f0efcf93a4844412191e4122c2c249d6a8d1e485e71790afbffe9a343434a8dfdf1948ec75fc927bbfd1a353d5dac14f24c0c23ffd099f7df619121313f18fa5ff44bf7efd7e952aa17eddd4a953b17fff7ebcf0fc02fcf18f7f54552438cea5fb402d56f6b7445154f761d6256abedc846ddbb6a1a4a4041b366c406b6b2b388e43404000b2b2b29093938394941498cd6698cc661ca9aac2e6cd9b515a5a8aa2a222f006875d405d9ccccc4c242727c3d7d7d7a54a65f74c6a00de76566b6bcb553cf3cc33282828c0cc9933b1f83fff13e0a0f11df52c0b0bae1e64ea673efed8631837613c66cc98a1f1f1a8e140f729969ed373a694cba513a72702a88f7becd831e4e6e6a2a4a404e5e5e55024872f3978f0608c1b370e393939881d3448b5a2cbcbcb51545484bcbc3c9c3b770e3ccfc36ab5e2eebbef46464606323232909494d4fe9b820049141dac13d0a91f7b4b809424091c019e7aea2914141460ca942978effdf71d52c3739ad5c84eb82b6bd095354514059cd02ef5f433b22c6b2c550a98de91a7a0b312a2079902cb719c6addb6b4b4a0aca414050505f8e1871f70f1e2454892045f5f5f8c1b370e168b05696969080e0e0600d4d7d763fbf6ed282b2bc3962d5bf0d34f3fc16030401004e4e4e4202d2d0da9a9a9888b8f8768b7c36832dd3e40d20978f5e557f0d5575f61d6ac5958bc78b16362791e0a69b7ecf43e193bc1aea4080088ecb008c1731ab0541000c88a0c811740e09060389fe3791e3cda81a2bfa527cc5d2d28f5dae842e2791c3d72043b76ecc0f6eddb515858a87e6f5252129293933176ec58a4a7a73b543e80aac387515c5c8c929212ecddbb17f5f5f52a953862c4088c19330639e3c7dd5c20455124ec2aa713c82bc05b6fbd858f3ffe18731e7c007ff9cb5f5cee07fae7d8d73a23ac5937864ab1acf35759a9a2ea91464f789e0714c75e2a89220c26e3af0a53b9ba8ffafa7a545454a0685721f2f3f3515f5f8f969616188d464c9c3811f1f1f1983a752afa3aa515002a0f1d425e5e1e366fde8ceae3c7208a2202fc7b213b3b1b13274ec4e8d1a355f6aa7de6b5fe27eb17eb490bf6751a75722991f483f4c31cc761fdda7558b06001860c19826fbefb56a3ee589058d0789ed738cc8aa268dedf5904c29504b3ea9daa6b0d33034e9510700e03c36834fe22d6c6956a56ef85e3214b12eaeaea543f74cb962d301a8db0dbed080f0f475a5a1a468f1e8dcccc4cf4741a41a7cf9cc68f3ffe88efbef916454545b872e50a4242429099998969d3a62173e44807270ca21a93ac01e7caa0d32f3ad6c05381541485e8998d43870ee1be29f762f0e0c158b66c197a050674baa2f52c4d6780508a8d9d647685b137a00796dec4993367101616d6ae3a180bd7d5cdfd5289d44ca28b0d87280acacacab071e346ecd9b307959595eab58f1a350a191919b0582c881f3244359ab66cd982cd9b37a3a0a0001cc7a16fdfbe983469121e7ee4f7e8dbb76f07a963ffd7c7767f768f6445bca9f132b2b3b3218a2256ae5c89c171718ebdcaf93add933a6337d840aeab30d3b58c20fad9eaea6a5cbe7c195555553873e60c0e1f3e8cd3a74fa3b6b616bffffdeff1da6baf61d58a9558bc7831cacbcbc109dac9e88af9df99a6e9a0da01343535614b5e3e8a8b8b919f9f8fb6b636288a82e0e0604c9a3409393939484e49015114d4d5d561d3a64d58b76e1d0e1d3a0400888d8dc5ecd9b3317dfa74f8f8f8a8dcb32c49108cdad0e0cf91fe9ca228c4a19d1c933b69e2441c3b760c7ffffbdf31362707200484d3ee3beccd480c79ad07989546455134fede81030760b7dbb16bd72e343535a1b2b212172f5e444d4d4d07a3253c3c1c111111d8b56b179e7aea29bcf0c20bf870c907f8eb5fff8aafbefa0a49c387a9d191eb5dc1fac5a7ff9c3ee3809d449abaa21a5a4ec3a9b2b212f9f9f9d8b66d1b7efcf147288a82c0c0404c983001393939c8caca02001c397204ab57afc6d6ad5b515353038ee390959585d9b3672367dc3897ee8babfd9c1d06d68a7cf9e59771f2f8713c3c772ec68e1dcb442888ca8f9a4c26c7173ae75ae01c8f05de71431cdad59222cb686d6dc5e1c38751585888eaea6a9c3c7912870f1f86d168543308388e43727232fa858462d28489e8d3a70f626207c2cfcf0f03070e54d57d494909828282342e0f0d71b17bf3f5183cac45ab0f40b3ee0a5d7c344e2a0882fa1c55ab06c1008ee7111414845e7e7ee8e1edadba27f5f5f558bd7a35962f5f8ea0a020d5675db86811162e5a843ca7da5db3660d0a0a0ad0ab572f8c1c39124f3ef924222222e0e1e9094241746e278410550ba940d20b292929c1b7ebd7a37ffffe78fae9a7018eebe00a99cd66556d29b20c5e10b4eac060405161214a4b4b71f4e851545454e0c2850baa8160341a91909080c71f7f1c7dfbf6457c7c3c060c18003f7f7fd8ac56983d3cda57205134d6eb952b57000083070f06210483070f868787879ad04509780ad0cf262b39dfc7ee8b2cb92149920a98d56a8507736d9224013c0703ef0c0a70c0874b3ec092f7df5755bbc1e000d76430c0c0f3307a79e1724303be5abe1cdfac5b070f2f2f8c1b370ee3c78fc7db6fbf8d850b1762f3e6cdf8f8e38f919b9b8befbfff1ec1c1c1183fde419850b2029d681c03a5dfcacaca204912aaaaaa909a9a0ad1699c88a208c168d0b816a228c264704854646424962e5d8a254b9660cb962daa44f4e8d10309090998397326e2e2e2101f1f8fe0e0602d0dc718111444a2db0fd83d569224954dead1a307ec76bb4b0bf47a542b35265c59e1f4792af52c88d412278caf2a49123efdf453c4c6c6a2b6b616adadadea67a9d48aa2086f6f6f58ad56c8b20c8bc582356bd660f5ead5f0f5f5c5c48913919d9d8ddcdc5c9c3b770e797979f8fcf3cfb174e9527cf1c517080c0cc4ecd9b3f1d0430fa167cf9e1d2592eae3b90f3f8491a3ee46757535eaeaeaaecb3028292a46795919be58b60c3f141460ecd8b198fbf043189230143d7d7a5cc3c4d2a5323217a5bf400a8c2008804254554ead5b93c9a4aa40576e8c7e2f6425522fa1aea8453dfda8e60639259982fef9f22ff0bb071e446b5b1beccc1eda2f3414393939b0582c080b0bc3800103d4b4949696166cdab4095bb66cc1ca952bf1f5d75fc3dfdf1f63c68cc1b871e3b0ed871f5079e810d6ae5d8b6ddbb6e1bdf7dec3a79f7e8a471e7904f3e6cd83878787e3ba798753da2164753d2cbe2ccb64cfee721215164ea64c9c4422fb851145727cd78d8c01d06b292d2d2591e111a4a4a898108590b29252121511494a8b4b34ef67a314f4bed87ba4dfd759984e511435a2c386ab5c85aed8df494e4e2643e2e2c990b878121d19451e983d87ecdab1538dd6d0480e1b7a230a21971b1ac9def23de4fd77df23a346de4da2222249ffa868d23f2a9aa426a790e79ffb7792b76933210a212bbefa9a3c307b0e890c8f200943869283fb0f384278b24c0caed4104b975d6b8fa1fb4b5555954add75e282ddf041f3630d068383ee1378b4b5b53932f018e9a1d2ca2643b304032bc5f4b13e0baf53e29f6163fef0873f606cf618d8ed76343737232d2d4da37928992e39739a8a8b8b5158588803070ea88611ddb3a92d62341ab166cd1a6cdcb811b22ce3fefbefc77df7dd87193366e0f9e79fc7cb2fbf8cfff9fe7b8756707581d7c38e104260b55a55508d46a3c30032085088e25081bf25b7e8547bfbf6ed4362622238021544faba2ccb2a88faec73968c6053253b232ef4ea589f39f0c4134f40b439097338c90ab4931685bb7661fdfaf5282828405353131445416262221e7ffc7124242420282808168b05e0384d3e537353130a0a0ab061c3067cf9e59758b97225645986bfbf3f2a2a2a70b9b1117ebdfc61607351a9e5763d1417c771e8d9b3a7ba0fb12c0fcff137452201e02f7ff90bde7cf34dd5a08abeab3f121313111717a702cb4a8eab5c5c767f74c54c75161460b59624493032d63c95c655ab5661f9f2e5d8bf7f3f3c3c3c307af468e4e4e4203b3b1bfefefeeafb08b37f2b8a02c1f99bdedede9832650aa64e9b862bcdcdc8cbcbc3d6ad5bb169d326787979a1b2b212e919168744babaf89f53ad1cc7a1a5a505b22cc3d7d717369b4d5d45922cc128fcb679a326a73a9a3e7d3a0060fffefd58bf7ebd6a295aad5698cd660c1f3e1cc1c1c1888a8ac2b061c310141484988103a1488e0977a86581fa3c8e688c33bcc6b22a7a0348af7a8d46a36a8401406949099e7bee395cb870013d7bf6c4fcf9f33173e64cf40b0b53bf5f6f90c9b223da43591d3d43e5ddc30753eebb17f7cf9c0110a0b8a808968c0c80735aadaed8989f33e10921aad5141717871f7ef8a19df5f8859ce7af19369b0d46e784d2bd2363c408541f3d8a23478ea0baba5a2520f6eddb07499260b7dbd5fb8a8c8c44bf7efd909292827efdfa21262606f1f1f1e09c7bbd9e1cd0f3c56cc44655d31c8fe6e666bcfaeaabd8b46913bcbdbdb160c102cc9933077efefe1af78addafe9df54b5532da0894a393587c964720899421caad8795d063d68d7bb47d23d485114984c26871a23c4b127dd0463c76030c06eb7e39b75ebb076ed5a188d46b4b5b5c160302033331384102427272326260643860c417d7d3dfaf6ed8b93274fa2b6b616070f1e446d6d2d8a8b8b35be6a78783882838361199181debd7b63d0a04188898981a7a7a73ad174e1b39a4c10046ccddf82175f7c11172f5ec4ac59b3f0faebafc3d3d3b3ddd0a2213a263f97e5a4f581733d3fcd86b978ce19fd71be667005d0f53ad4f462445154fd4342b959701d16c6afc9eda14480afafaf46ddf306031400bf7ff861e48c1f870b172ea0a6a606353535f8e9a79f5073ea144a4b4bd1dadaaa4ea6cd6683afaf2f42434311141484ecec6cf4ead50b0d0d0db05aad080a0a42595919aaababb1b7bc5cdd870921888888409f3e7d3064c810f8f8f860e0a0418e3d0e404a4a0ade7af3ffe0bf3ffb141e1e1e58b36e2d525353d9d0a3f39a856b0a4667650c9c0e788d90711c78b800f297588dfa5014cbda53b54317061b3d706540e807cb731a0c060c1c381000b067cf1ea4a5a54114451042d0bb776f24272777ac9b240ea7bda1a101a74e9d52a327353535387ffe3c8e1d3b86d2d252d8ed76787a7aa2adad4d95b2a4a424988d4688a2084992e0e5e585868606b4b5b5e1b3cf3e83288ae09d69252cb79b9e61c1d2a54bd1a3478f9b9ea0dc258b848244a5aea1a101417d7abb048a4ef4f572a19d31356d6d6d80b3e692d25dfa38240d0c0b828080800004060622859110961a3c7ffe3cce9d3b87e3c78fe3fcf9f3a8aaaac2952b57b06bd72eb54e936a1c1f1f1f240d1f8ea8a8285cbc7811c3860d435353139a9a9ab072e54a3cf5d453b704c42e0149ad3983c1a04adcf9f3e7111014e824063a263f51a9bc5ef54adf278aa2bad153d0121212d0b3674fb5248f2e0e3af9841080d3aa338d36208e1a94c0c04004070763f8f0e100e7a820e3380e1ccfa3b9a909070f1e445d5d1deaeaea50525282868606ac5ab50a00b075eb56d8ed762c5ebc182b56acf8451ae7b69248fd7e76f5ea55d71c29e38ffd5c5ccd95ff46c1574bd4651906a3119224b994da0e752a2e9ea3d11583c9a81a1f8aa2a8c02b928c9ebebe484f4f77b8298a82a79e7a4a7d5c5d5d8dcd9b3763c99225b878f1a26ac1536bf6668f5fbd6cd82a646a79e9a316ac0a65259325afafd7e0a1949c3e12e12a18cc86a8681110bd3e57d7e52ad9093ca74a3481e36fdee0acbbe439c4c4c4c062b1c066b381e71df4209b19d16d8064c1d25b557ad3994a03f5e3ae47b5d27d89a5c2687516fb797db88b7e86be9f0d47e95d2d4a1eb0d55dfab40aea3bea7b16804929319bcd6a6d2875e4bb0d906c749dd25ed4af24201d8c2100a8a8a8d0d439fe9cb1a3971a51141d8b810938bbda53f5ed5f68559826a189e741af54260a1438497fe7f37a429dadce129c6128da1fa1a5a545b38ddcec72812e01c9719ce386791ef5f5f5ea8df03c0f8eb4474064597664201415e3c159b39193958d0151d1282b2b73d903874e2edbfd834a8d5e65e9939a3bdb9b5df9c81c00032f8073a6abf04ecf97031ca9962e54a4a66c81732c004992603218c003a8ab3d774bf6c71ba25a4551447575350c06835a2ace711ceca25d4342a7a4a460eedcb92a23a457b37402387090644993dc455f77558b78ab060d281b0c063437374314455cbc78f1965d4f9780641382398ed3d4f99b0c8ea42a9bcd067080603060e17ffc07060d1a048ee3903922138aa4ed5025cb32380046a13d438ddde33c3d3d351db46ee5e0791e57af5e05c7713871e2040441c0d5ab576f59d7902eed91d422642d446a645049a3601345c1b9da5aacfff65b8c183912799b3763eedcb9d89297afe6c150a9a4c611aba668b6ddedd45ec5d3d353657f6840fa7a2247b71d90818181100441a5cbf4d9e1d491071cb938abd7ae8187870776eedc89279f7c12a5a5a53874e8106451528d04ba38e8e4b0e3ca952b0ee7ff17b82fbf653c34363616b22c63c08001ed7c336e4d872d4357544bfffefd1d59624e339c2642e95b90d11bcbcaca82bfbf3f626363b1ffc70abcf9e69b30180c8e80ace4c82e70558fafc6209dbfc1dd261d397af6ec09a3d188c0c0404d3de7ade818d265f78366902b8aa2493866abaaa88a1c3a74281e7ae821242727e30f8f3d86e8e8686cdfbe1d9228aa415e42081a1b1b71f2e4494d1c8eba2db22c43be0df649b69b085b68dbed542b7b4343860c5155a19edd60eb171545814cdaf351860d1b86bd7bf7e2fcf9f31aa6e6934f3ec198316334a57a6c3982709b58ae6cbe0fcb09773bab954d466633d3004052641046adaae5714e7fedfdf7dec3ce9d3b61b3d9d0dada0a10e2008800dbb616a8dfa951553c0751966e7a35f0b5066577f48c53b7d923591fd06eb76bd49f2bb685a5d2cacbcbf18f7ffc032693095bb76e456868285e7ffd75d4d5d561debc79387af428ee9b3655c39bb2b933b407c1ad1c345eeae5e5059bcda6618fba95b1c3ee077492e95ea8280a0cbc4315129d7ae5391e3bb7ef80d56a456e6e2efaf7ef8ff9f3e7233737178aa260e3c68d301a8d98376f5e87be04b22ca3bebefeb690444a215eb972a5437d67b76476a835d9a1070075f059df8f00769b0d23478e848f8f0f9e7efa69bcf1c61bd8b97327323333f1d1471f81e779848484a8c4019bbd26cb32aaabab6f8bbeab3405544ddb87b69d68b703920697f5351394c2a24cccd9d36754d057af5e8dab57afe2e4c99358be7c397c7c7cf0d24b2fc1cfcf0f8410cc9b370f8410d4d5d5691688a7a7e76dd30c90ba581cc761efdebd1dfce66e29912d2d2d1d32ef683f0183c18035ab5663e4c89118999989cf3fff1cebd6ad434646064a4b4b919b9b8b5d8585080f0fc75b6fbd050058bd7a3592929260b158505151a1ba39212121bf389ef95b4a2465b5a87a3d7efc78f7337658e0ce9c39a335449c936d3299b0252f1fafbefa2a7c7d7d210802162d5a049ee73162c4081c3e7c58cdcd5cbd7a352a2b2b0100e7cf9fc78001033079f264242424a80b2330305093c671ab25920de5050404a8fbf7ad3078ba0c245581ec3ec906665f7ffd75d8ed76e4e6e6222020003366ccc0891327f0eebbef22333313968c0c28b28cb56bd7c26eb7c3d7d717e5e5e56aff1dd64af4f2f2425b5b9b5aee7dab293a9ee73170e040188d4644474743d0f518e816aa9525b559679dfa7e148419ff36136372c662c0c018f40a08c0d6ad5b111e1e0e8ee3f0cc33cf4091651c397204870f1fc6dda347e1fb0db96a572d76551b8d464876d1518a701b1cdb41afcdd7d757b5aa6f15885d96484110e0efef8fcb0d0d00a05667b1ea65fefcf9aac163b7d9f0da6bafe1ecd9b378f4d147919c9c8cddbb77a3acac0c1cc761e8d0a1080b0bbb66df9ddb65b06c132d355774f7de6d080100888e8ec6bec646b516c455533f7ac326b319797979e0791e9f7cf209d6af5f8f4b972ea916aef126d48cdc487a8e6a0ad11950a70bb95b110214245a54c212037ab0553a4f21c8cece56d99caaaa2acc9c3913cf3efb2c5a5a5a10d83be89a4d976eb761b7dbd52dc46ab5a2a6a646b37f768b3d92cd3a63d3105932409f95268a22f2f3f33170e0402c5ebc18a228a2acac0c73e6cc41cf9e3d11101070dbb817d76b27d0f4931e3d7a74df540f0a28ddec691a209b884525f5830f3e405a5a1a1a1a1a10151585c17171183c78300441c0993367b062c58a0e6ecded3cd836a48220202222420370b701926d22486fecc48913ea6bec191d0070f6ec59343737e3b3cf3ec39ffffc671045c1b7df7e8b826ddb101e1e8e2fbffc12a74e9dd270b6b7f3a0061cbd4f3f3f3f4dca65b70192ee7f1e1e1eaad4353636aa0165b650535114f4ebd70f46a3516d66cb711c8c261388a260e9d2a5b874e912162d5ad42d2c56d6d8a101657acfb7ea0cae2e59adac81a36f24a88f434e9f3e1dbebebe881d3cc8d1679516f4083c62070fc233cfcec7850b175c1a546ccdbea3c4dbd1604114450d09a1d716bff5fea8fe166e2d61de2520d9fd2c343414b5b5b59a781c7b420e210461616178f0c10735843adb6cf0b9e79eeb50994b2b78d96c6fbbddae16dd508b993590f401ee3b65742967870e4a66ebbb3ad254083635928d5dd2bc553af4e744ba3a34858d47b2cdebf5d774a78d2e6708c8b20c0f6757461a1160435bec6013b2f47de3d8be707aea8f55e5e7ce9da3a8690e14edeca41cb744fe02c9a4f92a7ae0687c8e6d48c4be8f02410b80f486847e3f06d0a10693563677a62ddc405e87fb41d51bdbfa8b953036459066a2eb552fdd4759096633f2d85e059a6c03a7466083b9ae9ae4ba81bc4ef7834a10559bac2aa4ea565faba82f4e65f739b64589de0ad4d3773484a63fd5e04e1c5da6e8e8e4525647d34245d7f48766dbe9dd17b6fa599f1babaf42966559edf326cb32ce9e3ddba188d5ad5a7f852f454beb3aebc2c10e7d0128ab2ad93e33ae88778ee3909696e6f8db45df19d665b919860ebb78a80ba52fb0ed16405203c5cbcbab43e5d4cd507184c94267f7d29bc50a51c29c3e6e6d6dd5b408ed3640d2d2b9d6d6564892a4b6f8ba59a4b7bec70f4b0adc2cd54af77cb5b84857f3d26d542be76c5c0400494949aa1b725356243369fa89bb1940b2b59c56ab552dea3d7efc78f722cdd9ea284f4f4f7545de4cf39f12107a7ff366ec9154857b7979695cb1868686ee459ad33479aa5ef52d4c7eeb9b21ce52747d8beb9b15a772dfe100000d15494441549da7ae15f56329fd782b3a7a7459b55227decbcb4b6381deaccd3e3434b48314de2c69a02dd5287811111130180c686969e97e562b953eabd50a9ee771eedc39b5f8f337df22791ec1c1c11d38db9ba9d6a8f4d316a11cc7a9bd84ba95d54a57269dccd3a74fbbe43e7f95ea7441b853e92b292e0671ba1d9595959abc21aa0df416accb9e3ecc7b5cbdd619872bcb32ca4a4af1f65b7f46555515384180cd191be5c1fde68df96fe81e49477a7a3a4a9d5d88951bd88b4d2f592c0dc83b3b540150bb4ee98f2be475ddb158d780fecfeea76c7f59f6f3972f5fc6eeddbbd5b3b99a9a9a70ecd831d8da1c3dd3efbaeb2e2c5cb81056ab1576bbddd114a23b193b6cb7455114e1e9e989ab6d6d1a9573a3cc7c7d0a0521443dec8bfd2d57674eb28fd543c974bd63597eb7b1b111e5e5e528dcb94b0590fe76dfbe7dd1bf7f7f8c7d7c8c9a6cf5dd77dfe1c30f3fc4bc79f33441f06e65b58aa2085114515151e13883f8465ba63a75171010d0ae069dfeaa288a1ab02950fa236ef585a8ea19cf8460e7f61d282c2c445151118e1e3daaee39a1a1a198336b16525252909a9a8a8686069c387102c5c5c5f8fefbef71faf469f504bf9898181042d49ca46ea55a8d46a306506a7adf288343df20a95fbf7eedf525b20cb3d9ecf2fc2abd75c9b2308220e0f0e1c3282e2cc2962d5b505e5e8eab57afc2c7c70741414198397326860d1b86f4d4545cbc78111b376ec4975f7e89050b16685259925353f1f0c30fa3bcbc1cf9f9f9a8aaaa02cff3888989e95e40b27b0aed92283211fb1b6d3d2a8a027f7f7f4d7fd5f0f07015285a7f418d2d8e406df972f5ea55143a8f43cccfcf476d6d2d244982bfbf3fa64f9f0e8bc582c4c44404040460e3c68dc8cfcfc7db6fbf8dfafa7a98cd66040707e37ee7a97be9e9e98e23009db717d83b081b366dc4f71b723178f0600c4d4c505b71770b20d9a67f369bcda1d2ae2302f24bd52a5bbec766b60b060302030335da812e9e0b172ea0b4b804454545a8aaaac2c18307d55492b8b8384c9f3e1df7de7b2ffaf7ef8ffdfbf763dfbe7d78e9a5971ce57cce7b8b891d88fffdccd3484b4b435c5c9ccbc3aa2549c23df7dc83debd7ba3a8a8082929299a7dbd5b004939559a403574e8506ccecfbf619d2d5c59ad34fd91a3e74739b5c1952b57505c5c8cbcbc3c949797e3e4c9936a63421f1f1f4c9c38513d1ad76834a2a4a404fffce73f515a5a8a73e7ce81e779787a7a62faf4e9484b4bc3b871e3d0c3b7a78653650d271ab2a20b363535553d1e424dd9ec4e7b244de72084c0dbdb5b3d2f589f05f06bbf9bb554a9b1a2e6c3321673e2d00435ebdd6c36c392960e8bc582cccc4c0c1f3e1c7bf7eec50f3ffc8065cb9661dfbe7d0ee915788c1c3912f31efb03d2d2d2101b1b0b00ea77e83955bd26eaecfe6e55d2579780140441e559e92abc91aa557ff08b2ccbf0f1f1719c98ea3c5980560dcf983103a3468d426464245a5b5bb169d3267cf2c92798376f1e9a9b9b21cb32121212f0e4934f222b2b0bc9a9299ae306e9ef75a7d2be1b4a08e893a46e941fc506ab59cbd46eb7e3c081031879f7ddaae4ffe94f7f42787838b66edd8a458b16a1a4a444358e5253533171e2444c9c38111cc7c1ece1a19e28a74fe8629b007797d2be2e03c946e61545510b70a851d2d589d067d05163831a57eca259bc7831f6efdf0f4208020202306dda344c98e438b3982e08366f961e09a13f23d215b1f02f0f244b6d198d469c3a750a269309f5f5f5ea11f35d75375849110401212121eaf1f1f4c03049925053538399336762ecd8b118377ebc634f65da69b3875fb3861a5bcf497ff35615e1dc3220d9330fe9791c56ab15a74e9dba2140b221310a4868682814457164e31904100e108c06fc63e93fd5362ff4ba0c4c870d3d25e7aa13b3ab6327bad3e872f4c3c7c707068301f1f1f1aa6f7523077b780b952cda829afa746c24434fcde98161fd53768bb8d556e72ddd23a9c96fb3d9e0ededad4ee08d6276f42e0814c784b7b5b5399a308822cc66b3fabe0eefefc40ad61c23ac3b39a8bb66a977a9cf0e00d8443b04a311223d14d4600447dad5af2b6a8f9524bdba668d1bb61f019d6c3552411ce7752892ac82a73f30869530b68993fedc2cfdeb77a4449acd6695df248460e1c285983c7932128725213a3a1a2121219abd8be67db29fd15738b3471cb193ce3943518d8d8d9a6bb85dce02e99640b2e70ddb6c36a4a5a5e189279ec0ce9d3bf1ce3bef80131c00f8f8f8202e2e4ee52c636262101616a6910c7ded076badaabc25697ffdc4891380d3cda199746cb9c19d5652d72520290342eb390441c00b2fbc80975f79052004252525282d2dc5912347505959890f977ca039882569f830c4c5c5212e2e0ec9c9c9080b0b737940b5da77ce1983f4f3f3435b5b9b7ada3a7b80597736566ea9441242306ad428fcdf0fff86b367cf222d2d0d872b2bd1a3470fa45b2c48b75854005aaf5e4565652576edda85aaaa2a1c387410c5c5c5ea9e16161686f4f4749589a12a9b82a8280a7841405c5c9cdaa09e66aeb1ddb55895ec06f23afd3cda435551141c397204e038dc73cf3d9065191111116a5460f8f0e1888c8c44724a0a929da11e003873fa34f6ecd983c2c24214171763dd9ab5f866dd7abcb8e005c4c7c7b7f3a751511a0282388d1fdaa8f74e2e39ef3290b4bb7e484808fcfcfcb074e9524c9b360d83060dc2c18307d1bb776fac5fbf1e6bd6ac012104bebebe484b4b434646062c168b63af0c0f47585818a64e9b060038575b8ba22247e47ecf9e3d78e38d3700383203c68d1b87e9d3a7034ed5ac3029fb2c2ba3a7deee94c1912e2e6742085e79e965ac5ab50a83060d52fdbc826ddb204b12f6efdf8feddbb7a3acac0c555555686a6a822ccbf0f3f3437a7abaaa4e070d1ae438bb911a371c879d3b76a0a8a8081b366c404d4d0dcc4ec2212e2e0edfe5e6a2acb414b367cfc6eab56b909494d4a1d0d62d91d709209db0575e7905b5b5b5d8b973277800b366cd02018160342069f8300c4918aaba08478e1c515569495929b66cd9a236544a4d4dc5f8f1e3919191016f6f6f8cbcfb6e646666e2c5175f4475753576ecd881ed3b772029294955ef6cf9f99d0a6297255235f509a038ab92aa2a2b91989808de64547b99d2402deb26d0c92edcb90b7bf7ee455e5e1e0e1d3aa492e5c9c9c9b8e79e7b909595e5280da0b939a243a58300153ffe88a953a762c5aa95484949e990fee806f21790e634d1a8a8b0108410f40e0cc480d85848b2a4d686503646635582eb90c86bb35ab161c306141515a1a0a000972e5d82d96c4674743466cf9e8db163c722b45f3fcd67a2a3a2f0e5d75fc162b174e894e506f2178ebfbef73efef6b7bf01007afaf800002e37378310027f7f7f4c98300193264d42dfbe7d111d1d0d5e1020394fb523c471b6b19a708cf65c98b2b232e46fcec3a64d9b70fefc79d86c36646666e2d1471fc5e8d1a3613018d0bf7f7f7cf1e572a4a4a474dbe8fe6d01a4a22858b56225de78e30d87f439cf924c4d4f474a4a0a4a4a4ab07bf76ed5698f8c8c44414101389ec796fc7c34373763ca94298e0683209ad3e9e8bec7733c76979561fdfaf5d8b061032e5fbe8c5335350021888a8ac2eab56b909c9cac6989e6763fae73d094408ee370efbdf762c58a158eb443a75ab3582cf8e31fff88679f7d167575753874e8109e78e209d4d7d7e381071ec0eed25287340a02d2d3d311121aaa01511084f6442802a4a4a62221210135274faafbeb912347549a8e2d0bb813c7afb608d8be721e1e1ef8e69b6fb078f16275927373733167ce1cd4d5d5a16fdfbe484b4b53cbb4cbcbcb21cb32264f9e0c5914f1da6baf4121ed6d5a78410001d4fa439a0c6c726696d374c883070fc2643221202040d361eb4e2408ba1cfd50c96a4581c562417a7a3a082168b87c193ffef823de7df75dd4d5d5a1b8b81846a311595959387cf8307e3a7f1ee5e5e5f0f4f444626262876a6785289af234599220180c104511f5f5f5686969c1a79f7e0a2f2f2f444747abeec89d68e8dc3063c7d53878f020264f9e0c93c984a080408c1a350a8d8d8dc8c9c9c1fdf7df8fbf7eb0046bd7ae85200858b76e1d7af5ead56904433d7b92e7f1e28b2f62d5aa55aa644e9f3e1defbcf38efad9dbe988fb7f0920356e8a605025aafd97a1f133f56570fa982405aaa2a202fff55fff056f6f6fa4a7a7e3befbee43af5ebdd42808cd2372bb1f3768b019db579a9af1e1871fe2c08103e0791e63c68cc1a37f9877cd68050b067d9f5edae8f3f4b7ee54b5fa9b4b249dd86347ab919d9d8d888808343737e3ca952bf87ae50a958da140d2fe037a50a9b45146882d9271d5abf54ea4e97e331e8b9de0bb060c80d16844484808264c98a0d6fed3bc1d3af9b43c8f5d5b6c3a079b294755af1ef4ee9a977adb4aa4c66021c08b2fbc806fbffd16a22862c48811f87cf9171dd42a058a263d5bad56787878a892cdee97d44a051cd11633eb9adc81e91ebfb9b1e3607b1cb593f9797958bd7a35de79e71df4f4f3d5647e5f0b00fa3c05f65abf7523ca15dc4076e26bd27c54709c6abd520280edd7ca3609a42a9432481dbe93d983f5468edb6a750fb7b1e31e6e20ddc30da47bb881fc171bff1f93c770253fcd1a5c0000000049454e44ae426082	image/png	0
7100	Mobilier de protection	1	7000	\N	14	\N	\N	\N	1
7101	Potelet 	1	7100	174	1	\N	\N	\N	2
7102	Barrière et garde-corps	1	7100	174	2	\N	\N	\N	2
7103	Borne en pierre	1	7100	174	3	\N	\N	\N	2
7104	Borne amovible 	1	7100	174	4	\N	\N	\N	2
7105	Grillette ou lisse autour de végétaux	1	7100	94	5	\N	\N	\N	2
7200	Corbeille à déchets 	1	7000	108	7	\N	\N	\N	1
7201	Abris bus	1	7000	1488	1	\N	\N	\N	1
7202	Banc 	1	7000	174	3	\N	\N	\N	1
7203	Jeux d'enfants - table de jeu - aire sportive	1	7000	94	10	\N	\N	\N	1
7204	Kiosque et chalet	1	7000	1507	13	\N	\N	\N	1
7205	Boite de bouquiniste	1	7000	1507	5	\N	\N	\N	1
7206	Mobilier urbain publicitaire	1	7000	1488	16	\N	\N	\N	1
7207	Mobilier d'accroche 2 roues 	1	7000	174	15	\N	\N	\N	1
7208	Journal lumineux d'information	1	7000	1508	12	\N	\N	\N	1
7209	Horodateur 	1	7000	174	9	\N	\N	\N	1
7210	Plaque de nom de rue	1	7000	174	17	\N	\N	\N	1
7211	Ascenseur en panne	1	7000	1504	2	\N	\N	\N	1
7212	Station Vélib' 	1	7000	1489	19	\N	\N	\N	1
7213	Station Autolib' 	1	7000	1488	18	\N	\N	\N	1
7300	WC public	1	7000	\N	21	\N	\N	\N	1
7301	Sanisette sale ou en panne	1	7300	1488	1	\N	\N	\N	2
7302	Autres WC publics	1	7300	94	2	\N	\N	\N	2
7400	Eau qui coule	1	7000	\N	8	\N	\N	\N	1
7401	Fuite ou mauvais état d'un appareil au sol	1	7400	1505	1	\N	\N	\N	2
7402	Fuite ou mauvais état d'une fontaine à boire	1	7400	1505	2	\N	\N	\N	2
7403	Fuite, débordement ou mauvais état d'une fontaine ornementale	1	7400	1504	4	\N	\N	\N	2
7500	Trappe ou grille au sol	1	7000	\N	20	\N	\N	\N	1
7501	Grille de caniveau 	1	7500	174	1	\N	\N	\N	2
7502	Grille d'arbre	1	7500	174	2	\N	\N	\N	2
7503	Bouche d'égout à grille	1	7500	108	3	\N	\N	\N	2
7504	Trappe d'égout	1	7500	108	4	\N	\N	\N	2
7505	Autre trappe 	1	7500	174	5	\N	\N	\N	2
8000	Gêne à la circulation des piétons	1	\N	0	10	image?resource_type=image_type_signalement&#38;id=8000	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e2000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070e0330bcd5f588000020004944415478daed7d79781455f6f65b55dd090443088c231f497a4d581242d85c2082cc28bb0b22823b8b828acf372aa0887e230a8c22c8a6a2a280b8211240f40144c5199145459c9f421670fc8d406070257bd2dd55f79eef8fea7b539544278ecad8e93a3e3c31dd5d55dda9b7cf39f7bde7bc47212282638efdc2a63a7f02c71c6039e600cb3107588e39e600cb3107588e39c072cc3107588e39c072cc0196638e39c072cc0196630eb01c73cc0196630eb01c7380e598630eb01c7380e598032cc71c7380e598032cc71c6039e698032cc71c6039e600cb31c71c6039e600cb3107588e39e600cb3107588e39c072cc3107588efd86cc152f1f9488404450d5c6df25ce3988089aa6811847555515366edc88d75f7b0d9f7df619dc6e3788088aa260d0a0419874d34d38af5f3f0000e30c9aa6c9f388f333663e2e8e8b3753e255d1cf300c288a224121c0f0d20b2fe2f1c71fc7a953a7a002484b4b83c7e301e71ca5a5a5f8eaabafa0338673cf3d17cf3cf30c5a25b5464242021863505515d63fa7aaaa36b0c595519c99aeebb6dfebeaeae4ffdf3de32e0afa03e4cdf0d08c69d3e9507109916e107192ff76bfbf8b860f1d46417f802ebdf812aaaeacfac16b71ce295e0df1fac1c54d8f4422444434fdce69e449cfa0bebdfb507161910924c66d3fb9c124c0a6dd7127f9bd3eba78c448aa2cafb09d4b18632c6e81a5c69977b6e55500e076bbb16ddb366cdebc19bffbddeff0ecb3cfa25b76b6fd38058002289690b660c1020c1e3c18c5c5c558b66c990c7dd6f38bdc4a5ccbc9b15aa8893c48dc702242381cc6f0e1c371ecc8513cfdf4d3183c6488998331032e97ab51e2afeb3adc6e3740406d4d0dce39e71c844221bcbde31d0402811fcce7c4b91cbaa1057a2b4dd36c2b344551b067cf1e1c3b760ce79c730e2ebcf04210e7800299d433c6004581a2aa300c4326e45080a4366d307bf66c70cef1ecb3cf823106c330a0ebba7de91d67a08a2b60298a224321634c3ebe6edd3ae8ba8e49932641d53419eec46b14cdfc9d1387e67241d334a8519001c0c8912391929282ad5bb742d334b8a2af0180482412976130ee3c9630c12f81800ff6ecc5ef7f7726060f1d02447329e16538e750c87c485354d39b59a8042840d2196d3078e810d456d7e0dd77768098492f442211242424c427d5106f1e4b8441c618880825c5c5088542e8d5ab170cc390b99400a1c8c7acbf5bf32de1d57af7ee0d22c2810307a4c74b484888dbc43dae8065059408679595952022f4e8d1032e97cb063e2b20acdececaa40b6f14080440443874e8d00fae3e1d60b5605059937722c2c1830741448844224de66302143f14ce144591600580eaeaea265fe300ab059b753f4f8046d775b85c2eb46ad50a4404c330249804087f888d118f6b9a268fe19c03518f667dde01560b37e199c41e61301894f480a22892161040b17a9b8621cd0ab88a8a0a0040727232103d465114794c3c6ec7c6d5aad0ed76db92ee94941430c6b063c70e84c36119f69aca8b9a0a69c2f3eddcb9138aa2a04f9f3e702c8e5785c2839c7bde7938ebacb370f0e0411c3d7a5482ab61c543431ecc7ace9a9a1a6cd9b2058aa2a05fbf7e40835565bc96cdc4dd5ea158150ac00c1830006eb71bd3a74f476262223808501410001625450930ff29f5a05414054c37306fce5c54575621c3eb414e6e7770903cb700553cae0cd5780395f03c62a5f7c0030fa06ddbb6282a2ac28c1933a04201670c0a00150a0826903871a8506cc9fa4b2fbd840d1b36405555cc9d3b5712af22575314456e03c59dc5532987b58cc5300c62ba41dc6074f0b303d4a37bae2c83d9bfef638a84c266894c13e7387af428dd7af32d14f0f9c99be1a1258b16cb738ad219c330e2ba7426ee2a4845a501e71caa52ef49be387c1893264d42696929545545972e5d3070d020e4e4e4a043870ef8ea9baf71f4cb2378f7dd77515252024dd3d0ba756b3cf8e0831875f9e5e0c41b11acc253c5639e1597a5c99148042e970b2a14931e2002a0009ce1fefbefc7dab56b65c80b85424888f25c228ca6a7a763d4a85198387122525353cd7328f6b06b05523c02cb156fde8a88e43e1e0820cef1ce3befe06fefbe8bad5bb742d77593d7d2347000addbb4316bb0340d75757548cbc8c085175e88b163c722b57dfbe869080a14442211b8dd6e70ce6d6537f14892c69dc7121fb7acac0c2fac791e9b366dc2d75f7f2db766faf4e9839c9c1cb46fdf1ee7f63b0f8c317cf2c92738f2c5ffe2d34f3fc5d1a347a1338656ad5a61f2e4c9b8fdce3b6cc4aa087fd6906b0d910eb05a20a0c4cd7de18517b070e142846aeb100e8791979787f1e3c763d8b06138a36db20486d8d6b1e663fb3ef800cb1e7f1c1f7cf00100e0bcfefdf0f4d34f23393959ee1d8a301aaf25332d6a5568ed88618cc9d598ce0c7371c7892acacae99aabae266f86877c1e2f5d3dee2adabb776ff3ce1fbd866118448cd386f505d427af2705bd3eba64f8087bb345d4c2e1b0d3a5d312cc308c46375380a1aaa2922e1e3192320341ea95d793563dbb9288379f0e3078fdeb04804a0e1652df9ebdc81f6d1733223a11b7b798356c37738015c31ecb300cc923899f374f9e429ef40ccaeeda8d4a8a8a6d00686eff5f2814aaf78abac983951c2ca4b37bf5a6ac6026ad59fd1c11e3363ecbf1582dc0ac375e028613ad7a7625f93c5eeaddb3171d2e3944c4a3042963cdf6280dc9556b13ebe1924394190852c0e7a743c5253f18961d60b5800e6711964a8f1ea39e3df2c8e7f1d25f77bc6be6429cdb6ef67f72e31963c439276e3062ba41ab57aea2f44e693468e0055459594986614880c523b05accb2452cf945f78caaaa608681858f3c828ab2320c1d3a1483060d82c10cdbd25ff41a36c7c4e6b2f5184553a1682a264e9c8851a346e1cb2fbfc49c397364bdfc4f39bf4337fc1657b7e612d7fc50511afce30f3fc498316370d65967e1ad7777203535158c31288a22ebae746620c19d807fc73235a40f041d21c9504ea8acacc4c0810351595d85152b56e0820b2e80a2286683ab53dd109bc638ab272289c019c37df7dd07b7db8da953a72235355582c00a90047742f3fe50d102416b4fa2a22880aa407c33dba6a460e1c285300c033367ce445d5d9d94407280150366ad6f92da566a7d8d1507e1f1c71fc7ff7ef925b2bb77c70d132648703464e015c0d62ff86304aba669b296cbe572995e2bda6f28f41d060f1982a18387a0fc5419664c9b0e7073bbc7e00c56788542a1960db8582f7f69481530c6a8b0b090bc191e0af8fc5474b050f2552269ff4f13775dd7cd843d7a4d91a00b4a43705c551595d4a7576f0afa03f4dac64dc474c3f67ee341de488d656f25c391e571c618eeb9e71ea82e0db7df7e3bb2a3ca312299565515353535b8ebaebb70fef9e763f5ead5cddec016bd87564f63156f330c038aa6e28ce4642c5bb60c9c73cc9933079f7ffeb9ec0a6af89e5b6c75692c13a1d6df85477afcf1c7c9e7f3d125975c52cf37314ec44c6aa0fc54198d18365c0aacf9bd3e3a7eacf43f7a1fc28331c61a11b2c438cdfef3fde4f7fa68d890a15453556ddbee69e95e2be63c56532d594404858023fffc128b162d82aeeb983f7fbeb96a230ea866dd95aeeb983d7b364a4a4a70d65967c9c47ac3860d3fd95b8a763151e62cbc966c7455153cf0e083c8cecec6e1c3873163c68ce8494ccd0871ae86cdb24ef2fe1b088922bc295199a15b6fbd15e08459b366a15bb76e8d2882175f7c119b366d42f7eeddf1ce3befe0a28b2e6a76498baeeb36ed062b5f66ed9ab64a1631cef0e28b2fa26ddbb67873eb56dc3d7dba2c2c14efaba552113109ac8615999148042fbef002bef8e20b646767e3e6c953643e2540585c5484f9f3e7c3ed7663e1c285486ad3467a9be6acceac0068786e016c465c364fe8ba0e4dd3d0ae7d2a366cda88f6eddb63f3e6cd987ec71da6de16d50bec9203acdf5e388c4422282f2fc7c2850bc118c3ecd9b36dfa548029f13863c60c10116ebbed3674e9da159c3194979783730e8fc7f393002d3ce1962d5b909d9d8dfefdfba3a8b808aaa236ead4e19c23180ce295575e415252125e7ffd75fcbffbeeb3bd865a20b46236149a44a849703e70ff6cd4d4d562c2a489e873765f9062ded004770240c0dc071ec4a1cf0fa3cfd97d71e7f4698002a82e0d1f7df411144541a74e9d9ac5ec73d10ac6394000d30de8e1084e941ec7f8abafc5e1c2222896ff0421ab280a3a77eb8697d6ae45db76edf0f2cb2f9b39179939974a4aa3b02b437eacc22e166baeacd5777b76ed266f8687727373e9d4a9530d082f4ebb76be4f019f9ff2f2f2a8a6a6463ef5cf7ffe933ce91994190836d9e6d564a19f6535c70d461f7fb48f7c1e2f8dbaf432caf207a847f75c5992c30d662fcb899ea0b8b088f2727b50d01fa091c34750f9a9323222baacb668b8a1ce898811775685a7c353c96f34111e7bec31b8dd6ecc983103a9a9a9300c4332f0757575b8fffefbc139c7f2e5cb919494246bdb4f9e3c89b66ddba277efde728fb1595b47a2e55e55515b5b0b22425656161e9a3f1fb5b5b5183f7e3c0ad6af97ab46a944133dae4b972e58bb762dba76ed8acf3fff1ce3c78f476d6d2d345593e5cfd60df548386c761339a1f0577ec3aa0ab7db0dc330b06fdf3e7cfcf1c738f3cc33316edc3899b788c4faa9a79ec28913273069d224e4e7e7cb1c4951147cf3cd37282f2f3709d466ac0a4540b28a8a883af763c78ee18a2baec0bc79f3f0edb7dfe29e7beec1c68d1bc10d065551cd9f2e0d8c9b3fb3bbe7e0d582f5e8949e86a292625c7bfd75a8a9ae36751f985d8e323131312649d49864dec51f7af5ead570b95c98366d1a1213136d497d757535d6ac5983a4a424fce94f7f92a012a03b72e4085ab76e0dbfdfdf2c8fa54031dbec55559e232727072e97cb64e45515e3c68dc3a2458b601806eebefb6ecc9b370f00a0890659cb4ab24d9b36d8b66d1bfc7e3f0a0b0b316edc38545454405155444261dbeb63b1ec26263d96aaaa70b95cd8b97327344dc3982baf94614a00e8cd37df444d4d0d468f1e8d9476ed24a5604d8c0dc3f8416df6e6ac4a131213c11803e71c113d02a80a2ebf6234962e5d0a22c29a356b3065f2645457553552bb212224252561e3c68de8d6ad1b8a8a8a70fdf5d7cbf3aa8a1ad35b3e31b92a340c43ca0ee5e5e5c9c7c50a8c3186fdfbf74355550c1e3cb81145610569525252b34221e36658238b4c9138c7071f7c80848404496f8c1a350a5bb76e454a4a0ab66fdf8eebaeb906656565f2bd0b901111dab46983575e7905393939282e2ec6f469d3cc7c2cba9bf0437a5d0eb07e057254d3349c79e699325c9065835700ecf8f1e3b2188f2cdf7c1b33ce1842a150b3aeaba99a8d1035a2d7ebd8b1a3e4cd4487b5a2aae8dab52bde7aeb2de4e5e6a2b0b010a3478f464949896d235b84e6b66ddb62ddba75e8dcb933de78e30ddc7befbdf23c0e8f75ba5685d1ff5a27b6426a6a2af6eddb878a8a0adb781223a2c3939e015555511895c816d59e36d10e970645539bc51409097871bce636af979e9e6e7b5d381c0614534bebf71dcfc24beb5ec1e8b157e2c4d163b866ec381c2a2e919fc16a6d92cfc0baf5afe2f71dcfc2ab05ebb172f52a20869ba763f32b41044555f1c73ffe119c73bcfcf2cbb6fcc7e576e3f2cb2f07003cf1e493a88a32ecd6245850017bf7eefd49edef8a456314962da1a2a22200406262a20c91757575484949c1c30f3f8c3163c6a0aca202575d7515bef8c73f24fd60550c6cdbb62d9e7bee39a4a6a6e2e1871f466161a193bc9f2e639cc98ddc3befbc139c73ac58b102274f9e94d5a4e15008e79c7b2efef0873fa0aaaa0ae3aebe1a5555558d6e2400b46ad5ea278762711ec6183a74e800c330505353235f2372add6ad5bcbd0fcf08205983e7d3a6a6b6b317af468bcf7de7b32df128b0ece393233333175ea544422113cf2c823b652680758bf26b0180314f3675a5a1a6ebcf146d4d6d6e2aee933a02a2a1428d26b2c59b2046969693874e8101efecb4320c6a1a9e678dedfffee4cb8540da1da3a3467cfc42aff28733d970b9999994848489093c444ae654db81963e08ce1fffee94f98376f1e6a6a6a3079f264bcfeda66532550359b31544585aaa8b8e9c69bd025ab33de7f6f27fe71f873b3d4c601d6af6b2241565de640a5db6ebb0d3d7af4c09e3d7b307dda3493938a7aa3e4e4642c5fbe1c29292958bb762d9e7cf24930c380a2aaf07abd0020c53dfe6df21e4dd06d739ea34accc263093253845d01464dd3a0468f1f3b6e1c1e7df451288a827beeb90777dd75172acacb1b5d6fcc983170b95cd8b163872cd17180751abc9618ed96dabe3de6cd9b87f6eddb63cb962d58bf7ebd243c4901ba6677c3f2a79e84a66958ba7429f6efdf0f6618484b4bab67b69b196eac61502c064448fcf4d34f653e641d42208f5300ddd00105b87cf468ac5ebd1aa9a9a9282828c0f5d75f8f7dfbf699af8d1e1b0a856421624cea6bc5ba4e83d8b43d5c542c354137ac2f901dcfc21e5bba8c320341fae3a03fc872656f868782fe0035778fb751e305277a63f3ebd4b573175abc78f18f6e9cdbde33e3c474838a0b8be8e2112329e8f59137c343d75e7d0dbdb67113bdb9751bf5e9d59bfc5e1f1df8f4338ac13de8d86db16fd8264f8cd3e60d1bc9e7f1525630935e7d659dfd794ed4efdcf3c8eff549e05d3c6264b36bdec5b944974d241221629cf6effb98bc191e7ae2892748d7f51fed001235f2a2d2410f47a8a6a292fef2e01cf27b7d9415cc24bfd7473e8f973203411a77e5d8fab9d44e75c369e2b32cfb7e660c5270d915a3b160c10270ce3173e64c6c585f60ca41463776afb8e20aa8aa6a861d2264a4a54105f0f5c9934d86bba6c2a0c8af5c2e979ca8ea72b970e0d3cfa045936fb20c10b09a20470529e64a7023a96d32eebdffcfd8b9eb7d5c3ffe06f43f3f1fe7f63b0f7fbae3763cb5e2e968bd7eecdd9f16a3412a6ef89563c7cac4f8befbee432412c1d5575f0d4d51f0fdf7df83738e63c78e018a829cdc5c6cd9b205bb77ef46afb3fb82c814ff77bbddb6fcc89ae748cd8628b0dd6e371863a8a9a9914cb9b5ca942cf30d7fcc323232306bd62c49f45ab54b2906c5715b0cb0449d96cbe5c2982baf04630c0f3ffc301e78e001141414a073e7ce78fdf5d7611806faf7ef0fe21cbd7bf746724a0a8e1f3fde6893d80a0ec18f89e7e4045577027af5ea655b250a46df0ac0e68082735e2f131edd2988e521e56a4bf2586eb71b8aa220a24730eeaaabf0c61b6fe0d24b2f4551511136beb6092caac57ece39e780738e9e3d7ba2b6b61607a20cb7755527c84bf1980088008c9c3e11adb6a8abab339b241a28d934972a509a981a26dacb625118b7e5a8cd5866dcd43f68566e9e3c79126fbdf3362a2a2a70d1451721b77bae7cc9f9f9f9f8f6db6ff1c9fffc1d090909b691bbd6f025bca10d08d1bf5c301080a669282e2e86cbed0614fc47de46481e59e5bcffdd304e27149e8650680d2b222f52350d9d3a75c2a449936c37508b9601676565a1b4b414fffad7bf90959565ab3a10db2c42a1a651b32c27a8d10915d5d5d526a89a00bb6118cdea1fb492b0c2d339a1f0bf6c42cd45f4f5c99ba398e2680d13714626b999979787c4c444fced6f7f6ba4cb604dba05212a9a55555585aa69608681dcdc5ce9e944398d75c674734025de9bb886b5bbda01d67fd134d5ac29177989a87fb726dee2468b3a2d2dea0d229108b66cd9d2e43c426bce237e17d700ccb26397cb25ebba84d7faa161e53fe67185a7b4feb4ce9c7680f5df0885005cd1623ceb4a4cdc20d19f27565fc4ccf9cd870e1d82a66938f8d9017c7df22bd911130e879b1c0b67bbc90a6030031c2688f77df491cdd335aca4f88fbe309601e90eb07ecb1f58d000aa0a44bb7544d87af4d147cd219844b242a261c2de70b0a5a66948494981aaaa8d56800d2596e2eaef1c2f1f5474d9586f34670c870f1f46281482a669d8b973272a2b2a6cd3ecad0c7c538cbaa228c8cccc94c42a5942afb52bc701563c804c84494d43757535dc6e37c68c198393274f62d5aa55722879c3155ac3e45e5459b46ad5aa9eeb8af25a91484482325657760eb09afb6115d5c241d979af3bee30a778bdfaeaabf8eebbef2480444e26f54d2d1e49acdaaaaaaac01843494989f458090909b631bf0eb0e2c0e4b23eda5ca1eb3a3a76ec8869d3a6e1c4891358b870a18d986ca8d5deb0fdab73e7ce70b95cf8e4934fa0a8aaac2415d484130a5b3aa02c35c8aa6656a02626269a89baa260c28409e8d0a103366dda647a1f4bae24c2a0952c15cf0f1c3810866160cf9e3d088742b63afa848484b81c2010971e4be44c141dcdabeb3a8873b44d49c17df7dd07c330306bd6ac46abba862535828ee8d0a103860f1f8eefbfff1e7bf6ec911e511c1fab0d110eb07ecaca50ecc3455bc8645772b446eaca7163d1a74f1f141515e1f9e7d6000453cb9d719b529f6890152cfee0c183a1280a0a0a0aa040b1f3589a33f2a405874120a24790e8ae9f070d226466668288f0f917ff90c301befefa6b8c1c39124644c7f6eddb91166d4a2590ad8bd97a6e308ebe7dfbe29b6fbec19e3d7be0f179a5978bb7b1bd71e7b112dcf6b6ac7dfbf6c9e45a782300e8d4a9136ebdf556d4d6d69aedee44a068e384008a08a772bb475571dd75d7213131112fbefc527db86da0f5e000ab8599204745222d68014551909f9f2f378b05853065ca14f4efdf1fefbdf71e962c590225aa70234022ebb19428f14a84b163c742d154141414c806d95815f57080f51338ac881e911480a2aad8bb772f121313d1a54b9746de85738e871e7a08eddab5c38a152bf03f7fffbb1d9856ca4151410a9096918e4b2fbd1415151558b3668d99b8eb8614147180d5028d71668e8f138d105145c070388c8b2eba488e9bb3e643191e0f162f5e8c70388cd9b3674b22945bf8af86dcd6b469d3a0aa2ad6ac5983daea1a93b9b7bcce01560b33ab0c11009c3c79121f7df411929393d1af7f7fd9e11c0ed7abe919ba8e0b2fba0843860c41515111962c5922792c51bc2742a15805a6a5a5e1d24b2f456d750d9e7df659202a521277162fa3640dce6c93e8173fba88ba6475a607ee9f6dced9b14cf46aa8745c555149b939dd291008d0871f7e68eb690c87c38d1495abaaaaa87b760ef93c5e3a79e25f666fa033bab7e5e6589a525fdab269d326d91a06c59cb5c388db73a828b7d526f90c5c306000483730f9c69b505d5925853a5c2e97d4ce628c01049cd1e60c4c9e3c198aa260f1e2c5524bc2dae923733a008cb8130a63d8354b206cdab409c78f1f477e7e3eb2b2b26c3990e0a904c042a11066cd9a85eddbb74375b9505151813ffff9cf4d0acfba5c2ea9033171e244b46fdf1e1b376ec49eddbbe50a54e472e227272e37c71d60c5a0593783172c5800453379274555e172bb61e8ba6cb0b026e46f6edd868d051bd02a2909050505484b4bc3e6cd9bf1f6db6fd75319bcbece4b7569d02311b469d3466e0b3dfdf4d350a098324ad15c4e364e282a9496f9458e2f7be69967282b2b8b860d1b26351d8c886e7b4d28142222a2b7b7bf25671a7eb8f703d2c311fadbbb7fa5ac6026f5ec91471565e5525b414c93907a0dd1e914c3860ca580cf4f9b37bdd6e85ad669142dcde207589ca8b2bc82b2b3b329180cd2debd7b1bdd58ab224c495131e5e674a7ae9dbb481111f1efc68993c8939e410fcdfb0b7183d9946dc4404e318473cfaedde4f7fa282fb707957d7faa5e10c432d6a425822bae8075cfdd33c9e7f1d2b871e31aa9d688d560381ca6aa8a4acaefd79f82fe80b96a8cce9416003876e428f5eed98bfc5e1f151e3828d560ac609180e144b74cb999fc5e1f2d5dbc848813454261794c2412713c562cdb877b3f204f7a0605fd01faea5f272590acdec2300ce206a3ebaeb9963ce91974dd35d7cab1bfb6e1508cd3d2c54b28e0f3d3f0a1c3cc10c71931e252e6c8eafd4a4b4ba54cd1f163a536efd7522d6e80357ce830ca0a66d292458b891bcc1eba2c6170ce030f52662048178f1849e5a7ca6c00909e2d9a2b5d306020053c5e7a7ed56a1354160fd430bc3db6741965a4a5d3949b26cbf029f8332714c660f823c6e9b1a5cb28e80f50bf73cf6bd253f0a8177af79d1d94190852f7ec1c2a2e2c922190736e3b4478af0f3ffc907c3e1ff5ec914795e51532616f4ab0adaea696b2bb76a3a03f40bbdfdf657f4d0b745d2d0a588c31fbea8c713a517a9c7af6c8a380cf4ffb3efc482ae919866163d94b8f1ea3bcdc1ed4a9e3ff91c93ad30d1b73df70e5c818a37befbd973ce9193463da749b176a280f6944747a6de3260af8fcf4c7417fb027f94e28fc6d83cae685a25b32d75d732d057c7e9afbe09c4660b126ced75c753579333c74d7f4194d0eb2e40dae214073ead429eaddb31765053369efee3d8d1279b95514d18938d1c8e123283d3d9d56af5e5d7f6eee78acdf76e48b7a00018037b76ea36e5dba52b72e5de9fb6fbfb3e556d69bb968d122ca484ba74b465e4c3555d5b65029b5472dd711a011de66f5ca55e4f378e9e2112329120a4b1eaca9b0bc6bd72ecacacaa2dcdc5c2a2b2b7392f758b348244203f2cf276f8687de79ebed46cf0b7014171691dfeb23bfd727c7ee0a0b87c3765c4441660d5fbaae9311d169e4f011e4f7fa68ed4b2fdb9eb7863b71cd5b6eb9853c1e0fcd9d3b577a320758bf51b3e64b8c315ab87021650533e9e6c953cc555c13f40271a261438652662048cfad5a6dca643366562c58568d8c99548238b6d1ec666ed219019f9f7af7ec451515158d3c9e5575f9e8d1a394979747417f402e121c60c5801d3f7e9cfaf6ed4b67f7e94b874b0ec91b672b8de166e98cdfeba391c347fc70ee16a511746607ae1538c2ebdc3de32ef279bc74f3cd37cbfcad61fe2400be68e1a3e4cdf09892db0eb062c3aebcf24a33415eb94ad20b82bc1437bbb8b0883203410afa035478e0a0cda358bd11232ec1657d9e736ef3584c37a8bab28a7a74cf259fcf47fbf6ed9320320c43520a02981565e53468e005e4f7fae8ad37b73bc0faad24e90d7325b119bc6eed2b140804e4b64d53e4a311d1e9fa6bafa380cf4f33a3abc05fea3dad5bb78eb2b2b2e8bcf3cea353df7d2f81ddf0127a38421bd6175066204803f2cf6f94bb89f71d31f498746831ebb144622d96eb4644a7aa8a4aeaddb31779bd5e3a7cf8b06d75660d839b366ca4cc409072ba65d3d12f8ffce2a168ecd8b1140c06e9c927969b6192d55f3b1c0ecb3d44e244578d1d479ef40c7ae699671a85d848244206670eb0feab1c56b4eac09be1a1871e7ac8967c8b5123e2df05030692dfeba3c7962e23e25e61a1ca000005b64944415444e1bad02ff23e84f73c72e40879bd5ef2a467d0a1e212c9e0374ae639d1eef77751d01fa05e793da9a2acbcc9529a869bdbb1606a0cd791c916765555f1d6f6ed78efbdf7909191812953a6d89e73b95c50c86cb15fb664298e1d3b8676edda61c2840966236b54bdef67f52d46e58e00739cefb469d3e072b970c71d77d8deb3a838157317f3f3f33166cc1854565662e5ca95d054b3594334759033fdebf4e557d61c2b140a516565259ddf3f9fb28299f4f6f6b71a7ddb3937a76d856aeb282fb70765053369c1fc47645e6665e37faec7b2beb791c34790273d83163fbaa83ed76ab0aa8c442274fcf8714aef9446ddba74a5d2a3c71aed37c6a2c5deb0f1063a0889898958b972254a4b4bd1bb776f0c1e32c4562e2cbc88aa6958b162052a2b2b71c61967e0b6db6e0354050482ead27e118f65ad99678c61fefcf970b95c58be7c394a8a8bcde7a38221a2a9c3ed76a353a74e9832650aaaaaaaf0c4134f98faa854ef9529165bf4639959678c516969290502010afa0374f0b303b61217abd5545452cf1e799491964e8f2d5d26f32a2bbbfe4b7a5222d3133eb5fc49ca484ba711c386cb6d1d6bbb9978afa1da3aea95d7937c1e6ffd8282c76e21604cce84a6e8dc1c22c29c39730000a3478f46f7dc5c308bc88718fa4d4458b56a152acbcb71e6996762fcf8f132af6a38bff9e77852ab9e169139b5e2965b6e41af5ebd505c5c8ce756af06a2aacb56cfaba82a121212307efc78b85c2ecc9b37cf3c8f10cc753cd6695a05ea2673be77f71e0af8fcd4b3471e9555941323de24e37dead429ead13dd73604b3a1c7f8255785d6eb8742213a7cf8300d1b3294faf4ea6d366058722d5168286af27bf6c8a301030634a2541c8f753a7ad6340d917018cb962d83cbe5c2b5d75e8b94b6295060ea324422119b94e3fcf9f351535383bcbc3c8c1e3dda961335d417fd596dfc96d59b5895262626c2ebf5e2b1c71e43454505a64f9f6ebbaeaaaa66cf231192939371c30d37a0a6a606baae2321212166d50063966e3870e000f6efdf8fa4a4244c9d3ad5eccd8b36855ae70eeedff73136ac2f4024129161138a09824824f2ab2de5adf245898989c8eadc1953a74ec58e1d3bb0f695b55289590c2c1721b25dbb763875ea14dc6eb7541f7426539c46132a3013264c40529b364dae1ceb6a6a71e79d77020066ce9c89dc1e3d6c039b121212641ef64bf26bd60e69c330e463774e9b866e39d958b870218a8b8b65f3aa75e55a565626f3483181acb9330f9d1ceb675ae9d163e4f378e9ec3e7da9ecfb53b626506bc3e88d13275166204823878f68c41fc90a4f4be5c22fb50bf063e5c645454594939343f9f9f954595969e68bd1a9f6c4892ebf6c14e5e7e7ffe04ad3c9b17ec555e1c99327c13987dfef47bbd45439c54b862083e18edb6fc75ffffa57242727e3c9279fb4cd2014f396c972cc2fc5633594ea1626b4b4b2b3b33177ee5c9c38710203cf1f805dbb7681738e9a9a1adc7acb2df8e4934f70c30d3748ad8758d52f8db9591c0204090909f8eaabaf50515e8e94941418cc1c295753558d3973e660dbb66d501405cf3fff3c3c5eaf0493a22812548c9b21c7a5fdfc3f831500d621e3e2cb20869203c0a851a3a010307bf66cdc70c30d50a3744375753566ce9c892953a64849ef865446cc10d914832409317350785555153a76ec88e1c38723bb7b0e8e1e3d8a8d051b70e2c4091011962c5982cb2ebbccfca05afdc0245555118a84919890081e9d13fd4b4873d08f4cac2773cd203d1131d34b151414a0baba1ac9c9c9183c7830d2d2d3a11b7ab386673ac0fa15aca4a40493264dc277df7d8748c494d9668c813186f4f474ac5ebd1a9999995035cd1c6da2c5e5ac0407583fc542d1b1229c731c3a7408870f1fc6975f7e0997cb858c8c0c0c1a3408eddab5933a54b13c02d701d6e95fcd4a81d9a6e627371c53e280cb49de7fd4745db7cd7d16b9085964b4850930c5e32c1b8720fd8926948a1b0af38b55935cf559a6c23bdeeaf4dbff075c21d778b21602a80000000049454e44ae426082	image/png	0
8100	Terrasse à usage commercial 	1	8000	1503	1	\N	\N	\N	1
8200	Corbeille à déchets 	1	8000	108	2	\N	\N	\N	1
8300	Colonne à verre 	1	8000	108	3	\N	\N	\N	1
8400	Présence de neige et de glace	1	8000	108	4	\N	\N	\N	1
8500	Autre mobilier urbain et autre gêne	1	8000	174	5	\N	\N	\N	1
9000	Problème sur arbres et végétaux	1	\N	0	11	image?resource_type=image_type_signalement&#38;id=9000	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e2000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070e04162199e6b2000020004944415478daed7d795c54f5fafffb9c3333280a8a669a2cb38022b880bb29529a1b629b9222a665aef9bb9657adf476eb9676eb5be676fbd6cd258d4c1351d15bb9e4beb089962be8574b4540cd854d909939e73cbf3fce7c0e67062cecc6a2cec797af0166e6aceff3acefe779382222b8977bfdc98b7f904f9e3d53ec559224f53d51147ff3bbb22cbbd1f31b8b734b2c055844048ee3c071dc1d8107a0c267dccb0dac3b4a1d9ee7ef28cd5c81c6bec3715ca5df732fb72aac14184c1d3209a60515c7711004018220b841e596587fcceee2384e55915a35c9fe2ecb320441705f3037b02a2e5114a1d3e99cd41bc771b0dbedd0ebf56e74b855e11f5b3a9dcec95e2a2b2b73fa7b6536992ccb700bf92a5cdb075ded316925080232333361b7db919b9b8b8b172f222424040f3df4105ab66c8966cd9ac16030b811f320004b6b6033b52649120441802ccbe0c1011c079265703c0f10a9bf676565212d2d0d191919c8cacac2c58b17210802ec763b3c3d3d61b3d954b5a8d3e9d0b2654b0c1c381063c68c4180d1081081780ea2244227e84070d8662837f83900369b4d05243b4657c7c06d63d5c1254992aacad80d936559f1da0880432a9d3d7b16a9a9a9484d4dc54f3ffd846bd7ae4110043468d000bd7af582c56241646424388e43ab56add0a85123646565a1b4b414c9c9c9d8b66d1bce9c39039ee7317af4684c9f3e1d9e0d1b3819f00c3856ab15068341050f7300789e2f3f36b7f15e771733b2d9cd727dddb56327b66cd9828c8c0ce4e5e5a1acac0c1e1e1e080d0dc533cf3c83c8c848040404c0a35e3d05005ac9a65e210e769b0d7a830197f3f23063c60ca4a6a6a25dbb7648484880a7a727ce9f3f0fb3c55211f4b2223d19e06c361b743a1d789e5725ab1b58755c15b275e1c2057cf3cd3758bd7a35cacaca20cb327c7d7dd1a3470f444646a27bf7ee78f8e18721cbb2ea05b21bcfb62949929301cf40c080fcc5175fe0c30f3f447dbd01369b0da2288288e0e7e787d8d858c4c5c5a161c386e00d7a753f2c3c71bf03eabe5185a228421004dcba750b8b172fc6b265cb20cb32c2c2c210151585a14387e291471eb9a35d73a740280391f67d49924044100401cb962dc347ef7f005f5f5fc4c6c6c26eb763e7ce9dc8cccc848f8f0ffefef7bf23fae9a79c00eba4a61f00cfe8de5db2f23feb54260d191c4d46ff001a3922967e3af2239124ab1f1345b1fc2bb24cb22c9324494444244992fabed56aadb80b59aef4ef444413c74f20a37f00e5645f528f25f9c0417a3cf231321b4df4faebaf3b6de74efbb81fd73d0fac9bd76f50788730f2f7f5a36f37ff874892491625b2955955e0b8de5cf6ea0a3af69e288a248aa2d3e7b49f65af454545949a9a4a656565244912499244b22c537e7e3e4d9a34897c7d7d69eedcb9eadfb5fbd01e971b5875105871b123c96c345162c23a229948b4d955e951d9d24a28edcd6692c4f586bb8251fb1d89647557aeff4559a2a79e7a8afcfdfd292d2d4dfdaecd667b202456addb585ac3596b7fc8b20c9ee39dbd35c73a79e204ac562b7ef9e517cc9e3d1b4f3ffd34e62f58005992c00b02c0a14ec48a8a0a0ad1a54b17d86c36b46ddb16d1d1d1888a8a523d48992ada5bec1adceb467ead024b0b246d62d76ab5c2c3c303901d09609ec7a6a4247cfbedb7d8bb772f244902cff3f0f0f04049490966ce9c89575e794531b80d06c824ab4676ad2e99909e9e8eddbb77e3bbefbe436e6e2ef47a3dfaf5eb87d1a347a367442ff53a6813dcf743f0b45681e5fa546a2faadd6e878e1770e4c8114c9d3a1557af5e854ea743dfbe7d111212829e3d7b62dbb66d3875ea14faf7ef8f71e3c72bdb40c570416d024b9665458a02c838740889898948484880878707ba74eb8a0f3ef80046a351bd1e2cd00be0def61eeb8cb9e4b05db436cee6cd9bc9d7d797c2c2c268c1820554545444656565e59f77316c2adb466d2f6653690df82b57aed0c48913c9643291c562a1050b1690dd6ebfe375701bef7f105095796e1b376e247f7f7f8a8a8aa2ab57af56f0d2546049324976c518b7dbed153cb9baf2c0685f254922abd54aa9a9a91411114166b399a2a3a3293737f7be0947d4aa2a64aa4f6bc003c08d1b37d0af5f3f787979e1fbefbf87979797aa2a983da2d3e9e0c8fb96278035b689eb366b5bdd979595a15ebd7ace36140105f9f9f8f4d34fb17cf9723468d000ab56ad427878b8e2acdccba6566da29aa907d7a0e5a64d9bc8dfdf9fb66fdf5ee1c9d7c6949c5c7fc777655956c30075455ab9863458ac4cabc63724aea7f00e6164f40fa04d1b934816ef6d5558abd621334e5d69bfe7ce9d83c160c08001032aa44358599620084e12ca695b75e451774d1531fa8c4a6b665540b28c21438660fdfaf5f0f1f1c1b469d370e8d021b75758d57002a0f095585caaa8b010494949484c4c4466662600a0418306f0f1f1414e4e0ee6cdff18c3860d73623254e64dde0f8b5dabcccc4cc4c5c58188b076cd3708090d55ae97c0ff6e02be2e2dbe262412a3f3b20bc1f13ccefedfff212a2a0aefbefb2e727373f1dc73cf61faf4e930994cb874e91288085e5e5e2a5d58cb41bf5f4872da8a2076ad828383111f1f0f00983469126e1517abc161f679abd55af7af4175eb5abbddaebadcccae58b736814282db50788730faeacb7825af27134976916451a29fcf9ea3c50b17a92e38cbc369f37aae39be7b75b173743d9ff5ebd79329c0482f4f9aace43f5d92e1753d1c51adc0aaece69f3c7e823a868553e78e9de8cc9933152eac288a6aacca35fe73bf80a9326069cf979dffe48993c8e81f401b12d757f84c5d0756b5871b6459862449d0ebf52828284064446ff03c8f356bd6a04d68c8ef96acbbda536c7bf743d1a8d63c603616fb1b11e14ade65f4ecd9134d9b36c5ae3dbbd1b061431051ddc82ad4a68dc5ec2cbd5e0f4992f0de7befa1acac0c0b162c4068dbb6e079be42ec892d9bcda67a7fdaf7d8f6ee07b21c0390d66ed416c83ed2b225860d1b86ebd7af2331311182203811071f6860b1f5d34f3f61d3a64d888c8c44dfbe7d9d9e5a6dc128a3061b0c06d8ed76f5730c60369bedbea9eb6320b2dbed2ab018679f5d93bffce52f1004016bd6ac71ea8653d78df76a0716f308172e5c085114f1de7bef556801e45a89cc6256cc1364ea0f508a49d9fbf703b0789e574bc2586681a979491461329b111a1a8a5f7ef90567ce9ca920d91f4c6011c083c3e5dc3c242727232626062d5a3e025e27409225154c4cbc33f5c6f3bc93aa6317dff53377e3d2bb4a47add43b79f2244c261356ae5ce91402a8e900b1abddc8eb75906409c3870f870e1c8ea41f024891de12c90f2eb044bb1de038c4c7c783e3388c1b374e556f3515e064c5abac10427b33991d171a1a8a264d9ae0871f7ea853c14782c229ebd3a70f6459464a4a0a64761e1cffe0024be750657bf6ec81d96c46484888aadeb4f653752ded3e468d1a854f3ffdd4e97d83c180dbb76f83e779f4eddb17191919aabaa913c63d1495efe7ef0f93c984bcbc3cf02ea9ac07541512f2727371e6cc1944444438797f35d1cd85ed83e779141616e2b3cf3eabe081d6af5f1f9224e1adb7dec2ecd9b311121252676c3899ca8df8e0e0609c3c79b2c61ecaba0d2c8ec3e9d3a7e1e1e181debd7b974b32478f85ea5e5a2377d2a449b05aadd8bc79730586a9200868d4a8115e7ae9a5f2b4531d900a5afb333434140070eae4c97ba23949b5024b96241c3b760c76bb1da1a1a14e9e4f4dc4a1743a1d4a4b4b010091919168d4a811929393ef58b82a491244517472ff6bdb6b64ebd1471f0511e1f6eddb8a53224b751a58d51ac265f6808787079a376fae36efa8c99be6e9e9090068d2a409befdf65b787a7a560035e39ad7b58836cf299178bbd586909010e8743aa4a4a4a05397ce1078e1c10516001c3e7c1856abb5d6dbf7b0de0adadfb53d1558bc4c9b56a913063cc7c1e0e1018387078808d9d9d94a101554677867b5022c0f0f8f0a3681b6dca9260055595915c7710001278e1dc7d1a34791969686ecec6c6466663ae5e33c3d3dd1be7d7bf4e8d103fdfbf747707030389eaf9423f5a71fbb2c43761c37cff3e8deab278e1f3f0e921c0f0094f7b4ad9cb4d7b836d35ed50eacf6eddb63d7ae5d4e37b9a64e589bc066c15166472d59b2041b12d7e3dab56bb05aadd0ebf5b0582ce8ddbb37fcfdfde1eded8d23478ec06030e0f8f1e3484b4bc3fcf9f361369bf1cf7ffe133d7bf5aa7e55e8029456ad5a213d354de5cf7302ef543f49442ad7bfd673a9d54b6a9769e5172b28c81248870f1f26bbddaed2446aaad45c4bb591248956ac5841eddbb727a3d1488f473e466ffffd2d3a7c28c389134652c5d2b2ac5399f4de9cb9d429bc2305f8f9d3c9e3276aa426404badd9ba75abca89176df60ab4a207a7fc4b92e9ff4e9f21a37f00cd9933a7568a3558f1425151118d183182cc66330d1a348876edda5581d3a4ede9c06e96cd66732addba7af52aad5cb9b2c6cea1b4b4543d369bcd46e11dc268d4c8b80abd29b4bcaebad01fa27a81e568d211d1b3178587875349490959add61a7fc28a8a8a282a2a8a82828268c182051580c75eb5c5a5dad7ca6afd6a9274a8954ab35e7f834c0146cabd94538124c83e5bd9dfef2b60c9a2442413eddab193fcfdfd292e2eae46d9a06c5f13274e24b3d94cab57affe4dc9f67b37b7b618acda32b9e3478f291ae09d77efa8eeef7f55c86c1449a60913265060a0626bd5e4c927272753ab56ad68eedcb91540c76a135d2514a3fede4955d6a444a8b02f99e8f9b85114d6be03ddbc79b382ea66c758db00e3abdb5d06116eddba8543870ec1d3d3133e3e3e35e6b1c8b28c152b56c0cbcb0b53a64c513d456d2a8779a92c04a2f5c6583b21e67131efab263d2eede40cb6860c1982929212ecdfbf1fa22856c86dd6857694d5ba77a54c9cc3f2e5cb5154548479f3e6c162b1d4588297e7791c39720461616168d2a4899a22d18248fbd9ca0a6019982a7bef771f2c003208b2a309800c82284b4a97f03f98da01070c7b2e062dfd7cf1c5b2e5d009ba728e561daab7ac7658932c63d5aa5508090941bf7efd6af48967dd8c7bf7eeadd2801999ae2658981c14a2a32c4aeacf3a5e00c7a4f91f886731293660c000646666e2e84f3f3949e09a96a8b5032c22646666e2e6cd9be8dbb7af4abaabf01456a31a397cf830c68e1d5ba984aa2975accd4132405735ebc0a2eaaed7ec99679e81288a484949a9f030695fef5b89555252029ee7111919a9b238d905af691b85d94b2ce95c53b93ea09c43c5baeb54159477fa7b4848088c4623f6efdf0f3898195aa955db2a91afa98b6bb7dbd5219277f3c4fe59b9424021feb1bef035056cb61fbd5e8f5bb76ee1e79f7fbeabf377ed78a895b8a1a1a1387af4a893cd585792e7d50e2c6f6f6f701c8753a74e3989f79a90184c8dd86c3655626839ef35016a6d5de49c39733064c810276fb32ab695abd9c0bcd8e0e06014171783d71461305e596d03acda19a46d424250af5e3dfcf8e38fb5a28688081e1e1e2a4d99a9a29ab8f0da29ad972f5fc6ba75ebd0a54b97bb56556c3bdafea41cc7a15ebd7a955ecbbae019563b831400a2a2a2b073e74ee4e7e7abb1a39a50455aca8c5682316e58b5ef5f92c139fefdcffb1f8023e095bf4c05cff19045a94ac7afadb9d4da891cc7a1acaccca9f6927d47fbbdfb1258bc4ee9b91e33fc3988a288952b578205712a2b5f228d11fa672c577b4efb2457456231f089a2f89b06377b8f9593a9b132873449dab811df7df71d060f1e8c1e8f3e0a708e6b534549a5050d8b5b41269c3e7d1a1dc2c300ceb90501c771007f3fab42c745efd8b1237af5ea85f8f8785ccace56e35b76bbdd0948ccb0ae49aff1f780c5487f2c64c0fa75693d4ce6796a098d4c451d3b7a14efbfff3e7c7c7cf0c1071f28b5967769a3693d4a5513701c929393111e1e5e61df44b5cf2ead7660e9743ae8f57a4c9c3811c5c5c598356b9672911ccd3d0441506fa0b624ac4e04f91c815446a003807a8ed986aec14866ff681f8853274f62dcb871b05aad58bb762dbc1b3502af13aa1c6e6012938186fdce0b0276efda05abd58a1123463835b8aba91861ad028b55e4004a95cc8b2fbe88d4d454ccfff863271b421b00644f675db838ac7f8476822bfbbb566269252ef3d8366edc88d1a347c36ab562ddba75681312a27641aeea43a3dda7f69ac8928465cb96213c3c1c212121ea35d67a86845abe7e35455db1dbed545c5c4c4f460f215380913624aeafc02aa88bcb95df5419894ecb2ec8cdcda5a1438792d96ca6c888de94752a934856385d777b9e5aa2a24a4214253afae34f64369a2869c346952fa6e56cc972ed778d4675834a7b51ec763b9514dfa2debd22c86c34d1ac59b39cb844779ac055db1df75c097f2a31b0cc4ab22851c1cd7cdab87e03bd3c693219fd0328d06ca1e9d3fe4a0537f39501079af3d1b6bfaceaf5d3ae829bf9f458ef488a8b1da9d2932bebf457dbc0aad6620a576f8ce77978366880010306203e3e1e9e9e9ee513e71d36575deb7dc54213cc403e79f224ce9c39838b172fe2dad55f71e2c4099c3d7b16a5a5a5ea397cfef9e778e28927d462070e9cca3cd0e9744ae95615d521abc261f6de071f7c809c9c1ccc9d3b178263ce34b3c19c02aab51c20d5d580aa75eaf924daecf8e28b2fd0a3470fbcf9e69b9546c3ebe2885b766c717171282e2e567e979587a05bb76e888d8d852ccb98397326bcbcbc9412314d3a493b74bcaa758bae533bd6ac598375ebd661ca9429e81d19097280dd75141dc771b56d6155bf57e85aee95919101bd5e8f471f7d54fdbbab014c0088430523de6eb7ab713076539931fddf26b7d9f7b4afaed253922424242460f5ead53879f224d6ae5d0b22c2f8f1e3f1ccb3cfe2d2a54b4aad21cf015cc558190388c0f16a30c0751f24c9e5e748ca6741c086c4f598f3cebbe8d0a1035e99f6aab27dc1b95798539caeb6257d4d3eedb22cc3cfcf0f369b0db76edd529f5cad3a64aa8295976ba5975eaf47fe8d9b3873e60c7a387a1968d31dda8b5c15d21bdbae562a30af4efb3068a54e484888bafdbcbc3cf03caf8c85d3d42d0607075749e2b2308b763f9ca3939fa0d329833d791e0b172cc0679f7d869090107cfdf5d7eea620dab80a73c5fd0302d0b66d5bac5dbb1625c5b7002a6f99284992624f2823522bf4e5b4d96c58b3660de2e2e270e1fc7975fb5a00b9d247aae2cebb525b5ca3ff4484d2d252bcfbeebb983e7dbaaadab3b3b371fbf66d040606028e1e158220a071e3c65552e3ae8de000c06eb3417080bca4a404afbcf20a162d5a84366dda60cd9a35f06cd8c029daff40024b7be3b437fad5575f45696929de7efb6d87d8e69ced3051748a15b16d190c063468d000b2236aff5be0a94a0f292dab54dbc341afd73b7d3f21210183070f467c7c3c9a366dea94b76bd0a08132e892082929294e6359aa727d5ccf536f304096246cdcb0017dfaf4c1e6cd9b3162c408242424c0bb71a31a6567d45955a855476aea43923060e0403cf1c413d8b87123c2c3c3316ad428f529d5f684626a82cdd12122f4efdf1f73e7cec5962d5bf097a0402735aa95005569ecc6fa478c1a350acd9b37475454149a3469a2aaead4d454ecdfbf1fe7ce9d43e3c68df1b7bffd0de3d92457221c3e7c182121214a1f078e434e4e0eba75eb7657dc73ad64b35aadf03078e0c9279f446666261a356a842fbef8027dfbf6556d4ed7f1310f24b05c6d2706305e10306fde3ce4e5e561ce9c3920228c1a354a49a00abcdaf18fb9da5a90f8faf9a16bd7ae58bc78311eedd5135dba7401cff3e573a4e13cd0e93755b5a81c4beba056f8e69b6fb06963920a6cabd50a4ee0d1a64d1bbcfdf6db183e7c381a366ca8da63ecc67a7a7a82e37994dcba854b972ea16fbf27aa5e6ce19098ec016273b0398e83d96cc6e6cd9be1e5ed0d9964089a07e75e00568d44deb5414692896e979412c944f9376ed253439e247f5f3f7a73f6dfd4fe09da40a27694ad2c2bd3546f9794d2e3918f91c964a2848404a7babfbbaab2d6f466b879fd06251f3848cb962ca5955faca0f4d4343a7ffe7c852838abe4966599060f8a52cadd259976edd8498f346f41898989771d59770a9eca442347c452d4c04115a6b3aae7484412d5bd7e0d3557b05a596ac76a2392cb5f8b0a0a293a6a30998d268a8e1a4c39d997ee58284ae468da2113655fb84883070f26b3d94c313131949e9e4ea228de5d9a4892491625b5629b15d7aa3f1339cda0d6a6736459a640b385162f5c44a2cd4e73de7997825bb5a6ecececbb06b85371ac2453d4c04114173bd2e9336cdf2c5d53b7615583833099e8d619f400a7bc12085e8dbcb169d3268c1b370e595959888a8ac2ea555fab44382dbd57314a388892087f6300befefa6b8c1d3b16478f1ec588e786e385d163b06963120a6ee62b7c2f16ef22672f5535cc790e9ca0a85f708ee08f230605a57d96aa5e5d550f070e9c833f26e874f8e1871fd02ab835fcfcfd1ddb50364092acc4a62af1984547bb47b51c4d265cbd7a15999999e8dfbfbfd3e7b50c580e757faa6fadce84560d7c47dbc31fb66fc78c19335052528276eddae1f5596f38755b76f5fad8c5be78f122feb56831366ddaa4da67ad5bb7469b366d60369b0100f9850568d2a409264f9e5ce5969032081ca102b0ac562b4e1e3f81e7860dc39265cb603299d0bf7f7fbc347e1c66cd9a05bd23ce245a6deacf32953310b4c7ce6c2c9e571e8499336620292909fbf7ef87afbf1feed9559be292d95f5a15595c5844ff9cfb1e99028c14141444c3870fa7efbefbce697674a57d0d1c6a75d3c6249a397d869ae8361b4d64f40f208bc542b367cf56db0255a5d58f5c49530eb6b66fdd46adcc164a4d4ea18ffee743f26be94b999999aaeab6da95f3d9fafd164a39985ca9ee7255db070f1e24a37f00cd9c3e4351c9f7f0425d380876c34a6f95a8764e4ef6259a366d1af9fafa52484808858686525c5c1c6567673bd94f369b4d01894caaf1ef643339fe5badd6bbee16c30c642df587fdbc78e12232fa07902c4ad42eb42d0d7de659e5e1d0ace9d3fe4a66a3895a0506d1a8917124daec248a6285461fb22cd3993367a87dfbf6141e1e4e45058575df88aa2b36d66f2d66f3d4f3acef145658b87021b2b2b2f0faebafa3499326484f4f475656961aa567443cabd58aaccc4c758037eb114ab20c491401c7a06f411060b55aab6e27382c1916e5d68619525252603299f0edb7dfa2b0b010b1b1b1d0e9f52049862c4a98356b16366fdeacb6d03e7dfab4124ea1f29c21b3c13232323074e850141515e1f3cf3f875723ef3adf6ebb4ee40aefb418e5431b732210ec361b0c1e1e1045110d1b36c40b2fbc80c2c2422c58b0008d1b375663642c62fdd1471f6155fc5730180c080b0b83c16040d7ae5dc1f33c1a34688076eddac12fc01f2d5bb6548df13f9a4160c7fdf3cf3fe3f1c71fc7e79f7f8ec68d1b63c890216a1a66e2c489484b4b83e0f87cb366cdf0e5975f82e379c8a2a834d53d7e1c3b77eec4ce9d3b71faf469346ee2833973e6a05bb76e4e590037b0fec0d21b0c9048560d6466c41aea79a81282f9163d7bf6c4e2c58b71e0c001a7e83611a179f3e68a97258a3874e810743a1d0e1c38a04e1123221007c4c4c460dab46968d9b26595d222922c41c70b4e37591445ecd9b307bffefa2b6459c69933673063c60cd4af5f1f05f9f978f1c51771ecd83190434ab66ddb161f7cf821dab469035992f0f3cf3f63ce9c39484d4d85b7b7377af6ec89a1438762e8d0a1f069daa4ced286ee2de3bd92788c6b4054fbf741830651606020ad5dbbb642ac2a2f2797de79fb1fd4312c9c2c2633750c0ba7f7e6cca5c48475b47be72e8a8989218bc542010101f4faebaf534e4e4e958d7757c761d6ac5964369a28a2672fea14de910a6ee653d6a94c7aac772499fcfca995d9428146134d7c691cdd2a28546363a74e9ca4ae9dbb509bd6c10aadd87101984dc8e25975815a7c5f18ef55898c932453e6c953d4e7b1c7c9e81f4013c74fa0c2fc02a7f765512292644af8662d8d1ef53c059a2d64f40fa0d8e1232869c3464a39984c2347c452a0d94261ed3bd0828fe7971bca8e7ea9da00a9ac89e68b36252a7ee9fc056a6d09a440a389824c665af4f17c5af9c50aea14de914c01466a151844ad028368f9d2654ee02f2a2aa281030752ab56ad282525a5ce0f0bff6f57adc7b1aa924fb35aada857af1e645946616121de7cf34d6cddba153e8d1a63f4e8d1183f7e3cbcbcbc9ce8b8a2dd8ecb972f63e5ca95484a4a427171315ab46881e1c387a375ebd658b56a15d2d3d3e1eded8d3163c660c4881178c4a1221d3b8608193a365ac47195a64e9982ad5bb7aa6adbdbdb1bf98585aaca6edebc39962e5d8a0e614a212953d913274ec4ae5dbbf0f7bfff1d2fbcf0c27d31d3ba4e0748ab42c4ab8cb8979e9e8ed766cc445e5e1e1a376e8c7efdfaa177efde78fcf1c7d1a06143050b8e6a644914b17efd7a7cfdf5d7387dfa34ead7af8f091326203434149f7df6198e1e3d0abbdd8ed8d8580c1d3a143d7af45040ca950771799ec7acd7df404242022c2613b21d85b71cc7c1268a30180c78e28927b068d122d4ab5f9fb995008099336762ddba75888989c1bc79f3ee79c3fc9e07966b84ddb57e0e00121313b175eb56ecdbb74f35ae4d26135ab46881c77a47c26030e0a5975e523853000ea5a763c18205c8c8c880b7b7375e7ae92504070763d3a64df8e1871f4044f0f7f747dfbe7dd1b7df1368d4a811ce9d3b878484041cc9388ceeddbb63c9922558ba74298cfefe888f8fc78f478f62e4c891f868de3cc88efe101cc7419425bcf1c61bd8bc79331e7df451ac5ab5eade6026dcebc6fbdd2469b591726da092053df3f3f369dbb66d3467ce1c1a356a1445444450809f3f055902e9cb152b9d02a824c99496924ab1c34790c5a4d4ff251f3848177e394f9f2cfe1745470d268bc94c414141aac1dfae5d3bfae4934fd4b22f928966bff63a99fd0368f61bb3ca13d80e1b2d2d25959e7cf249329bcd3469d224ba79f3a6d3548eba384de281b1b198b47275bdb51c755729c688708c0b3664c810e4e5e5213e3e1e6161612e4f55797eb2acac0c63c68cc15b0e566bcea54bc8bd9c87f3e7cf232828085dba7451ed2822c2d75f7f8df7de79177e7e7e18f2d4532afb353f3f1f191919c8caca42239fc6888b8bc3f4e9d39d58a76e5558070c776d8f29d20c796260d34e12d30290fd9c999989c18307c3c7c7076bd6ac416060200c068353e38cc28202cc9831037bf7ee85d96cc67ffef31fd4f7f454180e9afd6a635fe3c78fc79e1d3b1dc96a850561b3d92008029a376fd3ee870a000016f2494441548e41830661d4e8e7d5243803d4dd70f2ddaab01aa30da22ca9c43635b2e0f899a941ed0c1cd7d27422a26fbef9863a77ee4c168b85162d5a541ec392642a2a28a4d4e4142abd55425f7d194fa600230d1e14450537f32bad4466443b5196e88d1933c9e8eb474ff4e94bd77fbd561eb260b1a94ada0c54489ebb55e13db8e472bed4c91327f0d1471f61dfbe7d100401a1a1a1f0f6f6466e6e2e7273734144e8d2a50bae5cb9822b57ae203030100909094a18c3c1ddaacc5bddb871235e7bed3574efde1dab57afae54eaba4a5157a7c4ad0aefd165b3d9545bedc8912358bb76ad52130845cdb66bd70ed7af5fc7b163c7d4e6b3cc66facf7ffe83d0b66d2193f3f04eb64d22c2dcb973111f1f8fa79f7e1a0b172e740291568ddef3699afbcd2bfc6fe8389545b855fa8c8b27a7fdbf62f917d4312c9c22237a2bcd3d341ea92b1f9f88283636967c7d7d292d2dadc27b955290eff375df034b7b835d39ebae610c51149d46c82d5fba8c5a07b5a24f16ffab520e15e3dfcba2447939b9d4a55367eadd2b826e5ebfa1261a5d01c6f67bbf03ecbe96cb5ad5c5b85baeef6b3bdc089ab6d6b22c63dcf8f168dfbe3d3ef9e4135cb972c5a91cbea0a00067cf9e456a4a0a4a4b4bd1a2450b4c9e3c19b9b9b9f8f2cb2f55fb4a1b1261fb64ac0bb72abc879756d2d8edf60a432db51e5b0529e208749a028c347dfa7427e9f3d5575f51a0d9421693993e59fc2f3509fec2e83164f40fa04b17b32ba5213f28ebbeb724b581549d4ee7d4cfb3b2f8140bc03229d3bd470ff4e8d1037bf6ecc1ad5bb760b7db21cb32faf4e9a3b6689a3f7f3e2e5fbe0c8ee73165ca14f03c8f458b16397551d6b605a73ad02ebbbad77d0d2c36ce8d0048248380f2b16e2e6d86b493e0d91478466f1e3f7e3c0a0a0ab07dfb76e8f57a4892043f3f3f75f014c77158b0600140846eddbba37ffffed8b469130a0a0a2a80cb5545bb81754f9e5c790d9e5ed08103d4b16e7c259579ae330b59cde113fdfbc1d3d313cb972f07505ee3f7d2f8714ac3138ec3e6a4245ccecd0500bcf9e69b9041983fef6318740a0f5e6beb3d08eb0109aafc4189a769c33468d0209c3f7f1eb76fdf56a5d0a38f3e8a471e7944556d0b172e0424090146239e7df659242525213b3b1b9ccb7cc40781e1e006d6ef7895ecb55fbf7eb87dfb36befffe7b35d708282d9998a7b779f3661415150100a64d9b86dbb76fe3dffffeb793adc7e6f8fc991338dcc0ba478105287d463d3c3c909a9aea048e67870d85d16c46595919388ec3aad5ab21930c7f7f7f3cf6d863484848405e6eaed37839ad4de706d603ba445184244968d2a409828383919595a5560fb1b8d7a44993d45ac7254b96a8bd18a64e9d0a4110b061c306b5c11a6b58eb96580ff862c33b4551447070304e9f3eadda54764919def4dcf0e1b0582c6a221b00049d0edd7bf440b76eddb064c9129496963a4d3f754b2cb73a546da4962d5b82e779a4a7a72b3ddb0565789368b7e3ff4d9d0a4e10101515a518fea4842a264e9c88d2d2522425250180d3f86237b01ed0459a39878052344b44b874e99253db6e9d5e8f613131f0f5f5c5279f7c521eab72ccc2f6f3f3c3f2e5cb550a8deb8c1c37b01e4069c558a1b22ca369d3a6804cb89c9ba7f4bd82021499648003a64e9d8a8b172fe2f3cffe0d8832885302b153a74ec5959c5c7c9bb4a9bc3ffd1dc20d95f597ff6fc325aeb1b33f731f77bc760f021febcf925ea228a275502b444747e37f3ffd14e0e0448d06017d1e7f1cd7af5f47727232bc1a3702c932788e47af1e3da0d3e9b0efe0418003ca6cd60ae5fb5a2ff4cf8c756993e1da66c3d569e7b92556156e08bbe97abd1e7abd1e57ae5c0100ecd8b103d7ae5d03c771ca504f59c2b469d360b3d9b062c50a488edef600101b1b8bcb972f63c3faf500807a060fb57b4d6551f93f536a91a6253a0bd456b7f3e09658bf7353983d64b7db613018306a641c2449c2dab56bd1b67d3b848787e3cb2fbf54e9371cc7e1b96131387af4280e241f448b87958625454545e8d7af1fead5ab8703070ea8e34ab48b8523fe2c4a8db65b604d47fbdd12ebb72e8e231ec5719cca8ab0dbedf8f1c71f018ec393d14390723019376edc70ba71affe751a2492f1d1ff7c08701c784140e3263ef8cb2b8a0db669d3267522879649a10e58fa939e756d45932bd8aa3b8ee606d6ef2c6d2a460b3600183d7a34743a1d962f5de624e52222223060c0007cffedb748494e0641897bbdf8e28b309a4d9833670e4a1d13c45ceb23ff4ca9228b12449b1d3ca7a4e3530e2663e5172bc011d4beaf6e60d5a28dc5b85cec29677f6fdbae1d5ab76e8d75ebd601323955e4cc9a350b1cc7e1d34f3f55249383aef3d65b6fa1b8b8184b962c51bb0bba4a953fede63a24e0af57af62c4f0e1183b762ce6ce9d8b5c070bc30dac5a0c3768c1220802dab66d5b3ec35a963161c204949494202929c969d893d164c2cb2fbf8cf4f4746cdcb8117a9d1ea22462e0c081e8d6ad1b3efdf4535cbc785105576583a6fedb959b938359b366a16bd7aef8f1c71fe1e1e1812d5bb6c0d7cf0fa866d35ae786cf6f2fd6de9bd9508d1a352a673d083c9293934192849d3ffc80a1c386c16eb341ef61800cc20b63c762657c3cfeb56831060d1888865e5e904509f3e6cdc3d34f3f8d57a7be82addbb60104a5aba1430b0a8200f6ab1ace00a776cfd9b97d3b76efde8d939999387efc380c06033a75ea84808000f8fbfb43966564656561c7f6edca383e4140c3860df1cd37dfa04da8632c1e084235768b774bacdf59ae0518ec469323a97ce4c8110882801d3b76e05661a1dad79d0387c63e3e78ebadb770e1c205a5c0c221fd7cfdfc3069d2249c3d7b16b367cd02c9b21a306500961da91f463ebc71fd3a56ae5c89c722233179ca14ac5bb70ea2282222224219722508c8cdcdc5ba75ebb078f162ecd9b3477506222222b06fdf3eb40909519b02f35c35df7a72afdf5d369b4d2d8658bc7011998d26b5847efab4bf92c9cf9fccfe01f495a3ab8d2ccb649744b5c3e0d34f3e45eddbb6a39cec4b4eadc2e3624752a0d9421b12d73bd73b6a5a65161717d382050ba873c74e146409a4debd22e8ab2fe329fbc2c50a6dc78ffef813cd9c3e83da86849229c0485d3b76a2c46fd6aa7593da512cd55ddce106d65dd4251211fd6bd162321b4d2a8056c57f45814613b5325b287ae0a0f27a42cd77525353c962b150424282539f89c2fc02eaf5684f321a8d949a9aaa7efee6cd9b949898482fbd3896822c8164369aa847b7eeb42171bd3afb4716252a2e2ca2addf6fa159afbf41113d7b519bd6c1643199e9f1c8c7e8cb152be9e6f51b6a2f0992e40abd2eaa73b96dac2a18f05a3578edda35a5a0421421e875e8d0a1833ac6e4e79f7fc6e5bc3c3cf4703380e7a01714de568f1e3dd4d27d66b7e9743a78376e842fbf8ac7b061c33079f2648c193306696969c8483fa41674b46cd91293274fc6c8b83888763bf6eedd8bfdfbf7e3f0e1c3387dfa34ec763b789e87a7a727060f1e8c214386a04fdfbecad85fe6107000380e924d72aa9d7447de6b69695b0fb174c8c4f11370eedc39ecddbb57194e2913825bb542fbf6edf1d34f3fe11fefbe8bb1e35e525a966a66116a5b30313e174b6e9f3a750a2fbcf002ae5fbf8ea63e4d101a1a8aeeddbba36fdfbe309bcd58bf7e3d323232f0fdf7df2bf37d380e61616130994ce8dcb933ba77ef8ee0e060a76c016b6fc912e9da39d235d143c20dac2ac6b398e47a6e580c743a1dbe59bbd6e1b6119e1a32048d1a35c2c58b17d1d0db1b5bb66d85e8e811afed47efdac34b9b08be7efd3a2efc721e5dba7685248ac8cdcdc567fffbbf48dcb0014484e0e060444747a36bf76ee8debdbbfa5d960b64656b9581c66eb763eedcb9f0f4f4c46bafbde6743c6ee3bd96966befade8a8c1f47cdca8f2fe57924caf4f9f414126337d30f73d0ab204d2f9f3e7492672aaba66c632abcc9624c9a9dd37db962c4a9498b08e822c81d4ca6ca1b9ff7887722fe59437307139aecafa51a8f62111d925b1c2f9646767bb2ba1eb42be90d95ab22ce35456263a77eda226916510024c2688b28c8e9d3bc36eb763d78e9de0084eea876d87a570789e77983e5c79d49de7f0c30f3f60f6ecd968d3a60d76efdf8737fff1365afaf92a9c2f9e534bcfae5dbb064110909494045996d530085b31313178f52f53a1e304645fb8885d3b76e2ffbd3c05e11dc2f064f410b5bdb83b405a0b4bcb6e901ce34aec763b1e7ae821d586e1791e818181906519cd9b37879f9f1fb66edd8ab163c782d709bf6bc3691b84d8ed76c4c7c7e3f6eddbf0f2f2c2cc9933e1e7e7a7da5c6ddbb655c13a6fde3c00405a5a1a860e1d8aebd7af233b3b1be7cf9f476e6e2eb66ddb86268d7db077ef5e949696aae00b0b0bc3942953aa3fc7ea86cf6f4b2b66cbe8743a64676743a7d3c162b1a8b691dd6e47239fc6100401bffcf20b060d1a84152b56e0ca952b68e9e7fb9bdb77e54409828066cd9ac16030e0d0a14300808cf443f8fedbef505a5a0a2f2f2fb46fdf1eddbb7787d968c20ba3c7e0c0befd086d1382dbb76fa37efdfa2ae3d57abb0cfa667a94949480e7793cf3cc3398356b161e7ef8e11aa145bb815505af90a9aa94941475b2983632dfbe7d7b70028fecec6cf4efdf1fcb972fc78e1d3bf0c2d817abec1cb0fce0a44993d0a953278c1933069065949696e2f0e1c3d8b1630792939391919e8e1f0f1f86d56a458b162dd03a28083a9d0e376edc40515111727272c00308f0f343f3475a20262606313131301a8dca79f09cdad4d70dac5a5a0c548c2ab36bd72e8487873ba579d8e83b4992009e43f71e3df0d0430f558941c080aba5cf8484842034341457ae5cc18963c770f6ec59fcfaebafb870e1027c7d7dd5927e83c1807dfbf6e1e6cd9b6aad22c771e8ddbb37ba76ed8a010306a055481ba736e09579b96e60d57280f4d75f7f454e4e0e468f1eed74a3189da643870e8a8ae114bba72a37ceb5e9ad2ccbd8b37b37162f5e8c13274ea874e8162d5ae091471e515427cf23c05f99bdd8b57b77949696c262b1c06c36232c2c0c3a36c54303246d1ccbb5099c1b58b5bc962e5d0a9d4e8741830695c78a380ee4906cebd7af57a58ecea0bf2bd03280eddab50be35f1a8766cd9ae1c5175fc4e021d1e8d8b1a3ca57d70285312e5c6356ecd8b4d467765c2cde5513c5b2ee70c3ef78854484d2d2526cd8b001616161f0f7f7770285242b6c016d68c15532fc9e7dc522f1797979100401818181f8c73befa85362b5bdbb00258cc1a2f85af221031a0b3d1c3d7a1413264cc0ead5ab21cb325252523072e4487cfcf1c7d56fc03fd049662265da7c25ed1c45515459038b162c24a3d14869696995b2025880d37570271b7ee03af84022b9fcbf767b325197f08e64f4f55307636ab7ab4d1e6bf7a9dd2f0bbcca44141f1f4f91919174eedc39124591a2a3a3a97efdfad4ab57af6a67373cd0291d519620381ab1555a6747c0a5ec6c44474723ac633856ad5ae5249158d997565ab9a670987dc30a27b486bf4432048e2f97361c8f4093098220283d201c312ebbdd0e8ee3f0f0c30fa343870e18387020fcfcfc2aadf41145118243f571701e54b064c9121c3972044f3ef924860c1952ad36d6030d2c2d085852d86ab5c2c3e00110a1a4a404b1b1b1387ffe3cd66fdc80366dda38a99c3b05542bf3be5c070ab87a662429aaf3d0a143d89c94849c9c1ce8f57ad86c3635b8c9bc4322c2902143f0e4d34fa34f9f3ed019f4101d358c3ccfa3a0a00065656568d1a285d339dee9b8ddc0aac6e8ba564a91a30ef0f9e79fc7a953a7b060c1023c33f4d90aa0acacc5376b57a46df3cdc201cc88669f63524f49ef700c8d0a9b940824492a9f9e35744b4848c0e5cb9795d817114c2613faf5eb8767870d45686828ec763b264e9c88e3c78fe3c891232a80fbf7ef8f37df7c131111114a231397e37103ebcfb52f5575a6d7eb21d91535f2e3912378f5d55771e1c2052c5ab408c36262204aa21a73d25252a0513715a490e6775715e9f43e01458585888b8bc3b163c750af5e3d040505a159d3a6c8cacac28d1b37f0d0430f213030103a9d0e6969692ab03c3c3c5052520283c1800fe77d849898186cdfbe1d59595998366d9a1a7c653dbd2a03b91b58d5b4366edc88cbb979282c2cc481030790959585a64d9b62debc79e8fbc413500d1697985065e0714dd568db7e6b6d2c5114a1131c358b763b468d1a8563c78e213a3a1a269309999999b871e3063c3d3d3161c204f48a8828976650e629eedcb9135bb66cc1912347d46d6edc9484ce9d3b3b81990149cbd5aaf690c3834e8b59ba7429998d26320518a975502b65b2aa2590268c1b4fe9a9690aa5d76657e92969696994959555810ae3ea9911115dba74c9892ac33e63b3d9282323830eee3fa0ba8c7e2d7de96fb366932c4a4e430fb47c7bed583a592e9fff93937d89664e9f41419640faebabd32a508fd9f76b7288c1031d2065a9119ee7f1fcf3cfa3b8b818494949b0dbedd8bd7b37ce9c3983cf3fff1c898989d07b18909898881b376ea071e3c6387af428789ec7cf3fff8c193366e0e1871f864ea7c3d4a95371f3e64d848585213a6a30060c18808888089c3d7b16168b45a51a17161682e779787b7be3fdf7df87a7a7273c3c3cc0f13c745c39258745d2259221e8744a40d6a1c6befff63b0c1c3810be7e7e98376f1efefad7bfa271e3c64eacd5b4b434bcfdf6dbd8b163c71d07b7bb556135000b00f2f2f2d0b2654b6cdbb60df3e7cf875eafb0022ee7e6a99328f47a3ddab56b87e6cd9b63dbb66d9833670e5e1c3b16eb1312307bf66cd5eef2f7f7474e4e0eba76ed8ab443872049120c06836aaceb1cfcf4d75e7b0df51a36c07b73e6827744dfbdbdbdb17bdf3ea51c8cafd885a6b4b4140d1a34501d824e9d3a61e7ce9d68d2a449a5aad9f5d6d6645310b78d05e711c12cec50505080debd2260b55a214912bcbdbdb16fdf3e141717a34f9f3e902409118e0e7fcc98d6e9742829294160602072737321ca321e7bec318c183102e7ce9dc3fcf9f3a1d3e9d0af6f5ffc7bc9121007ecfc6107fe32650abcbcbc909f9f8f356bd6a07bcf9e7025206cdcb8111f7ef821d2d3d355b0994c26ecdebd1b168b45b59db41465a7610835dc57fe815785dad88e368fe6e5e58577de7907172f5e844ea743484808bc1b3542c3860df1eaabaf62fefcf9d87ff020789e47ebd6ad71faf46988361b9a356f8eff7cf71d76efde8de0e060b46edd1abc2060cacb2f43afd7a3b4b414bbf7eec5a1b43474e9a124912549c2f5ebd7e1e1e1011f1f1f25d4e00083d603758d7f5db870c1a9ef8336f553ebd3c5dc7c7667a3d6692ea17c876199924c177e394f5bbfdf42830745d14f477ea4912362a943bbf6b47debb60a33a125bb4813c68d278bc94c81660b99028c947b29876459a6499326290e83c94c66ff001a35328ef2f3f3d599865ac39d3903da540ffbf9ead5ab74e2c409b25aad950ee1740fc2aca555214f4844656565158668cab25c0e3e07d05c2b9225bb5205ed045c9968e4885832fa07509fc71e570b5e4b4b4be9e5499329d068a2d69640f2f7f5a3e8e868cacccc743a1e767cb76fdfaef0104892447bf6eca177de79e7ae8a71ddc0aa463055e682bbfe8d55db6813beec33acca8695c46b01e82a01c33b8451a0d942cb962c55c0e700af68b3d3f6efb7d0e311bd29c81248010101f4e557f11500f05be102ed7eb440acade536de51de544d4daf38a2f1bf5735ec5a78aab5d5b4117d00484d4dc5f0e1c3e1a137e0e0c18368f1c823ca683b471a8915b7deb8710357affd8a56c1ad61d0e961b55aa1d7eb2bcd416ab75f9933529beb8127fa31839ddd0816a5d6ebf5eaac43b6eca21d7a9dbe524f8ba54eb4ed1eb569132242bd7af5208b123c3c3c9c73951cafe6077d7c7cf0d0c3cdd4fd6a3fab35e48948051533de1913a2b2f4921b5835bc5c2fbe160caeb7c5a0ab281db4634c5cb7ab75f9030202204912bcbcbd5066b3422605509c461271020fc14185a90c12776addad95660c6cb52db1dcaab086626400909e9e8ea64d9b222828e8fe7f60ddc0aabec554976b5c49abbadcc072af3fc5499024671bcb0d2cf7fa43cb6ab5aad4e43bb14befc7f5ff01fb7b0f8bc9287ed90000000049454e44ae426082	image/png	0
9100	Herbes hautes sur espace enherbé	1	9000	94	1	\N	\N	\N	1
9200	Pied d'arbre enherbé	0	9000	108	2	\N	\N	\N	1
9300	Herbes éparses sur espace sablé	1	9000	108	3	\N	\N	\N	1
9400	Végétaux en mauvais état 	1	9000	94	4	\N	\N	\N	1
9500	Pelouse en mauvais état	1	9000	94	5	\N	\N	\N	1
9600	Arbre dangereux ou en mauvais état 	1	9000	94	6	\N	\N	\N	1
9700	Autre	1	9000	94	7	\N	\N	\N	1
10000	Problème d'animaux	1	\N	0	12	image?resource_type=image_type_signalement&#38;id=10000	\\x89504e470d0a1a0a0000000d49484452000000960000009608060000003c0171e2000000017352474200aece1ce900000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c180000000774494d4507dc06070e042f7e9c6eba000020004944415478daed7d79581467d6fda9aa6e16711d1395a537509155448d8218971115a3265144919899895b5c266ea8335f26938c598c4944fdcc6422684c4ca28268fc256e7149be8982a0a3515050078d208a26caaed27455dddf1fdd555437382193c4a879cff3f000bd5457579dbaef7dcf3def2d8e88080c0c3f317876081818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b1181818b11818b11818b17e8d9065d9e97f9bcdc60e8a031c11113b0cff1d88081cc7419665f03cbb4659c4fa09218aa24a2a5996218a223b282c62fdf868d5dcc759c4626836b194dfaed7a624492c62b188f5e32149929a6be9743a764058c4fa71642a2b2b434d4d8dfd40f2bc3a4b64d72a23d67f0d4110307ffe7c04050521393919151515d0ebf5ecc0dcefc472cd6d64590608ea8f4432c8316b83e67773a38992274992a4bec76ab50200f2f2f2307af468949494a0b2b2121f7cf0019e7cf249357a711c07226a52d722a246fa1723d6bd941c729cd3ec4bd591880022081c0fd166834ea773ca7d9a7b6295ed0982a0becfdddd1da228e2e0c183282c2c44515111f47a3d2a2a2a70f2e449cc9c39532521c7716a04d34a109224fd2a34af072262c9b20c22c2cc193310181888d8d8582c59b204fbf6ed732289cd6603cff3cd3ab14ad4d1929888a0d3e910131383c8c848dcba750b369b0d2d5ab4407d7d3d0e1d3a84f5ebd7abfba6442cd70be0d790833d10118be779489284d6ad5bc36ab5e29b6fbec1fbefadc71f67cd466666a6535e64b3d99a15b1645956b7ef3aa475efde1d313131b87dfb36eaebeb21cb325ab66c095114b162c50ad4d4d4a8114b922408820049927e35d14ab9f2ef6b88a2a8fe2dd9443a9c954dbede3e64f0f523b3d144fe660beddeb98b8888ac56eb0fdab62ccb4eff4b9244b22c93244974e1c2059a387122e9f57af2f2f2220f0f0ff2f4f4244f4f4ffaecb3cf48922475df6c369bfade5f0beeeba1509b03d96c36f08280be515118397224dc743a081c07499270eedc3900809b9bdb0f12305dcb334aa4e3791e66b3191b366cc0b56bd7b073e74eecd8b103cf3cf30c7ef39bdf60f6ecd93873e60c645956f33b6da4fa3508a8f7b5402a8a2288087abdde5e08e678c89284ab57af22263a5a1dca3edbb913c1212110257b5d8fe37970cd202ee72026c7712a318808922441a7d3a9b994f29c288a58bc7831b66fdf0eabd58a4f3ffd14919191eab6b4ef6539d63d2c500a82a0cebc78de4e2a5e1070e9d225f5449a4c2674ebd64d7d0dcff3207cffb5a49052100435e15608a29d616a93719ee7b17cf97204060682e3383cf7dc736aaea644bb5f8b327fcf128b349143193ad4e04a002f0880e3e4ab43942080641939393968d5aa15c0f318fdc413f688c2011ccf4322199c265e29da94eb70a7fd3c6d6159bb0f24d9b5330e9c7d9f381e2060cd3fdec5c3ed1fc2b93367f1fa6b4bd5d772e020d944402667cd4d33343e28ee887bf6f29164093a5e70caa3d4693b11c071205906a7950f8850545484152b56a05d9b36e0791e515151f6e8c6eb0022fbc9771088e77935e2293336d75c48d1c10441503f5f9224081c0f41a743614101aaaaaa909b9b0b5114f1edb7dfe2f2e5cb9065195e5e5e78fbedb7d1a3470fc48d180149142128d1ceb1ef20822008aabef6a044b47b36c72200b263b81345d1f980cb04f09c13013802befdf65bc4c6c6a2a6a606268301174b4a306edc38bcb57c39c041dd8e0c020f0e369b4d1dea14a2a9d14f896a0e3289361b8a8a8a70f1e2451c397204f9f9f93871e204eaeaeae0e1e181f6eddba34b972e6ade0700e7ce9d43555515244942bb76edd0b2654b949696c2cbcb0bd3a74fc7cc993321e8749064c9e9026af47d59c4fa69a11c686d44a9a8a8c017fb0f60e8f0613892938bc3870fe385bffe1520c24b2fbda49655a26362303d2c0c7ff9cb5f00006f2d5fae9e2cc92682d7eb9d6a7b5a11d5dddd1d24c9b872e50ad6af5f8facac2c141515c166b381e338c4c4c4c06c362321210166b3193d7bf6b4eb6a3cef1495b66ddd8ab973e7c26ab562ecd8b1d8bf7f3f388e83200878f3cd3771e5ca152c7dfd75a7eff9c044ad7b569f921b3423ad66b56ad52af2375b2828b01bbdf6caab64f433d0ebaf2d259289c243c3c8df6ca1818f0e20a39f819e9a9844ebd2d692c564a6f973e71149b2fd47a37fc9b2dca4be74a9b88422237a90d1cf409dfd03a85f5434ad4d4da3ab57caa8fcfa0d2299eef823d944f5b3fa4545934f276f9afbdc1caaa9aaa659336692bfd942d3a64c2593c148f3e6cc255996a9bebe9e8848fd7dbfe39e26962b2449a2f5ebd793d1cf405dfd03a8b3d9421693998c7e06aab8514e5fec3f402b5356507979391dc9c9a5d0e0101a313c8e5e59f232998d265a306f3e95965c2259949cc8a590579224f5ef7f179e218bc148fe46130d8ce94ffda3a2a98bc59f4cbe7ed4c5e24fd987b248acb7352294cd5aaffe2f8b1265666c21b3d144463f83fa9a97fefa22edddf339bdb7761d0558fc293333d3e93b6a45dffb15f7748ec5694a2b4ae27ce3c60d3cd2ab3724479985e7797082808d1b37a24fdfbe1025477e42407e5e1e468e1c8961c386e1ebafbfc6b56bd7e0e1e18163c78ec1ab554ba7999e3669afa8a8c0ef9f9a8413274ec0643281e7795cbe7c199e9e9e88888840c78e1dd1ba6d5b58ad567588f4f0f000c7711045118220409665848585818890969606abd58a77de79074f8e19e3f43da74e998223ff3a8a3d7bf6c0dbdbdb494a61c9fbcf442cd2ac7ed1aaded3a64cc517fbf7abe2a84d9270e0c001982d16101cd280e35b7df0fefb78f1c517111b1b8b2f0f1c50b7c3e975080a0ac2a04183f0d4534fe1e1871f5693f7a4a4241c3e78086e6e6e902409b1b1b1ea7eecdebd1b3a9d0e5dbb7543606020fcfdfd218a220c06032a2b2b515b5b0b00a8aeae465e5e1ece9f3f8ff2f272701c071f1f1ff4efdf1f03070ec4f0b838902ca3b6b6168f0e1c809e3d7b223535d529df63c4fa99a0b81194e2b15ea707c93256af5e8d552b56d8675f3c0f83c1807f7ef515c035c8085aed69e28444141414a0a2a2021cc761debc7930988c3878f0200e1d3a84ab57cab078f162cc9a350b1c80eee1e1b879f3263a75ea04a3d1888b2525b87efd3a22227b2031311103070f42bb366d9b25e0da6c367c7bf51afaf7ef8ffafa7a444644a0b0b0109e5e5e888b8bc3a4499370fefc79fcf18f7f446666261e79e411fb4c9483932c42006ca2dd06c43929712c79ffaf8acb4a622dcbb23d379289de7ae34deaea1f40fe46939a008bf5b6260bd34444bb77ee227fb38556a6aca07367cedaf31fc7c4a0a2a28256ad58499dfd03286d4d2a914cf4d4844432faf8d2908183c86230d2c4098974382bbba1084ddf5f4c9624896c36c73ec944e3c725904f276faa2eafa0d28bc5f4fe7beba97fbf18f2f3f1a5a4c489141a1c42517dfa12493289f5b64649bc4c4412c92413914dbaf773b07b765eab5861945c43966508bc5d59d7e9741045d1febc5e8f679f7d1682a376a7c814ca7b8908dededed0ebf5e8dab52bba74ed0a1081e3ed795bdbb66d316bd62c949696e2d5575fc5cd9b37919d9303373737d86c366c4a4f479f3e7d009e53a320d7ccfd57aa061c0153a64cc1b163c79077ea14bcbdbd71fdfa75a4a6a6e2d6ad5b983b772e6edebc89baba3a6464642061fc78089cb39e25da6c10f4f6bf05fe3ec8bfee75e6cbb2dc10812499acb7eb68d68c99f619a1c1488fc6f46f989939a0d863b4112371fc04ead6359056a6ac705cfe0d119064a28b17be51e5057fb385d2376db64b069a6d2bb346ad04f29f909c9c4c13264ca0c4c4449a90309e2c26b33a8bedec1f4053274fb14b1332d1df57bf4d463f03858786d1a9bcfc4691578ddcf749c4ba67b34435c976088aa228021c87f2f2727cf6d967e8d3a70f789ec7902143206b6a89b22cabf618a51c0322f4ead50ba22822373717a46cdb5152d9fec927183d7a34dcdcdcb07cf9729cbf700109e3c7dbeb881cd4a2b552f2694e725d5f5f0f83c18063c78ee1c68d1b68d5a635dab5ff0d860c8dc59ebd9fa3458b16888e8e062f08b0d6d561e6cc99d8bd7b370441c0c4891391b139dd1ea15dacd4a2cda696ba58c4fa09a2962ccb545f67a5a993a790bfd942b959d9e46f34d1c8118fd1e1ac6cbb46a431d3a9d1ca7199d756d7d088e1711413dd8f4826dab36b37ad4c594113272492c1d78f162f5c44d5d5d57734f869cd7acd32ecc944551595141a1a4a8989894444346cd8301a34681095969692d96ca6acacac4651b6bcbc9ce2e2e2c8df6ca1cd1b373519899940fa134039a14444dbb77d4201167f5afee65bb468fe027a24b227197cfdd4c7eea45a2b435ec6e67432198c643199a9b3d9422386c751ff7e31346dca54a7132849927a1295cf6e36a1d48dd895f78c8c0cf2f2f2a2e1c387d3a0df0ea60e9d3a52b7e020f2f4f4a43ffce10f8d084c4454535343a3478e2293c148a7f2f29d26263f6428660269d391d449b84c4f4fc79f162dc6f0e1c3e1e3e3830f1c8b166c9204373737d4d7d7e389314fe2d5575f458b162d2008024a4a4af0c9279fe0dc99b3b87efd3a8e1c398276eddae1e9a79f46427c3c7c0c06d52961af6ddb17650882a0da76388d55462ba87e6f7f06b217d1a7cf7816f9f9f9a8acacc4f96f2ea80b2f468e780c3b76ec406d6dad3ac9d06ebfbab20a23468c80d56ac5975f7e89566d5a3bf9e7ef7501f5ded5b16487b1ce51d80d0d0d458b162de0e9e989ab57afe2b9e79e43656525b66fdf8ef2f2720882009f4e9d50535383f8f87880e7b16edd3af03c8fdebd7bc3dddd1d51fda291949464f76a3593d05a4d4ad1945c4facf610ba92efc68d1bd0ebf568ddba353efcf0438c1a350a6ddbb66dd621c8cbcbc3a4499310161686f7df7fdfc93ea47ca24db4eb7b762e3bf69db37b335c67d5ca45f3ab2796e2b90280909010dcba750b43870ec59c3973101414045e1050555989a4a4249c3b770e0f3df4103a3efc3000e0445e1e828383919a9a8a8e1d3b42a7d737a8f24d90c9f571c57ca725942bee646fd12eff72777757ed394a69ea87f4d3cacece46525212e6ce9d8b3973e634125f155bb6423857626b571b29bfef862de7de25163518faa0dd451702902ca3a2a202e3c78f477171315e7bed35641f3a84dca34791959dadbe5714457002efb400d5c93cf83dc332c771aaf74a21466565254e9f3e8de3c78fab659dae5dbb223c3cbcd1ec564ba4e6104b4becd4d4542c5dba14e9e9e9e8d5ab97d39a47653bf5f5f5ea6c58eb2dd37e8ed56a85bbbb3b2be97cdf891645113ac17ee5ddacadc5c48913515c5c8ccaca4abcf1c61b4848486820a6a34ca23d015a8942153f350b279aca692449c2f1e3c7b16edd3a7cfef9e7aa7fca6ab5c2c3c3039224a155ab56183c7830929393d1a95327a7e8f0df468b458b1661cf9e3dd8bc79338283839b24a9f66251a2a6abfbf5ae1909ef8735835a5b8b6b9947550d65a28a1be5347ce830b298ccf4c5fe03ea6c50112195d72b33aba66679ae1e30ad572a373797c68f1f4f46a391faf5eb4729292974faf469f5f556ab950a0b0b29252585c2c2c2c86432d1e2c58be9d2a54b4efbff438f8124495455554523478ea4eeddbbd3c9932749144555525166accabebb7eafe2e262ba74e9d25d9d4ddeb3c47235f869e587a6bc4b0a79ce169e2193c1487e3ebe347dea34dabd731725254ea45d3b765245450515171737a991dd49a22049a66faf5ea3850b9229c0e24f517dfad2b6ccaddfbb00b5bab28a562c4fa1f0d0300a090aa6bd7b3e773604fe808a83722caaabab69f2e4c914111141070e1c703a06da7d916559f58a559657507868184d796632c9a24462bdcd7eac7ecd3a966be470123d5d9ecfcecea6c7e24690d968a298e87e3421613cf99b2dd4d93f80cc4693bd9c62b1507c7c7ca36db85ec9da8277ca5bcba95bd7400a0d0ea1ad5b32896472d295b451c5699f1ca42c38759a1e1f359acc46137db2759b7dbb52f3f430575d4ed9f6f2e5cbc9cfcf8fa64d9b46a5a5a54ed15bbd0865a2fc9379d4b3476483835613bd7fb53a96abfde54eda0d11a1a0a00023478e84c1d70fafbffe3aa2fbf5539ec49e3d7b70f6ec59701c879c23b9888a8ac2ac59b31a25d4e5e5e5b878f122fefdef7fa3acac0c6d5ab546666626ce9c39832953a660f6ecd9f0f2f2b22f3b73085cda5cc529ef73180de128425bad563cf1c413f8f6db6fb173e74ef8faf9e1fb2ad98ac75f3b8bd41e83b38567b064c9121c3e7c18bd7af5c2d4a953113b74a8bafae7fdf5eb919292829b376f42966504070763c78e1df6329622d0ddef3956a3abf90eaf71cda1eeb41d5114d521e57f57da3df0d17da3ecc34d13b699a6f23522a2aaaa2a4a5b934a2386c791d968a2009399021caabcbfd9428fc58da0fc93794eef738d9affe9fb68a348555515850687a891e34797b91c11f55f478ed2f87109643199c9df6ca1314f3ca916d38d7e061af8e80032198c64f4335066c696660fc5f7ed50d89c44529224753868443699e8a5bfbe48065f3f5ab13c450df34d25fcae44aba8a8a09494140a0f0fa7cefe01943c7f016dcbdc4a674e9da6c4710964311869c94b7fbbe3b0f14392606d7defd5975fa1f0d0b0660f85df87baba3af518151515d19a356be8edb7dfa6949414ba7aa58c66cd98490be6cd273f1f5f9af9ec0c7a2c6e0491243f5839d69d662c369b8dac56ab53b46a3219151b48f3d5575fd18484f11460f1a7850b92d5bc479b9368674c5a42ecddbb97c2c2c228242484562c4fa11bdf5d2792643a77e62c850687508fb070dab363a77a65dfaca9a5e2e26227c236a766a8ed4ca3606d6a1a998da69f266235b10f0a8965d94e1eb1de4605a74e5364440f0a0b09258bc9dcb000e44120567386b93b0d9baed166fefcf964b15828297122edf8f433daf7f95e5a94bc90222323a9b0b0f03f0ebdf3e6cd2383c140cf3efb2c95965c52c9b3253d83cc4613858584d2d9c233eae3e5d76f50dcb0e13475ead49fe4fbbfb9ec0db298cc3f19b19a22b9fa9866e5506579053d3b6d3af99b2d5471a3fcc1219676d6742739c175c8d3ca008a96949c9c4c66b399264c984093fff00cf572b81be2e2e2282d2d8d6a6a6a1abd4f9224aaa9a9a1a1438792c160a075ebd6a943a9cd5a4f5bb76492d1cf4023473c4695e515aafd46b11347847757b5aafafafa46d1f4fb34382d468e788cc68d8d57979ffd1c9a9fb26fbf7ffa7794be6933ad5ab1924ee79fa24bc525643199e983f5efdb97a83d48399642a6fa7afbda3bebed3a6797a6cb8f586fa3d3f9a768eb964c9a3a790a594c6632198c64369a28297122a5ad49a5b2b232a7a9b9eb49afacaca411234650b76edda8a8a8c829f9dfbc7113f99b2d347ae428aaa8a870bae253de5a4e5d023ad3d1dc233f4954d9b56b17998d26da96b9f5278b584d9157b9b016252f248bc94c5d023ad35ffff202914c342c762825254ebc2b11ebae78de6fdfbe0d4f4f4f750aadd7eb0182fd37c7e16a59194a4b4b5151518153a74ea1b0b010972f5f466161a12a0bf4eedd1b4f3ffd34a2a3a3d1af5f3f787ab5706a2fa4b465e40501a2a3a188288a78e38d37909f9f8f2fbffc120101016a49e77056369e7ffe79040606e2a38d1fa365cb96ea74bef4ca65ac5ebd1ab22c232d2d0d11913d54594129fcfe90b2d3b56bd7b070e142848787e3f1c71fff696a714d149b15e5e8e6cd9b387dfa34c68c1903a3d188b56bd7c26834c26432e1e4c99377452eba2bc4f2f4f4041161cd9a35f8eaabaf200802aa2a2a71eedc39f5264756ab155e5e5ee8d0a1030c06036263633175ea5498cd6644f4e8e1e49b0235340569ca9920f07647c2fefdfbb169d3262c5bb60c010101aa6db9a0a000d3a64d83afaf2f323232e0e1e9a95aa09516dec1c1c1387dfa346263631b2cce80535fd1e69cf8dada5afbb2328ec3dffffe77b5d51227fc38573801aaa626ca8e4e398eae545535d5888f8fc7a4499320e87478cee18a28282880b7b7b7dddeeca6bfff89a5087ea7f34fe1eb63c7d1a2450bfcee77bf43424202020303a173d3a343870e30994c8d2af2440449969c5a426a2386229e2a114531e6ddacaac6fffce9cf18326408e213c6d94f04cfa3a6aa1a8b172483e338a4a6a6a265ab569049d6089b04a39f01214141c8cbcb437474b4ddc2e3f0c813004eb0f7d972f53d9124ab0224c9f6a622d3a74f07c771c83e948556ad5bdbad3b4283f3c0e66819ae6d91a45e200e03a0ab0bc35534d67ae06d361b0cbe7e78fa99df8387b3605b5656060f0f8fbbd374e46e169349267aa4576f0ab0f8d3bfcf9e6b34f5d5ce1e15b9409224daba752b454545517e7e7eb393d7f7d7ae23a39f81f2f3f3d535799224d18ce9cf92c560a47d9fef6dc8ef5c260ba228d2ef929e2293c148498913ed9284923339d6f63595a6a87d1b24998ee4e4524478771a163b94aa2babd45e0e0a0a0b0be9d0a1436a6e68b55a9b9ce169650e57cfbb53635f49a2bababa3b4e90aa2bab28c0e24f6b53d31e9c1c4b35cb81c3430f3d84010306202020c01e0114939ae0bcfa4510046cdbb60dcb972f47595919468d1a05a3d1a8967b146b88926729116dcb962dd8b061030af34fa17bf7eef6f7386e2ab06fdf3eecdab50b0b172cc090214350505080091326e0a38d1f233c3c5c8d008220e0d8b163100401595959a8afaf6f888e4a9b22c7d02ccb322449825ea7874eaf4765450556af5e8db4b434c4c5c5e1c5175fc4e1c38771e2c4091c3ff135b2b3b31b0da38220a04b972e08090951fbd4fbf8f8c0cdcd0d44a4461d6d735e65e856f699e779b8bbbb3b4542edfac63569a9f0f4f4c4a851a39cd38afb7d28e4791e62bd0de1e1e1d8b46913c68c1983b66ddb222727073b76ec40bb76edf08f35efc266b3e1c30f3fc4c68d1b51545484fefdfb23353515212121ea30c0f3f6968c1cc741acb741a7d7a3f07401fefce73fe3f8f1e3080d0d05711c929292d0ba556b48b2849b376f6251f24244444460e6ecd9a8adadc5f4e9d3d5a4567b010040fa962d58ba7429ae5fbf8e8e1d3b421625f03a013a9daec184c70be0391ebcce7e416cc9c8c03befbc83929212f8f9f9e1d6ad5b88898901c771f8cd43edd1af5f3fac5ab50a9d3a75721ade2a2b2b51505080afbffe1a9f7cf2095e79e515f8fbfb63c0800118356a1422222254339f5eaf5709452e7778558e8d2ccb4ee9424141013efcf0432c5cbc08eddbb7ffd94975d78c7eca55f5edd56be8dbb7af3a3b540ec0b061c3d0a74f1f5cb87001db3ffd7fa8adadc5e8d1a3b160c102f8fafa3ab91fd5645d6e7097ae5ab50a2b57ae84afaf2fc2c2c2b07fff7ef4e819898ccde9ea419c3e6d1ab2b2b2b077ef5e74f2f1c6a2e485f8f4d34f3170e040a4ae4d6bec7527c06434e285175ec094a9531b7298fa7a087a1d788e47d9952b3874e810f6eedd8b43870ed917415457c3cdcd0d3ccf23242404a3478fc688918fa9df431b715c734985245f7cf10576edda8563c78ee1fcf9f3f0f6f646cf9e3dd1bb776fc4c4c4203030b0c982bdf25b1445f0e0c00b020a0a0b101f1f8f51a34661d9b26577ed469dbabb15ad2449c2975f7e09599651505080fc932721e8f5282a2ac2f6eddbf1c20b2fa07dfbf69894f414121313e1edeba31e005996554bad72f0259b888b172f62fefcf9c8cbcb435c5c1c8a8b8bb173e74ecc9b370f93a74eb1cf1c65424e7636be3c7000cfbff0027cfc7c4144080b0b437a7a3ae2e2e29cdca3ea4907879d3b77c262b1a8dfe3524909fef5af7fe1c89123c83e7408df7cf30ddc1d328a321c77e9d205bf7fe60f183a2416dedede20ced937df945ca124f0cab11a3c7830860c19029bcd8673e7cee1e8d1a3c8cacac2ead5abf1d24b2f41a7d3a177cf5e080d0d459b366d10141484b66ddbaa43a612d176efde8d8f3efa088f3ff904962d5be674fc7eee8e367725622907735be6562c5ab408afbffe3aae959521333313174b4af0e8a38f62e4c891189790609f8a739c538f51e58a1645117abd1e972f5fc6bbeffc03ebd7af47cf9e3d3160c0006cdab4091d3b76c4b265cb10121a0a9923708e8ec643060d82979717b66ddf0e41af83284bd8f0defb78f5d557111818884f777cd6d83e2ce8505d55857dfbf621272707595959282d2d859b9b9b3dc77310499665b468d91263c78e454242028242821b0d518a8e474a5e4632384293b620d788e21a492f5ebc88a3478fa2b4e4124e9c3881efbefb0e67cf9e55a37f6d6d2d5ab468015996e1e7e787f9f3e763d4a851200e6a947c60229672850e1e3c18bd7bf7c6a2458bd0ba654b0c1d3a149b366d42fb871f565fc3719c7d758ee68093e3e64857ae5cc1ead5ab919999093f1f5fd56ff4b7bffd0db1b1b1484949b14fe91d3a11c70199195bf0cd37dfe0e38f3f567b830abc003f3f3fb46cd9525dd7a7e430a228223d3d1d5bd233d413161c1c0c777777980c06d4d5d5e1bbefbe43dbb66d317cf870fcf6b7bf45ecf0e1aac4d0944fdec3c3a391c6c5dfc167e5ba92464b02599661369b61369b556943e96d2f3b6ecc595656065114e1e7e7073f3fbf867c8ad388b69a8ed4f7b5dca0f5a6bfb7761d458477a79aaaea46e59cad5b32e9484eae53b30e9264ca3d9ca336d5e817154d199bd38964a2e766ff91022cfef4da2baf36585ce48655c8fbf77c4e91e1dd69eae429ced370b23f3f29e9295ab13c85249b4847738fd0dce7e6a88e53b3d144fdfbc5d0d021b114d8a52b594c668a89ee474b5efa1beddfbb8f18eea55aa14da4c4f1136851f24227421dfce75794387e02197cfdec5d5e1c8f1fceca56bde6fda2a2edd66049a6ba5bb76958ec50ea12d0597d4cd1906451a22ba59769ceacd9643118a9b3d942df9cbfe0642d911d249745894a2e16d3c4098976a39fc55fed176a321829ba6f144d9b3295d6fce35dba5074dea986c9700f10cb6ab5aa85675f6f1fcad89c4eb22851d9e52b94103f8e022cfe347e5c027d7dec38d55455d396f40c1a3e7418f99b2dd4bb672fda96b9558d62bb77eea2e06e41d43d2c9c0a4f17507d9d553de125178b69f1c2451460f1a7d06e6a12057a000005144944415441d4c5e24f0be6cd57c9e0e4b09064fadf95aba8b37f00594c661a37369e56ad58495bb764524ef661ba7df396fa994e11f42e393019b17ec07078242797fccd162a3c5d400b1724934f276f1af8e800caccd8423b3efd8ce63e3787fccd160a0d0ea1fff9d39f29ebe02175685b9b9a46e3c6c693c564a619d39f552d2e24131dcd3d428b921792d1cf403d7b44d29bcbdea0f7d6ae238bc9ece4bb5286e4ebd7afd333cf3c4366b399162c58409595958d9c114df6a67231ee31dc03c4922489de7ae34d32198c1419d183c243c32863733a6dcbdc4afda2a2a9b37f0025254e54f3a7af8f1da70f3fd840539e994cc1dd82a84b40678a8ce841ebd2d6922c4a545d594599195b68d08081e4d3c99bc24242e99db7ffae122e26ba1f2d5eb8a861b993835cd5d5d5347cf870ead1a307a5a7a737b20fbbae8c69aeff8ae11728e928d3e58e1d3b82e33874e8d0017ffad39ff0fcf3cfe3f2e5cb888a8ac2942953505c5c8c8c8c0c2c5ebcd8a9d5a24ea743545414962c59020f0f0fbcfcf2cbc8c8c8c0eddbb7d1b76f5fcc9e3d1b63c68e85cda14ce71c3e8cab57af62f4e8d1ea6de4449b0df5f5f5881f3316df7df71d3efcf82384848480889c4a25caec54291bb94ecfb5ab67187e611d4b99e6569657a8777f876369ba52d372777747505010828282101c1c8cecec6c1c3d7a14a22862fefcf968d5aa15b66ddb86ecec6cb469d3064f8e1d8bc99327a343870ed0bbb939f579983e7d3a2e9614e3f3cf3f57db725f2a29c18c193370f5ea557cfcf1c7e812d8b5513f056d6dcdd5ef74279d89e117eedda0dca8b2ecca15646565a1cc71872cbd5e8f5ebd7aa9b5c0ddbb7763e9d2a5a8a9a941972e5d60341a919b9b8bf2f2720c1830004f3cf1049e8c8f6ff06529eabc43cfb95c5a8afefdfb63d99b6f60dcb87190450967ce9c41626222388ec3c68d1bd1ad5b37f03aa19108a9edd6e2dae7e041b871d20349acc64c7331ee0118356a14f2f3f3eda50fc7dd502d160b1e7ffc718c1933462d16df715822606d5a1ade79e71dfcdffffd1f5ab769839bb5b5f86dec10d4d5d5e1e38f3f464848c80371e7877b1dbfdc25c8736a4b6da50ef848df3e68d3ae2d1e7ef861444444a067cf9ee8d6addb1d7b50694965bf27a1800d1b3660f0e0c168dda60d2acacbf1f4d34fe3f6eddbd8b871a31a1519a9ee4e62fd8b436bb0d37684f94f2b5eb4cf2b06c1c2d305643218ed0b2064a28913122922bcbb9341f07e6a10cb66853f22a1274d63346d2ea3bd878e6bbd4cdb125b6bed7df7dd776132991019198997972cc1c18307b17af56a848686aaefd5f6c662f81907a45f9258daa2ab323c69ef32aaccd2b4b337e5efbaba3ab5c0ad3809fef9cf7f62c89021c8cdcdc5860d1b3067ce1cc4c5c5a9dbd39298e101cdb1b4d37aadef4a795c5919e3fabcf21aa57b9e42c48c8c0c545555213e3e1eb367cf46444404162427377cd11fb87c8be13e259696144a6f4f570d4971456a3ddedab6885a7bcafefdfbe1eded8d2fbef802858585c8c9c9b17f8e2882d735b44ad4ebf54c8b7a9087425e1060b5d58300b87b78d8db4901200e9048769af929ae48456f721d426d361b0e1e3c88b0b030a4a5a52129290946c5c7aef134c9b27d991723d583ac63fde8240d6a93b1fcbc3c8c1d3b162d5bb684288ac8cece46cbd6add8d9fd55ea583ffa92702c1c95245802fc619344d4d55b91929282162dbdd8996511ebbf87b6cc72e6cc1974ead4a9d9777d6060c46a12da7eedaeb72471ede5cef02b4ade7f2c14e290e67e7eca6f46aa5f1eff1fc51b72cd821687c70000000049454e44ae426082	image/png	0
10100	Signalement d'un animal mort	1	10000	108	1	\N	\N	\N	1
10200	Présence d'Insectes (essaim)	1	10000	108	2	\N	\N	\N	1
10300	Présence de rongeurs	1	10000	1506	3	\N	\N	\N	1
10400	Signalement d'un animal errant	1	10000	108	4	\N	\N	\N	1
10500	Malpropreté : Déjection, crotte de chien	1	10000	108	5	\N	\N	\N	1
10600	Malpropreté : Fiente d'oiseau	1	10000	108	5	\N	\N	\N	1
10602	...sur abris bus, mobilier publicitaire, sanisette	1	3600	1488	7		\N		1
10603	... sur station velib	1	3600	1489	8		\N		1
10604	...sur mobilier spécifique : RATP, EDF...	1	3600	174	10		\N		1
10605	..sur abris bus, mobilier publicitaire, sanisette	1	3700	1488	6		\N		2
10606	...sur station Vélib	1	3700	1489	7		\N		2
10608	..sur corbeille à déchets et mobilier urbain	1	3700	108	8		\N		2
10609	Grosse flaque d'eau	1	7400	108	3		\N		2
10610	Borne de taxis	1	7000	1475	6		\N		1
10611	Du vert près de chez moi	0	\N	0	1	image?resource_type=image_type_signalement&#38;id=10611	\\x89504e470d0a1a0a0000000d4948445200000096000000960802000000b363e6b50000001974455874536f6674776172650041646f626520496d616765526561647971c9653c0000036869545874584d4c3a636f6d2e61646f62652e786d7000000000003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520352e332d633031312036362e3134353636312c20323031322f30322f30362d31343a35363a32372020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a73745265663d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f73547970652f5265736f75726365526566232220786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d704d4d3a4f726967696e616c446f63756d656e7449443d22786d702e6469643a34383436314334343533323036383131383038334230324436434643424145372220786d704d4d3a446f63756d656e7449443d22786d702e6469643a46393144354638334644444431314533384533414436323645343637393630322220786d704d4d3a496e7374616e636549443d22786d702e6969643a46393144354638324644444431314533384533414436323645343637393630322220786d703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f702043533620284d6163696e746f736829223e203c786d704d4d3a4465726976656446726f6d2073745265663a696e7374616e636549443d22786d702e6969643a3438343631433434353332303638313138303833423032443643464342414537222073745265663a646f63756d656e7449443d22786d702e6469643a3438343631433434353332303638313138303833423032443643464342414537222f3e203c2f7264663a4465736372697074696f6e3e203c2f7264663a5244463e203c2f783a786d706d6574613e203c3f787061636b657420656e643d2272223f3eabb3ae8100002cd44944415478daec5d075c9555ff7fe6dd933be0b2f712050117a2383235cddc232ded35df9c99992d2b5b8e4acbf26d69db99e6d6728b980a22385199b2e785bbd733ffe7829901a2f87780ddafcf87cff5b9e73cf79ce77b7eeb4c986559c885f60cc4f50a5c14bae0a2d00517852e0a5d7051e8828b42175c1436830b172f9c3973c645617bc595ab57de79ff5d14c35c14b64b984ca6e7a6fe07e7e29d63625c14b64bbcf9d69b69a9a9cf3d33e55f620be147ac8f74dbf6ed63c78e89e8d421fd641a8fcb7349613b834ea7fb78c5472c07193b7edcbf84bf478dc25fb76c3e5b7a49a4128f1935da1554b44514979468b5da5b8aa05ef7cba6b51c29a7574262a87fb08bc2b688353fac89eb1affc3cf3f59add6a6dfa69d3e7daee4024bb3c3870e4710c445615bc4fc975e1e3f7efcd4a9ff99f0cc84d319e98dbeddb97b27aee0f2215ecfae09d0bf0a6c7bc3cfeb7e41b9b8bba7c7ca559fdfb809e432222e52de473d68dc10a3d9c4fe9bd0fe14ceb3139fd9b469a3b6ba66de2bf366cc9e01027967774cf695527d254bb2b1519dc542d1bf4a08dba5cd183d7cd4aa55ab7019f7e7a31b9e9e38d16834161797d05c9a32d351611da07f19da6b2fe2f417a66766666ec9de7dc294367ffe7c99428e0931312d0c0c08fcb751d88e7b67aa6baa7bf6eb45f481f4a975cc553bdc8117c4f3dfb57ebb8f97f79d3f84a2a80d1b36180c863973e6b814e983865aa59e3763ae2ead56f998879d4b31164aa5542a148a3bcc6eb3d976efde9d9090306ddab4acac2c972d7c484671f4688d5dc9386879a292b6d2ee6e6a018f7fdb5c0441ecdeb37be4a891c3860d2b2c2c5cb162c5575f7de5b2850f074aa572c413c3bfcbfcc5ad97da5662138b24b7cd929a9eb6f2f395878f276b4baa7af7ee0df88b8f8f7779a4f7062445b5baf40892949444143b101cc584a84aad6c21b183702c59ba64ccf3e30e941d71c08e1933a66fdbb6adbdf3d7b628dc7978f7f8ff4c389072d86cb5dc79aee0e0604f819a34122cc5caa4b25b25bb9c7365c498511ffff1191d874015ccdbf316aefa62d59d1b4e178577561406d9ba63fbb0c9c3474d18bdfbe05e3be1b8935cdedede019a0042474028cc81f066d3ecddfffb93239f3ceb9625899123a9d49aa5df2e983b1f455157687f8f21c2f9323f37bf1782cf73af8c7e7edc84291333af9cbf6d2e3e9f1f111eeea8b0223082c070d3046b7efc6ef2cce798a7b89808e327639b7ffc75d48891aede99fb028e80473b28188595491efed3838f9b4e3d35faa95fb6aebb6dc6a8a828b29260188684e8465fadf8f2b379ef2d50ccf1246b1d8a13a2ad9bb62474ebf18885f66d8842854a89d20865a4191bc51171fd26066343f8d366bdf0e18a252df73f0073c827b910cb9aace69bef7fbcead3851fbfedf746b0e992d1fd8c74f3a65fa3221fc1eeb7361454f87a78497021e3a02084433968c444abba7bf254820fbf580c24ec9d056fdd2a6348708818125a595b5d5ded8d9b5f7df7cd7b1fbd17f856b8e15c9d2a5db4fed7f5a1a1a1d0a3883624854281502c96914612ae1fb06569863410a24069e09c88c52b977ebfe1c75b76d3a8d56e1205433175daba863b3b7edfb5f0ed855e33fc2db966710a77f3e6cde1e1e1d0238a3644218662014181641d015f771519a03f290b250e92f94d0d5df8e6c233e7329acd087ccb001f3f86608d16e7c0d3d9acf32fcc982e9da0a6ac14b3cbb676eddab0b030e8d145dbea60f3f3f625758e46868f3413ea786fb62bfae1e20f098a6cde8eca152cc9902c5967d0bd387b0edc13e72838353f957dfdf997f1b1716daa8ea084bb0eedadaca97a34298cec1041681d40fc40c1580626b404c43ae71530041532327a5fe6a17dc70f349b51a690b3245b55573373ceac8b8eabf2aeca8a5f8adf7df9eda14f0c6d5315fc23f9c0c8a7478d786af8badfd63f82ee0c40786838a92781f2c40418cbd2e63c0347c5851188b413728d4a33d8f7d3e5cb07260ee0e29cc614ca6480eccc1367ce89ce06cc0babda5336a2c793735f9adbf02d4dd33575dab2f232abd96a71582d160bb8c3e172c45c21082ba50ab9b7c64b2a96dcd7aad909c7e2cf967cb6ea73f930b5c758bf5dbfef9ef3fceca61569f71406fa07ca3812d2e8c02438903eda4601a1042c320c4558edbe7d434eef3d9c7a3e2d29be57e3009fc76780e984198f517eb6124b90d577c58a15f9c5d7f6ecdf93919a915b906730eb6dac834619063c18662018f84b104ac33009610c0e827e8d8757784868d7eedd7a764bf0f7f1bbb77d3780bf975e7bf9a79d6bbda7fa4b3bb8598a8d97bfb95cababf5546b1e350ae51259887fc8b5ea52818f101022e920af395ae135da8f8521da460bd5627167b775ebd737a590a628048555833d795e82e2557949831366bf3c77dff1fd88172e0816491f5748ddbdd4623ec6c3110ed2603e807e862118c4309495242d8ef2125d56fedeb51f6fc2f470425cc2c489130724f557c8dcee49bd162d7defa75d6b03668471145cda426222dcc2d8caaa2bda25850d413adc5c4f985398b8bcf8b8f8cb19b9b2581824c5655c47a58d7130300f880f4393b447a2cf9feb8f19cc46e93fc7950c3a3dd753a07a5c53b6a9c85e66feedc436d5008fc045915c191f01669504161501ff68868208ccd9110743f52560512e86f171ae92270c90a97b795a4c666b85e9dce5ace40f66c4ac8e9a3d6bf6984123ff9fb3527fdebceed3af5606cf8d02fcb12405e108cac151015a555dd12edd99d2d2d2cacaca5b960641e2e3e31d6556ca46428c53958a2365bab41a96a1199a0641823c58594dd6a59c3ede28a356abe507084813419c358b641240115147e8b3b4babc1aa35667b59a6c36107118cd6683d9a2b7dacc56bbc5e6b082bfe02bb3c960d4e9f4d55a7051b45d102052f7f5140489fe3c78fcecb973ffcffae616e5bff1ea1bde6302f99e02c64143080c54345006308adcab292f0f5a0a737272381c8e46734b05d231324acc88089d83ef8eb1140d7ccbfc959715891a2082b483e028f8900f7af2d4c927fb0db93957757535c79ba34dae9e3b7deed4ff3e9f713e233925392df5744e491e2366797e3cbebf88abe1e3320ce5a224e3809d4dd7d92bcec22ce09b757e00cf671ca576e3b9524ba6212e2c667df2f7bde27bfd3f45f0c3a51f5afd488f581569b5c3180c42268e0f172803d6c1c8e5f27649617979b9d56aedd5abd7ad12f87bfbc584479f2fbbccf710b23484096081afd09855a7ece44139289c606411caf399e78154a2c8758f832088dce27c4649490bf9cf7ef26c80b71fb8460f1909dc4e70ff4c46466adaa9f3e7cf571cafd0425607d7812bb89814438518b08b409d3224439948a296606b583756d233b2cba4cf270d1d3098f3ff7617934fa5ecd9b35733d39fa1281885683beda822440130ada35112f5547ab64b0a81c6cbcfcf0786ed56ad5b221227f64a38b929551a2d8718842158657f8ff22d45ca680f908bb212623f69716a4949792920fb8664d7d8ebacf996a1dd87870685dcdc6b131e100aae49a32700ad55507c2d2f2fef5a5121882e2ab595da5a2d61204032105da8ddd5deb13e6121a1b19d3b07fb05dd939a5234b5e1d78d70142e7497100e2b84c335872a3443bd610cb36bedc071934aa4ed92428bd59279eeaccd66130a8537dfd719f417ae5eec16d395c7e5f6ef3760d5375f923a0297f18151e42af90817b5969bc45e72d24e72e582524b5e6e61fe0d0ad3d2d27488012b82c72c187babdf05da32c82f105c7f77fa502445d1c0cfc1310cc7f07b6f32f272f7edffc36d8c1af861c0e811350e9666511e1746595bb9a943509844746f22d107de3bc342d9d957adb6c64b930e1d3eb4e88345805af0b96ba7b8b8a85853961ee1c22c0d3376ca7db057e5c15267470d03615c84149185c5d76ee44d39711ce6c241f280c4849e775e10401b9fc713f0f8f7833f80d4b3a7755c236876344502d35bb5a74491a806fc395780e45bbb75ef86dfa3dd1c1e3485c097d1d5e92a9a38a5c09b4ffff3b4c168a8773390a9cf3faf4faba3cc248c2134c172d53ce09392660270882038df539475e95243c6a2a2a2ccbc73e0bdf4ea9e88e338d43600443c39f988305482d68743c03ba3ad34a80582a384c1612b342776ef79af7eeb415388737096612f5ebcd838a897c9098bfd4a7e76c37f870e78a2575c62edf11ad4392d94a56cb4fa714d4d6a79bdefc8f235bcecdc9c8671890b172f9452558c85eed92bf13e9579efdebde9e98dd7c2011feaecd9b3cdae74043059cca733ce08fc452034727a0029958a5eee4099c3386ccad707bb05740c8b6aaf1472043c105403ebd538a8e7f3719c733eebfa64190e862f5bb68c3e67335e31a0421093b38800a5599a241d0c4d093cc4d97939b506e7e8e099336730258a91288846ee4781abaaaa5e7ae9a51d3b7634babf6eddba279e78a2a4a4a4f9f0b7b2bc545b21504b41380bc140735a241da530e28c050d677483060c562b54ed9542894482ba7152d3531bdd17894480c5d327fea636be43e7651f2dabd8526c2bb3a00294255949b45477556bb7593019b7ca56535e520674d4f99c4ba8047397bbabd5eafb51e063c78e013fb67bf7ee37dfbc72e5ca2bafbc121f1fefebebdb6cae82dc7c480471451cd0f8acd72cd26899d3a1c2116ba589cd259e1c3af41eae437ed014ba49e5429528b7a200bc977f2852b91c5078f1ec05eaa609c12f3cf3fc6b2f2d285b57e8a8b6227c144660cc0da5080ae642b88273f1f225603b4b8de5308a78bb69ee642a7e6b0122cb7dfbf66118d6a953a71b3741bb59b8702150a16fbcf1062873f38ad46e467828c2c5580636e71adc129ccd0be3a3b57f6a7b76eed93da6db3d2ce403a75026972ae484843e79eae4cdf7954a2510d0c282c2462b54de9abf70d6e499a53f15d84ac14b41301187a168e014f0fc046999694693a9d6540b5aba482869b95d839601ec536b4b5b5c5c0c2804fcb9b9fddddfbd65cb96eddbb78f1b37ae8599e07aa30ec19db60f62195c86a3420ce361d62ab3e9b86ef68bb3f07bbab3d883a6d0d3cb538649f87e8223c9476fbe2f93c9dcbd3c582e74e29fd4f238dc65ef2e79ebe5374b7f28d09fd3231c1838ac2c4b8b4225a969a9b575b5044db13423958a6fd5750e907e3163ece409d9d7725b5bda8c8c8c8a8a0aa0456f44b13a9d0e8820686d53a74e05def52dc36d0cbbde030a43a26089b36b948f956f2f193ee8c90109fdefed2b7dd0147a7b792b38328e8a7bf6d2b99b772001f18097a717c7939f9696da34807bebe5853fadf9114e76546c2fa5ec048c43223f71b9b9eae8a9640443c17b12099aa790a2a92f7efcb27fdffe59d997bcdc5b37b2035c8f03879c93043ac646df10f1afbefa2a3f3ffff1c71fefddbb770b79a562196d07ee17034c2047c9c725784d6a05bf0079ffddf75b686aed83421445234222208aadc0b5a9a9ff60cbd7db1795a259f9576b6b6b9b667c7ac4f8ddbbf6c4723b5d5b95ab3d598d8a704194f883cf9798191350563c2eafe9abb1d8ac2f2f9cfffaf2857038e7b1c707b4d609d41b0cfb8e1ce448f891e1110d77f2f2f3bef9e61bd0da5e7ef9e596f3baabdd193349d92850284c88da4acc359bcb3efee4e3202fff7bfe4a1fc2dc99b8d858b29cc4c2f0a347ffa14ba33a748069b8c45e7ee1c2856633c64474dcb965fb578bffa73823c9ff2c8ba628434e2de5a010ac995a982de679afbffce381752173a340821ef13d6e748bdf21ce5d385751531e1611e6ede9d52094abd7ac292d2d1d33664c8f1eb799121e1e122643a5e64a3d2c82ed75b6c23539735e98336ed8d8fbf13e1f0285093d13d02a88efc34f4e3b76f3d86154c728cc811112323333f35679f95cde7fc64fdebd6de7a2296f79542a9c13a51816c61092246e1e7e039f172f59bc76ffa6c01961a4cd21aee577ead8b1b5e5dc7fe80022c2828343bceb577e9fbf707ef59ad55c2e178413b7cdeba5d60cec37d094afb3ebccc56bf2668c9ffee1ebef6128f6885018111e11e4e6c712503e527afaf4e91bf743434235020f5c86659ecf04de7c4b06d5c36bde7fe7fe79f0f8a7ab573abb3f50a7cebc39c1fa8d1b3efde98bc0e7c33029d794ad0f0d0c09f40e68ad213c76fc182ac22243c31adc96cf577d61a8d34f9a34293a3aba858c20e4d01bf45575d52121c1bae33539ef5f121b053e7e3e1bb66ddab16fd7e98cf482c26b0d1baddc2b3c9cb9334f3c36f88b73df4862a5bf6dddfae4934f3698311e8fd7392a7abfeee8f992cb405ff9f9f9dda69740281e9434f083ef97215c14bc14f0ee1ae62c65e7e6bcfac66b3e9382b91e7cca445872ccf1bde3447c61ab4a9875e5724e791eca4523c29c86f0f889e39b366c04a1c5f3cf3f7fabe825bfa0203d23fdcfd327cf5e3a9b7329475b5e059a17c75b6056da177df73ea8216563682b294325915ee1ddbb74030e51e7b858b552d52e291c366cd8f24d9fcb7a28ff38b83f3b3bfbc66cf9de3d12f7aedf5746555cbd7af5b6143a9b3c49c30884093073a5b9814292245f7b6501190dc9a2dd08939db4515039dd33a1576b4b987c2cd9212015b822aabedfee83a58bed34f1ece867e3e29a99587cf9ea95efd6ac39987eb4982d6349c65a607197299e9f3ffdcfc3c7abdd6a3dc7fb0263ccd2108cc220a8a50c746155d5c5abbf7cbefdeb8eee91c3873df5cca4499e2a4d7b52a4006161613dfcba10b504d289fbd34f3fddb8df33a1276c84503992da24b468bed31cc761060621bfd9666458678ff28edd3bf75f38ea31c49bb0d86104b5159bdd798a9e5d5abd20edc4c9131c25c743acec14d571f36f5b92cfa4a83c5593274f6e341852555dfdc6c237874e7a6a6dfe66adbf9eb131811cbf4f3f5c9e723065f5475f6d5cbf3198f62ffeaec05a6475ce0db0508c03e248b9f24eee81633a84ce8fa98cd57fb86159bf810356af5b43de62a27a1ba510589789139ed6fda99577576cdcb90984cf0df781e445a8c3110e7a3ce384dd6ebf7de981974921080729d7d750146d77d8bff9e66bc520774c88b3140ca1b0f1a2212131d14ddaba592aa565a559d7ae80603c26341a58e58f577e82cab0c7921e4b4848b829e4d07fb9faebde4f247d93f683bd13455613be851eab5e5c716ccf9117ff3b2bc82f10588798f08ebbb6ec1cd775b4f687f2aabd158e2a3b43011619bbde6cd1813647ba45a983a777b0f6a45e7a7fc1d8694f6717e6b61b0a01faf7efef6ff58468d6ec4f7efbedb70d37854261525c22a8e485a2ac1bbcb6002e8fc74705081fd119eb689a3a96f6e79992f3b21837c60e641326f4766bb671ece871ad2d5be6b9b3e570356b63929292be5db3fa8a211727f0975ebc3e379c20889d3b770e1f3f6ae12f8b8c917650858002afe5ff5992bcffc8946727379a4ee1ae50affefcebcdeb36f55324d8b719ca37166b4f56598b4c84deea30da6d463369b7039deffb42d0a1aca3fdfaf7dbbe7f57fbb085001e1e1ee3478dfbe4f0ff54833dd6adde3065ca147f7f7fd072bb77ebfe75caf7a4803d79ea6440c06ddc482ece9172440e8c65045041d1b50387f6f33a0938623e6920502e62bca88bf48fe8ddadd5e38869a7d2500d0655b3c7b24e1e3cb01f93e1c3bb0fe91adbc56923539257ae5c79b4e4243f4c80d0a84791e2bfe35f1d376edccd9da84d3120b13fb8d2324e1f3f75222d2df5dcd10b65ba22880f2102a0461086641907c56138befe7ec08f6b3714028c9f30fefbb53fc2186408b2ae5ebd7ac9922550fd925d392c376b2c478e1d9df8f4c4db2a64b9405e01d5e16acefee40329a927443d64c065805988b290fad3356fbdf40abf959b74030d792a239513cca94dadfab9e0474937392f9ffbdedbef9696957db8f4c31d2776c31d715e001fbdc4be3472c6b469d35a9850d908dde2ba82cb3ad55653535367d41594e46bab6a81a2c639b8c6d333d0db5fad522bdd14ed89427f3fff09a3c67db9e77bcd48cddae5eb9e7efae9a8a828209d0152df6c6541dad974600e41a4d1b23b231589cbec5a4c857ff4f9279488f15507331606e6a0ba5355c102ff512346b5b654206e3b5f9ea51aaca9862b441da4a800ed1dde7dcfde3d2bbefdcc12e4e026f26da7cdfd027a2f5aff4e870e77b3ec5bc0e7fbf9fafa41be20826a2b7121f0e6ab6bb52683c16c31eb0d0687d54e01a30d3b179f002f9f2f12c86572004f8da6e944a3193366acedbb81b2327402f6d1471fad5dbb1668244fb97b2eb7b09ad6666666deec41340520d8d35d734e9bcdf3e157e415487ba8500e02c2727b8dd57854b77ce592bb88ba929393210f481828087a2d82b650f94b2eef470f1caa4b711ba466afdaddcfc85e9dbf78ecd8b1509bc15d52683019332f9cbd78f162765e76614151b5beca6cb1d860c24c9b68846561675f178238236d94c1f80c4f82093c141e9161913d137b26f54e52b95ddfa60968a179335f7c7bf307feb343b62dda3d7cebd651a346797b7bd3da93ac377cead4a99629044dc4c7db87c8b6b9f5503b077484188c23a4912cdb543861d098918386b7b65e0449ecdab35b1c23054f13074b2d574da28e32794f054bb2b6c38617064e99f5f5ac3bd79c6d94c23f920feedab5232525a596d6d9e524df5bc00be6f11442be5229e6723db980370c9868c8b9eec43985900622495084c17aadbcf25cce955f3ed8a466a449097d264f9dd235261e58f3a953a702e1abcb367a3ee7fffac237060f1e1c18104817528200e1c5bfa6a9b5001f5f1ffb113b26c35039c739d9de4a16ff94d72fa2f78a8f977339dcd6d6ee6a4ef699bcb301134318074b5b697eb0c87baa7fe59612ff5aafa54bbe18306000d4f6d06a0a3ffa68595a7ebaeff3412a95372a0231195a3f380d040e8721a7f0d110453b473a9dcb879c5ba371308e8823548814211e501244da297d7ef5f694dfd78ffeb55fd7a4050b5e4d8cebb164e99291b3c6052f8928eb50bb68d1a2ce9d3b435696a3e15e3b770d58fb9697fa013f16d1c1c0271245488d57f4b622dba8a4a73e5fb6522212dfc5ebd8b26933379c8f2b39ac834504505d4655ed86aa67063ebd6ccb52015f70f33088c562311a8d56bb4d6731545656eab53a87d5c6504cbdfa4138429ed25d15e0eba77253012785cfe3b5210a972d5936fc99118c83e6c870524f32cede1104c6286badc976cd6ace36d94b2c20b0e3a8783c0d8febcee76904a24029c6c541222073e052466a3c627ccd958673fbaf0c193bf4e927272c98377fdad0291bb66ff39ae4b77ef1e6f4f4745482e362dc425aeaeaea54aa96ec99c643a3c15494891286898445f83baf2f7a61e2b4bb7b17469371eb9eedf2110a105302855cbeb354992559f1d98f43060c2aab282f2e2caaa8aabc5674adb0a418a0d6a0adb5e86d849d8009022621018bf24115ebe36c86a51d0c6da26823e329f5e81c1ed32fa9ef534f3ea551b9df0f0aef6657e09fb6ad9d3d67b6fb341f71a48c36d34ee1034a13419d3b556010a089a871982f1b4d970ca62b7ab2da06a3083f58220a9348a2e5d2280552bfbe0fe773702e475f585bbc2d379c088c4be8f2cbfab59a79fe2cc5e4be7549dac54d33d117fac1bef3976dc1412d9d1be27038468c1a99d3ad18bc74cf3f9507b7ff71d7cb594060b3e0db3783de0d67ed50f18fd774fb2afa3ef158c78e1d2f669dafa9d356db6b1d1c0a5322a0758adc6542b5582413a35c1c681f16a19dbda0080bb8a7199a60ec144932244d18ecb672abadd46ecad207e3be6fbcf2e698a7463d7c29049832f2198bc1f2fa5baf932349790f85738117084e4134c64030307e088bc950792f955b92537a1c350ed36583e992beee5475f5ae62548c49e2158a24b5305c0c5b58cc9d173023a4fccfeab39b7e248a2c25df15447c12e53ec6db516e6549c6b927d7ed76b8e472b951911dcee65e560df6c8db9c7ff6f2856ed177b33fa5c964faf9e79f1583dd111e56fa6ba1f19c4ed8d9ed22e76ab6ee1a2786cb570abddd82b91201870bac3d563fb2c2d2044d13144d53ce55130e9665585060e700260b814f2c0d21382e0953484311ca48e41d2b8068b64d28d206cc7a6ebaa7c673c12baf146715b80fd1f0bd85ce7d29ec0c43b130106cf0da11127c00061197a26e094ab74410b1c28416d069345f36147e998bf210d5502f452f15901e651f35df4778ed8b5ccb395df9e672cd486f539691ac22f94039f16f3fb5b04b972edf7fba161b8d59c4d60be7cfdf1d85dbb76f3f67ba1cd239527742cb71e3442c8fe6ba7340d3a4ad8c3dd761c8acab282c01da05e138fd5e4c88a1020c016c820f7c0c133857ed3aeff01054005c39e0c7392512c0985d57bdb73c5c10b2eac06fdd62bab415457a0379c5055f7cb56ac3f68d50282eefe126f417821a3204b0046cfdc623f53fd0d00b0b346dc327d8b9cac8e9be6b1de61c03594b4ae3e5a005a042843250f99f5eb55e35862ced28f015e94f693dd2dc0eed3bd0680d54b3bdd27d06f6e3cd9719cf1afa9912d6ac5edddac5153535358f0d1c6019c9b0144dae357b047ae6d8f2ddfa28c4516e08838282392732395f16441a28d26007812c6375aacafa0aa2803918833121079360ce4bc401e4d9abacda93d57496e3b9a727bf3af7158ffb6308a17bb243fe89ccd4751bd66eddbed5ae2025317251b898abe23b670b3288d34373eee1c4c07ffdd03f7ecd49e5f5594be03e26c6181b99ff7136d04ec16f463a4aedf65f8cbb366f8f89befd61a020d64ef33c2f8a94d2df980eef39ece5d9bad5976fbef9e637e93ff8cd0cce7d23eb9bf7bfecdbbbcfd6eddbbedff0434e6d81244a2e8992f2ddf910889468986da891737b8dfa1ac0d7070b0085804b08855882b1969a0d6775a60bfae1039f9a356d7aef1ebda0fb897b73c801b0e145a5c5bf1ffe63db6fdbce675fa4c50cc78fc7f713703d78b80c77365214b4530c4618e72ffe25a0ce1804fefb1368e908177554d8f2165f96c4cb7da60495fd5c98c8e9b27efd7a8140d07201366edc38e3f37981af85642fbab4e3b3cd03fab722803b72f4c8d049c3833f8eac3bae8d280c3cf0c7fe866655ababdb9f7c103cf954c62942caf0fc05023f0147c9030aa341f81a9239150ea83f70c36b1cb6128b3dd726b2e38ff57dfcb967a6f4e8d29dc7e542f719f7fe9c0aa05d4fa69e4a4b4dbb7ce572555da599b659112b0d7c6e6183f1409dcba3eb673a032e41e581e2656c146d63181b4d9b1921241030bcf22bc51e2f060081ce5f72f5cd67162c5cb8b0e51f05b1474c42ac78be1a58b2f18ae19faef8f40e4b5b5159d17fc063f6e130cf8357b1b4f0e0defdf1d18dc7e5f38a0a0e1e3d949a7a2aeb5296d6526763ed36c40e736118059a0602f18300e2f319ae42e8161616d6af5fbf81fd07f87878430f0af7f7a891e2f2928af28ab2caf28a9272bbc35e6dd2d66ab576ab83a228c01f30f8c0b9c3705cae7453cbd5228c2f53ba011de8e9ed75f2eca9d9f35e0c7a2f82d212159f16fdfad386418306b5fc5b3366ccd8451e9046cbd91f6ce97fa689eee0e42610084e7e76f2493cd3639467c17bd9cbe62e9ef5c28c96bc568bb9a0b0a0a6ba06048866a3892629a05d4412b1a746a356ab030302c58287715cd4833fe9cbb9830cedec7773f6863b8d4af378fdad374471f2b8ddbd7de784060605e5e4e6b4fcd863c78e89a2e49dd6751745c90e271fb96d311c8463f64b73a4898a8e1bba8bbb2966ce9c4992647b3c39aded1e7e67b15a860e1daa1eebd3edd063aae15ee03388e25b486f30187af64e0c59d6d17d92ffcc9766b7fc70d07ae6bfbe4014ef16f96dbc3449f5ecb3cfb6fc7017857789dcbcdce0b050ffd722e27eef05241258c496d37ffae9a7caa7bc42974747c645e94d865b253399cdb35f9c23eaaa007c0b6315d3a64db3d96cedf7fcc2b67e04e5fe830714feea88ffc5775adb5d16a4dcb469530b892f5dbae4dbd13fe2eb58b778f7adbbb6379b0698e7514f8f95f656f9cd0f1787b92df968693bd59fed864280959fafe4f88b62b62600a151797ba4a7a7b7a01e814af47931d4735ae0f3d3a6354d7030e5485c62bcdb208dfbd37e7e9d8236b6d8205c14de4bcc9a354bdc4319bf3fc97b566874740c88046e9572ebd6ad6ef1ead0e5311dba742a2d2f6bb859a3d5eef863d79849e3a5212ab7c19e921eaac7870cbe70e9e2a371106cfb38bfd064328d1d3b365374c9e785a0a2ffe5f542baae5bb7aed978df6c36273dd647ff84a3f640d5b2673f888d8fddbe73c7aebd3b8b883251a404c4a0580e3b63dc7f17bcba80c7e5418f04dacd119425a5a503070f34f7a35403d539ef5c99d97fea92254b9a1d0d5eba74e98a13ff13868a1d1b74a48465fd51b71e4a848f6af75774e6747cefed77131313a14708ede914d13f4f9d183d6e8c64969aefcfcb7bebeaf297978270be69b2a2a2a22e03bac9677ad226121372042142d32583f6878ab91367ce9d3bf75eed3fd886d0d6343bf00fad56e7f6d9e06f535f71d3965f859e92c8d5f1115fc5093cc4bb76ed6af621c0a9d1fc27a0cb91a4d8df7b811843e6adf86dc7d647f550f4b6228539f9b9991999572f5fb976ed9acea8a728928b73a512a9979757404040484888bfbf7fc35aa76f577f3bffa3d7033f0cb716581c3f18766cd916d7e4188343870e8d983736f0ed0888618b3ec85d3ce7bd59d367428f281e3e85e5d515abbefcdfce3f769622957c7f81c043c491f06014a6099a3213f63aaba3d28ed4215e98aa63484760c6860d7f6aeddab51ffdbac2ffad50edd12ad1617cd7ce9d8d2667e8f5fa814307e987db895a2224c3fbf7df7fc730cc45e1fd11be6bb9a3c68e2e42cbbc27fb89bc645c2e1f4339188221ce7938cedd7a5988a649da61b19bab8d7597ab8c993a4fbb3a2aaae3e1c387495f26f4eda89275d73a56856cdcb851a9fcc711a2efbcf3ce9aa275c24081778aeaf081438fcc69854df1908f1ae1f3f99131918c9171d4100c4e5b49a3beaeba4e5b5d57576dd4d5190d7a93d16827ac101792f8cbfc868445bcde19fa0f3f853a69c56d96745dd1ea7cef497e999cac993367366c847903ddbb77b75d36f3038457b57977b85ab19d027df7dd771fe2cf4b459231c3467b79789dfc2ea52cab94e723e428b9f5031924cd3a2f8a21488a20490741d81d762b4511980495c6baa9fb7b59afd96a0f954118e23d2520fd8ff4928cc2810307de90360441fed8b6978dc5cdb526b951dcb76f5f1785f71131919d060c1ea8cbad4dfef608c3b2027f3e2ac4091d61ce3519cee96a8f57d51eabd61eaa3464d4496264308ec218547bb20acaa2df7dfbdd9cbd970d98c96b9ccfd1b5c98c96ecd3a74fc333c562f1c13f0e95f3abf87ec2bae49a9123463c32b17cdb8d0b299afa2379dfe20f965cacbda21ce02e8d9763621462e0fad30eeaa7aa020389d19481aada51865f80be59b37a68efc129c753c64e1e2f9be3ce5173f3175d5df9da27d3a65d9f0afcda6baffd52b1d97d98a6f4bd6bdbbfdadcc29eee2e29bc47661941c20243278c9de029f7bcbafb62f1e12273899971300cc5300e9a3212b6126b5d8ab67673755755dccf3ffcd2abb373c50c88346442e9fa651b5583dd4551d26d8b7f8b8ee804821067874e49c9be3f0f2afa2af5393a3fd4bb67cf9e2e297c70b0138e23278e1e493972f1ecc5724395d961c1115425568605843d396ce8d0c78634da4cf0c5f92ffd94ba3ef4bd0e75c7aae94db6df366ceed2a5cbb19463e3e74ed2bce7af3ba1ed7035e8d70dbfde763ea38bc27b0f9bdd5e515d61341a311c73577ba8e4cd2f82359a4d8f3ffe7871448dcf14dff25fcb0447901d5bb7f9f8f8c4f4e8cc9be7066a59fd71c9f11dc98fe45994481b2f1f9fc70bf40d88898a8e0aeb702bfea0fad32d56ae5c6939a8339cd56b46690c9d6d73e6cc01e17ca87f88adc4c2d3f01d722a3de38c2b2e6cd3e8deb5db8bd366576c2ea52c8ce738af0ce6e2f2e5cb2342231ca57644800843c5c752525c14b675cc7861ba2fe1a13ba94504a8e778df2f377e9b969e662f71ee2b220c159d4c3fd9f47c0c17856d0b9e6acdf419336bf754917534df4f8025f14e9c3a692d3193469aef2f2c319665e7e6b8286ceb7876ecc420be9f3ead8e8558b75e4a5ccd272a6dcef3cadc70d8036b7ab8828bc23607b1503c7df674edbe0ada40636e1ce50077da40dacbec080f1504f03333325d14b6038c7d6aac0652e9536b219255f4518a62e5ce23af1896ef2fbe7425ebae77ab7351f8e02097c89e7d6e4add092d514360124ee0bc50499494d2933c4f5ea5beb2a4acd445613bc0c86123e02ad65664a5ad94f3740b19c6900c2ec7cdb8edcae52b2e0adb01027d037a774db4e499182b435be986158d804b5ac15ccdbefa8855b63dcd60bb158c06fde17dbb8f271fb978e162757575adce60b63957c0412c4b327fd70ec79c7b7bf170cc4d265629951a8da6736c7ccfde7d7af4ea2d164b5c143e04e45cb9f4d1fb6f1f3a925c5aa3e7a1885480c878889083f039b000877184859d3b7c4148fd42624025cd40b4f364418882701bc95a08566f677416d24ad061fede4f3cf1c48bf35ff5f50f7051f880c87b76fca8f44b39ee22cc5b82ba8b11c019747d2b061881d9864d1ad8fa1358a19b4f208161888131208f7f9d590192033acb0d64918e2cd73b12bb44ffb076536048a88bc2fb0b01075708e0684f5cd864638bfa9d42aeefc1d0b02015fae72132ce7d19501c45b186fbf55bc55d4f6125a18c126b959134db09973b737fc1c5117f3754d8dcc624f52b7d9c02584f4f33ad136e487323fd4d69043814a2e2e2683b7b27ed92427f6f8ddeca34d21f37d681ffb5640b98bf5b9d70c55e67ba09ea2c84b746e9a2f0be232e36b6cece40ff5c4dd09c385edfef07fee76637f5891b2bd806e8ac746464a48bc2fb8e1e89bd8014b6d2e6df4cef2d2baeb35271f15d5c14de770c1d31d64a32442b77a5bb89c5bf95307c9330827b7a1b9dd8bbaf8bc2fb0e774f2f090fafb3dd85ffdd62178183067c76ed99e4a2f041c0c7536db035a34bd9dbd0f4971e0566926d468b2a2502ac955bf0b928bc4b748e89d1d999bbcede70c0532300fb1ae0e7d3ee5e457ba5b067af5b7b34cdc70bb7d2ad7fdb429d8dead4a9a38bc2078481434698088662d8e618bcbd74c2cdbba374d71e3d5d143e200484840ab9a8ce7e0b7963e13be5ef2fd714b406939d4aea3fd045e18383b7bb5267bddb0ede26fd36408bf271342834dc45e18343a78e517a5beb29ac8febe126aa546f613c94d2f6f81eda31853d7b25e96ccc5d496033c403290c0d0e7251f840f1f8e0274130deac4773abe0d0399a88a0ced1441869eacbc436774eaf8bc2fb88884e31c07a191cadd1a5373307378eeb1312fbb8287cd0f054cb9bf568e05b88e0ad9e63251907c5f46e87ee68bba7b06387489dedae9cd21b1d6cf5bc022d2a17f22432998bc2078d6e3d12f4774561a3f145bd95f2f650b6d397d0be291c3474b8d1debc43d32a0043181919e1a2f0212026be1b8e22fa267d3477c8e98de81028d22eddbabb287c38d028a5867fea52e7fe262d76b035021062839deaddf73117850f071d22c3eb6c746ba5f0ba775affd768a7610889ed9ae0a2f0e1a06bf71e3a6b536f055c7063cefe11142237220f6008d53201da6eb74a6cf7143e36708891a09a4c60fb878bd34244e874476d8cbfaf4ffb7d03ed9ec21ebdfb2230d2a88f86bd29b8ff4b6722b70af38114464747bb287c680064b8cb458da243f82634db23daf0c50d77b47b7bdedbeb51585f18191ea2b333d709fb4bc260088560b42979ce3a5f3fcfd4998c6260b383eaf7f81017850f13ddba2700492268085c24033b3f38ffb2d73f37b94816211886a09d070f9b59be58c0f3f60b68c77ae81158227a64dfdefe8387de75f6e888d07397b35d14bae052a42eb8287451e8828b42175c14ba7077f83f010600a4d6392cf45f3f220000000049454e44ae426082	image/png	0
10612	Mur végétalisé	0	10611	185	1	image?resource_type=image_type_signalement&#38;id=10612	\N		1
10613	Jardinière en pleine terre	0	10611	185	2	image?resource_type=image_type_signalement&#38;id=10613	\N		1
10614	Végétalisation d'un pied d'arbre	0	10611	185	3	image?resource_type=image_type_signalement&#38;id=10614	\N		1
10615	Plantation d’arbre	0	10611	185	4	image?resource_type=image_type_signalement&#38;id=10615	\N		1
10616	Pot ou bac à fleurs	0	10611	185	5	image?resource_type=image_type_signalement&#38;id=10616	\N		1
10617	Autre proposition	0	10611	185	6	image?resource_type=image_type_signalement&#38;id=10617	\N		1
10618	...sur mobilier spécifique : La Poste	1	3600	1490	2		\N		1
10623	Boîte aux lettres - La Poste - dégradée	1	7000	1490	4		\N		1
\.


--
-- Data for Name: export_unittree_unit; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY export_unittree_unit (id_unit, id_parent, label, description, profondeur) FROM stdin;
\.


--
-- Data for Name: formengine_formengine_parameter; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY formengine_formengine_parameter (parameter_key, parameter_value) FROM stdin;
\.


--
-- Data for Name: formengine_group_notice; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY formengine_group_notice (id_group_notice, title, id_form, is_enabled, workgroup_key) FROM stdin;
\.


--
-- Data for Name: formengine_id_generator; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY formengine_id_generator (id_form, current_transaction_id) FROM stdin;
\.


--
-- Data for Name: formengine_notice; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY formengine_notice (id_notice, title, message, workgroup_key, date_debut, date_fin, id_diffusion, is_enabled, id_notification, notice_order, id_notice_group) FROM stdin;
\.


--
-- Data for Name: formengine_signalement_right_column; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY formengine_signalement_right_column (id_right_column, content) FROM stdin;
\.


--
-- Data for Name: formengine_stylesheet; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY formengine_stylesheet (id_stylesheet, description, file_name, form, xsl_mode) FROM stdin;
\.


--
-- Data for Name: import_sector; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY import_sector (id_sector, name, number_sector, geom) FROM stdin;
\.


--
-- Data for Name: mylutece_attribute; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY mylutece_attribute (id_attribute, type_class_name, title, help_message, is_mandatory, is_shown_in_search, attribute_position, plugin_name, anonymize) FROM stdin;
\.


--
-- Data for Name: mylutece_attribute_field; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY mylutece_attribute_field (id_field, id_attribute, title, default_value, is_default_value, height, width, max_size_enter, is_multiple, field_position) FROM stdin;
\.


--
-- Data for Name: mylutece_connections_log; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY mylutece_connections_log (ip_address, date_login, login_status) FROM stdin;
\.


--
-- Data for Name: mylutece_user_anonymize_field; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY mylutece_user_anonymize_field (field_name, anonymize) FROM stdin;
\.


--
-- Data for Name: mylutece_user_field; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY mylutece_user_field (id_user_field, id_user, id_attribute, id_field, user_field_value) FROM stdin;
\.


--
-- Data for Name: profile_action; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_action (id_action, name_key, description_key, action_url, icon_url, action_permission) FROM stdin;
1	profiles.action.modify_profile.name	profiles.action.modify_profile.description	jsp/admin/plugins/profiles/ModifyProfile.jsp	fa fa-edit	MODIFY_PROFILE
2	profiles.action.delete_profile.name	profiles.action.delete_profile.description	jsp/admin/plugins/profiles/RemoveProfile.jsp	fa fa-trash	DELETE_DELETE
3	profiles.action.manage_users_assignment.name	profiles.action.manage_users_assignment.description	jsp/admin/plugins/profiles/AssignUsersProfile.jsp	fa fa-user	MANAGE_USERS_ASSIGNMENT
4	profiles.action.manage_rights_assignment.name	profiles.action.manage_rights_assignment.description	jsp/admin/plugins/profiles/AssignRightsProfile.jsp	fa fa-lock	MANAGE_RIGHTS_ASSIGNMENT
5	profiles.action.manage_roles_assignment.name	profiles.action.manage_roles_assignment.description	jsp/admin/plugins/profiles/AssignRolesProfile.jsp	fa fa-th-list	MANAGE_ROLES_ASSIGNMENT
6	profiles.action.manage_workgroups_assignment.name	profiles.action.manage_workgroups_assignment.description	jsp/admin/plugins/profiles/AssignWorkgroupsProfile.jsp	fa fa-group	MANAGE_WORKGROUPS_ASSIGNMENT
7	profiles.action.manage_view_assignment.name	profiles.action.manage_view_assignment.description	jsp/admin/plugins/profiles/AssignViewProfile.jsp	fa fa-eye	MANAGE_VIEW_ASSIGNMENT
\.


--
-- Data for Name: profile_profile; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_profile (profile_key, profile_description) FROM stdin;
ADMIN	Administrateur
\.


--
-- Data for Name: profile_right; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_right (profile_key, id_right) FROM stdin;
ADMIN	CORE_ADMIN_SITE
ADMIN	CORE_SEARCH_MANAGEMENT
ADMIN	CORE_DASHBOARD_MANAGEMENT
ADMIN	CORE_RIGHT_MANAGEMENT
ADMIN	UNITS_MANAGEMENT
ADMIN	CORE_MODES_MANAGEMENT
ADMIN	CORE_LEVEL_RIGHT_MANAGEMENT
ADMIN	PROFILES_MANAGEMENT
ADMIN	CORE_PROPERTIES_MANAGEMENT
ADMIN	CORE_RBAC_MANAGEMENT
ADMIN	CORE_ROLES_MANAGEMENT
ADMIN	SIGNALEMENT_MANAGEMENT
ADMIN	CORE_STYLES_MANAGEMENT
ADMIN	CORE_USERS_MANAGEMENT
ADMIN	PROFILES_VIEWS_MANAGEMENT
ADMIN	WORKFLOW_MANAGEMENT
ADMIN	REFERENTIEL_MANAGEMENT_SIGNALEMENT
ADMIN	CORE_WORKGROUPS_MANAGEMENT
ADMIN	CORE_MAILINGLISTS_MANAGEMENT
ADMIN	CORE_LINK_SERVICE_MANAGEMENT
ADMIN	SIGNALEMENT_DASHBOARD
\.


--
-- Data for Name: profile_role; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_role (profile_key, role_key) FROM stdin;
ADMIN	profiles_manager
ADMIN	profiles_views_manager
ADMIN	super_admin
ADMIN	unittree_management
ADMIN	ADMIN_Projet
\.


--
-- Data for Name: profile_user; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_user (profile_key, id_user) FROM stdin;
ADMIN	1
\.


--
-- Data for Name: profile_view; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_view (view_key, view_description) FROM stdin;
\.


--
-- Data for Name: profile_view_action; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_view_action (id_action, name_key, description_key, action_url, icon_url, action_permission) FROM stdin;
1	profiles.action.modify_view.name	profiles.action.modify_view.description	jsp/admin/plugins/profiles/ModifyView.jsp	fa fa-edit	MODIFY_VIEW
2	profiles.action.delete_view.name	profiles.action.delete_view.description	jsp/admin/plugins/profiles/RemoveView.jsp	fa fa-trash	DELETE_VIEW
3	profiles.action.manage_views_assignment.name	profiles.action.manage_views_assignment.description	jsp/admin/plugins/profiles/AssignProfilesView.jsp	fa fa-hand-o-right	MANAGE_PROFILES_ASSIGNMENT
4	profiles.action.manage_dashboards.name	profiles.action.manage_dashboards.description	jsp/admin/plugins/profiles/ManageDashboards.jsp	fa fa-wrench	MANAGE_DASHBOARDS
\.


--
-- Data for Name: profile_view_dashboard; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_view_dashboard (view_key, dashboard_name, dashboard_column, dashboard_order) FROM stdin;
\.


--
-- Data for Name: profile_view_profile; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_view_profile (view_key, profile_key) FROM stdin;
\.


--
-- Data for Name: profile_workgroup; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY profile_workgroup (profile_key, workgroup_key) FROM stdin;
\.


--
-- Name: seq_observation_rejet_signalement; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_observation_rejet_signalement', 1, false);


--
-- Name: seq_signalement_adresse_id_adresse; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_adresse_id_adresse', 1, false);


--
-- Name: seq_signalement_dashboard_period_id; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_dashboard_period_id', 19, true);


--
-- Name: seq_signalement_domaine_fonctionnel; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_domaine_fonctionnel', 1, false);


--
-- Name: seq_signalement_numero_signalement; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_numero_signalement', 10, true);


--
-- Name: seq_signalement_observation_rejet_id_observation_rejet; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_observation_rejet_id_observation_rejet', 1, false);


--
-- Name: seq_signalement_photo_id_photo; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_photo_id_photo', 1, false);


--
-- Name: seq_signalement_priorite_id_priorite; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_priorite_id_priorite', 4, true);


--
-- Name: seq_signalement_signalement_id_signalement; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_signalement_id_signalement', 1, false);


--
-- Name: seq_signalement_signaleur_id_signaleur; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_signaleur_id_signaleur', 1, false);


--
-- Name: seq_signalement_suivi_id; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_suivi_id', 1, false);


--
-- Name: seq_signalement_type_signalement_id_type_signalement; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_type_signalement_id_type_signalement', 1, false);


--
-- Name: seq_signalement_workflow_notifuser_multi_contents_config; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_signalement_workflow_notifuser_multi_contents_config', 1, false);


--
-- Name: seq_sira_user_id; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_sira_user_id', 1, false);


--
-- Name: seq_workflow_action; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_workflow_action', 87, true);


--
-- Name: seq_workflow_icon; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_workflow_icon', 19, true);


--
-- Name: seq_workflow_resource_history; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_workflow_resource_history', 1, false);


--
-- Name: seq_workflow_state; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_workflow_state', 23, true);


--
-- Name: seq_workflow_task; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_workflow_task', 1, false);


--
-- Name: seq_workflow_workflow; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('seq_workflow_workflow', 3, true);


--
-- Data for Name: signalement_adresse; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_adresse (id_adresse, adresse, precision_localisation, fk_id_signalement, geom) FROM stdin;
\.


--
-- Data for Name: signalement_arrondissement; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_arrondissement (id_arrondissement, numero_arrondissement, actif, geom) FROM stdin;
\.


--
-- Data for Name: signalement_conseil_quartier; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_conseil_quartier (id_consqrt, numero_consqrt, surface, nom_consqrt, numero_arrondissement, geom) FROM stdin;
\.


--
-- Name: signalement_conseil_quartier_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('signalement_conseil_quartier_gid_seq', 1, false);


--
-- Name: signalement_conseil_quartier_id_consqrt_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('signalement_conseil_quartier_id_consqrt_seq', 1, false);


--
-- Data for Name: signalement_dashboard_period; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_dashboard_period (id_period, libelle, lower_bound, higher_bound, unit, category, ordre) FROM stdin;
10	Mois courant	-1	\N	MONTHS	\N	0
11	3 derniers mois	-3	\N	MONTHS	\N	1
12	6 derniers mois	-6	\N	MONTHS	\N	2
13	10 jours et +	\N	-11	DAYS	other	0
14	- de 10 jours	-10	-3	DAYS	other	1
15	- de 48 h	-2	\N	DAYS	other	2
17	- de 10 jours de retard	-10	0	DAYS	planned	1
18	Retard de 10 jours et +	\N	-11	DAYS	planned	0
16	- de 8 jours avant la date programmée	0	8	DAYS	planned	2
\.


--
-- Data for Name: signalement_dashboard_user_preferences; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_dashboard_user_preferences (fk_id_user, fk_id_state) FROM stdin;
\.


--
-- Data for Name: signalement_domaine_arrondissement; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_domaine_arrondissement (fk_id_domaine_fonctionnel, fk_id_arrondissement) FROM stdin;
\.


--
-- Data for Name: signalement_domaine_conseil_quartier; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_domaine_conseil_quartier (fk_id_domaine_fonctionnel, fk_id_quartier) FROM stdin;
\.


--
-- Data for Name: signalement_domaine_fonctionnel; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_domaine_fonctionnel (id_domaine_fonctionnel, libelle, actif) FROM stdin;
\.


--
-- Data for Name: signalement_domaine_type_signalement; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_domaine_type_signalement (fk_id_domaine_fonctionnel, fk_id_type_signalement) FROM stdin;
\.


--
-- Data for Name: signalement_domaine_unit; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_domaine_unit (fk_id_domaine_fonctionnel, fk_id_unit) FROM stdin;
\.


--
-- Data for Name: signalement_message_creation; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_message_creation (id_message, contenu) FROM stdin;
1	<p>Bonjour,<br />Votre message a bien été enregistré.<br />Nous vous remercions de votre participation.<br />Vous pourrez suivre l'avancement de sa prise en compte via le lien suivant :<br />${lien_consultation}<br />Pour information, vous ne recevrez pas d'autre e-mail sur ce sujet, conservez bien cet e-mail et/ou l'adresse web ci-dessus pour suivre l'avancement de votre message.<br /><br />La Ville de Paris<br />Les services de la Mairie en charge de l'espace public</p>
\.


--
-- Name: signalement_numero_signalemen_id_signalement_numero_signale_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres_app
--

SELECT pg_catalog.setval('signalement_numero_signalemen_id_signalement_numero_signale_seq', 1, false);


--
-- Data for Name: signalement_numero_signalement; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_numero_signalement (id_signalement_numero_signalement, mois, annee, numero) FROM stdin;
6	F	2018	93
3	C	2018	53
5	E	2018	101
4	D	2018	17
2	B	2018	45
1	A	2018	75
7	G	2018	48
8	H	2018	5
9	I	2018	3
\.


--
-- Data for Name: signalement_observation_rejet; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_observation_rejet (id_observation_rejet, libelle, actif, ordre) FROM stdin;
\.


--
-- Data for Name: signalement_observation_rejet_signalement; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_observation_rejet_signalement (id_observation_rejet_signalement, fk_id_signalement, fk_id_observation_rejet, observation_rejet_comment) FROM stdin;
\.


--
-- Data for Name: signalement_photo; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_photo (id_photo, image_url, image_content, image_thumbnail, image_mime_type, fk_id_signalement, vue_photo, date_photo) FROM stdin;
\.


--
-- Data for Name: signalement_priorite; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_priorite (id_priorite, libelle, ordre_priorite) FROM stdin;
1	Dangereux	\N
3	Peu genant	\N
2	Genant	\N
\.


--
-- Data for Name: signalement_requalification; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_requalification (id_signalement, id_type_signalement, adresse, id_sector, date_requalification, id_task, id_history) FROM stdin;
\.


--
-- Data for Name: signalement_signalement; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_signalement (id_signalement, suivi, date_creation, date_prevue_traitement, commentaire, annee, mois, numero, prefix, fk_id_priorite, fk_id_arrondissement, fk_id_type_signalement, fk_id_sector, heure_creation, is_doublon, token, service_fait_date_passage, felicitations, date_mise_surveillance, date_rejet, courriel_destinataire, courriel_expediteur, courriel_date, is_send_ws) FROM stdin;
\.


--
-- Data for Name: signalement_signaleur; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_signaleur (id_signaleur, mail, fk_id_signalement, id_telephone, guid) FROM stdin;
\.


--
-- Data for Name: signalement_suivi; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_suivi (id_suivi, fk_id_signalement, fk_user_guid) FROM stdin;
\.


--
-- Data for Name: signalement_type_signalement; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_type_signalement (id_type_signalement, libelle, actif, fk_id_type_signalement, fk_id_unit, ordre, image_url, image_content, image_mime_type) FROM stdin;
1000	Objets abandonnés 	1	\N	0	2	image?resource_type=image_type_signalement&#38;id=1000	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2269736f2d383835392d31223f3e0d0a3c212d2d2047656e657261746f723a2041646f626520496c6c7573747261746f722031392e312e302c20535647204578706f727420506c75672d496e202e205356472056657273696f6e3a20362e3030204275696c6420302920202d2d3e0d0a3c7376672076657273696f6e3d22312e31222069643d2253686170655f312220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220d0a092076696577426f783d22302030203530342e393132203238312e35333722207374796c653d22656e61626c652d6261636b67726f756e643a6e657720302030203530342e393132203238312e3533373b2220786d6c3a73706163653d227072657365727665223e0d0a3c673e0d0a093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3333382e3130372c3230382e303439632d302e3530372d342e3334312d312e3031352d382e3638312d312e3532322d31332e30323263302e3033342d302e3536342c302e3038342d312e3132382c302e312d312e3639330d0a090963302e3138332d362e3533342d302e3033362d31332e3130392c302e36322d31392e35393563312e3536352d31352e3436352c362e3133312d32392e3939362c31342e3839362d34332e30303263362e3038392d392e3033362c31332e3733382d31362e3334352c32332e3837322d32302e3730350d0a090963322e3737332d312e3139332c352e3732312d312e3937392c382e3538392d322e3935326331362e3637382d312e39352c33332e3335352d332e3839392c35302e3033332d352e38343963312e3836392c302e3138382c332e3734372c302e3331342c352e3630362c302e3537340d0a09096331322e3132352c312e3639392c32322e3138332c372e3531332c33302e3836392c31352e3835326331342e3034332c31332e3438332c32322e3237332c33302e32342c32372e3036362c34382e38363563302e3832362c332e3230392c312e3436372c362e3436352c322e3139342c392e3639390d0a090963302e3439342c342e3232372c302e3938382c382e3435332c312e3438322c31322e3638632d302e3033342c302e3536342d302e30392c312e3132392d302e3039382c312e363933632d302e3037342c352e3530332c302e3136312c31312e30332d302e3236342c31362e3530360d0a0909632d312e3233312c31352e3833382d352e3431332c33302e3832332d31342e3030342c34342e333437632d362e3638362c31302e3532342d31352e3337322c31382e3830352d32372e3139372c32332e333832632d312e3830342c302e3639382d332e3635362c312e3236392d352e3438372c312e3839390d0a0909632d31362e3536332c312e3933362d33332e3132372c332e3837322d34392e36392c352e383039632d322e3136332d302e31362d342e3333382d302e32332d362e3438382d302e343935632d31322e3330312d312e3532312d32322e3530312d372e3333372d33312e3330392d31352e3734320d0a0909632d31342e3130322d31332e3435382d32322e3331382d33302e3234322d32372e3131392d34382e383833433333392e3435392c3231342e3331342c3333382e3831392c3231312e3137322c3333382e3130372c3230382e3034397a204d3439352e3333352c3138332e3034330d0a090963302e3135352d302e30342c302e3331312d302e3037392c302e3436362d302e313139632d312e3730332d372e3230312d332e3035352d31342e3530372d352e3138332d32312e3538632d342e3232322d31342e3033342d31302e3939392d32362e3733382d32312e3237372d33372e3336310d0a0909632d372e3834372d382e3131312d31362e3936392d31342e3131362d32382e3332372d31352e393437632d332e3031332d302e3438362d362e3239372d302e3835332d392e3139392d302e313734632d382e3538352c322e3030392d31352e30312c372e3436322d32302e3331352c31342e3238330d0a0909632d372e3338382c392e3439392d31312e3539332c32302e3434312d31342e3030332c33322e303935632d342e36382c32322e3633342d322e3934352c34342e3932332c342e3138382c36362e38313663342e3138362c31322e3835312c31302e3330362c32342e3638322c31392e3537382c33342e3637320d0a090963362e3332352c362e3831342c31332e3633392c31322e3230332c32322e38382c31342e33323963322e3735322c302e3633332c352e3734322c312e3131372c382e3438362c302e37323263362e3030342d302e3836352c31312e3332392d332e3634372c31362e3137342d372e3237360d0a090963382e3839362d362e3636332c31342e3935332d31352e3531332c31392e3239312d32352e353836433439352e3637322c3232302e3332332c3439372e3334382c3230312e3931372c3439352e3333352c3138332e3034337a204d3334392e3231352c3137342e3636350d0a0909632d322e3331312c322e3839312d342e342c352e3438312d362e3435312c382e313031632d302e32322c302e3238312d302e3331392c302e3733322d302e3331342c312e31303263302e3035352c332e3733322c302e3132372c372e3436342c302e3235312c31312e3139340d0a090963302e3031322c302e3336392c302e33322c302e3931352c302e3633362c312e30353863322e36352c312e3230312c352e3333342c322e3332382c382e3131332c332e35323263312e3438372d312e3933332c322e38372d332e3736382c342e3239312d352e3537330d0a090963332e3837322d342e3931372c332e3839322d342e3932342c382e3732382d312e30373463312e3630372c312e32382c332e3135372c322e3633322c342e3837362c342e30373163322e3030352d322e3535372c332e3739342d342e3836332c352e3631312d372e3134390d0a090963312e3436382d312e3834362c322e3532352d322e3130382c342e3634322d312e31363763322e3336312c312e3034392c342e3730372c322e3133322c372e3036362c332e31383763302e3936342c302e3433312c312e3934352c302e3832352c322e3738372c312e31380d0a0909632d302e3130372d362e3036362d302e3230342d31312e3937322d302e3333312d31372e383737632d302e3030382d302e3335362d302e3135342d302e3833322d302e3430392d312e303431632d312e3439312d312e3231392d332e3033332d322e3337352d342e3638362d332e3635310d0a0909632d312e38342c322e33382d332e3534362c342e3631382d352e3238372c362e383237632d312e3830312c322e3238362d332e3035372c322e3433312d352e33342c302e363234632d322e3234322d312e3737342d342e34362d332e3537382d362e38332d352e3438320d0a0909632d312e3934392c322e3530372d332e3732362c342e3832392d352e3534322c372e3132632d312e3539332c322e3031312d322e3935382c322e3137352d342e3937342c302e353736433335332e3736322c3137382e3339382c3335312e35312c3137362e3533312c3334392e3231352c3137342e3636357a0d0a0909204d3337382e36312c3139342e363236632d312e3930332c322e3432372d332e3736392c342e3832382d352e36362c372e3231632d312e3735362c322e3231312d322e3934372c322e3334352d352e32342c302e363236632d322e3337312d312e3737382d342e3733382d332e3536312d372e3139342d352e3430380d0a0909632d312e3333372c312e3730332d322e3537332c332e3238362d332e3831392c342e383632632d332e3534322c342e3438332d332e3534322c342e3437382d382e3737392c322e323736632d312e3433362d302e3630342d322e3838322d312e3138322d342e3332332d312e3737320d0a0909632d302e3134362c302e3132382d302e3239332c302e3235372d302e3433392c302e33383563312e3431392c362e3434352c322e3833392c31322e38392c342e3238382c31392e34373263302e3532322d302e3237362c302e3539372d302e3238392c302e3631382d302e3333310d0a090963302e3837362d312e3638312c312e3734332d332e3336362c322e3631392d352e30343763312e3433392d322e3736312c332e342d332e3138392c352e3835392d312e32343863322e3234372c312e3737342c342e3436392c332e35382c362e3739372c352e3434370d0a090963312e3935352d322e3439312c332e3734362d342e3830392c352e3537372d372e30393563312e3630312d312e3939392c322e3935362d322e3134312c342e3939362d302e35333863322e3330322c312e3830382c342e3537392c332e3634382c372e3033352c352e3630380d0a090963312e3935372d322e3532342c332e3739322d342e39352c352e3639322d372e33323263312e32372d312e3538362c322e3637342d312e3738312c342e342d302e37333463302e3535372c302e3333372c312e3039362c302e3730322c312e3832382c312e3137330d0a0909632d302e3734322d332e3938342d312e3430332d372e3635362d322e3133362d31312e333133632d302e3038342d302e3431392d302e3438392d302e3932342d302e3837372d312e313037433338362e3136382c3139382e3034332c3338322e3435352c3139362e3337352c3337382e36312c3139342e3632367a0d0a0909204d3339362e3036392c3233392e373333632d312e3037362c322e3136382d322e3134392c342e3331312d332e3230352c362e343632632d312e3434362c322e3934372d322e3930342c332e3239392d352e3435372c312e3238330d0a0909632d322e3233372d312e3736372d342e3436342d332e3534372d362e3832372d352e343235632d312e3931332c322e3437332d332e3635332c342e3735352d352e3432392c372e303038632d312e3633382c322e3037372d332e3033342c322e3233352d352e3130372c302e3630360d0a0909632d322e3239342d312e3830322d342e3537332d332e3632342d362e3634322d352e323636632d312e3234322c312e34342d322e3335332c322e37332d332e3437312c342e30323763342e3130352c362e3136332c382e3831382c31312e3733332c31342e35372c31362e3437380d0a090963322e3033352d312e3732372c342d332e3331342c352e38372d352e30303663312e35322d312e3337352c332e3034362d312e3631342c342e3835372d302e36303363312e3835332c312e3033352c332e3734362c322e3031362c352e3638392c322e3836370d0a090963302e3531372c302e3232362c312e3434392c302e3130392c312e3930322d302e32333363312e3639332d312e3237372c332e3330332d322e3637332c342e3837352d342e31303163312e3436352d312e3333312c322e3936342d312e3534382c342e3731332d302e3539310d0a090963312e3931332c312e3034372c332e3836322c322e3033342c352e3833362c322e39363163302e3432322c302e3139382c312e31382c302e3233352c312e3530382d302e30313563312e3534322d312e3137352c322e3938392d322e3437362c342e3236372d332e3536310d0a0909632d322e3932362d342e34312d352e3733322d382e3636342d382e3537382d31322e383931632d302e3239352d302e3433382d302e3737392d302e3835332d312e3236372d312e3034433430312e35352c3234312e3638392c3339382e3839392c3234302e3735382c3339362e3036392c3233392e3733337a0d0a0909204d3337322e3038392c3231392e313733632d312e3538342c322e3037392d322e3839362c332e3735322d342e3135352c352e343633632d332e3038342c342e3139322d342e3034322c342e3536312d382e31352c312e303132632d312e3435382d312e32362d322e3932382d322e3530362d342e3336352d332e3733360d0a0909632d312e3637342c322e3838362d332e3134372c352e3432362d342e3934392c382e35333363312e3734372c332e3639382c332e3830332c382e3034382c362e3037362c31322e383663312e3335322d312e3830372c322e3331372d332e3135392c332e3334372d342e3435390d0a090963312e3638322d322e3132342c322e3936312d322e3236382c352e3130362d302e35383863322e3330322c312e3830322c342e3537392c332e3633362c362e3935362c352e35323663312e3930372d322e3433372c332e3639382d342e3735362c352e3532332d372e3034370d0a090963312e3632312d322e3033352c322e3934362d322e3139362c342e3938342d302e35393363322e30372c312e3632392c342e3130332c332e3330352c362e3332372c352e31303163312e3034332d322e3130352c312e3935352d342e3031312c322e3932342d352e3838370d0a090963312e3031392d312e3937322c322e3137362d322e3431392c342e3234362d312e36393763312e3633322c302e3536392c332e3235352c312e3136322c342e3936322c312e373733632d312e3534352d342e3030312d332e33312d372e37312d342e3338332d31312e36310d0a0909632d302e3938312d332e3536372d332e3933372d342e3538362d362e34352d362e353538632d312e3433332c312e3836362d322e37312c332e3536362d342e3032352c352e323334632d332e3838352c342e3932382d332e3930322c342e3933372d382e3734312c312e3037350d0a0909433337352e3632312c3232322e3232312c3337332e3939312c3232302e3737392c3337322e3038392c3231392e3137337a204d3339312e3637312c3135322e383838632d322e39372d312e3034322d352e3938322d322e3133362d392e3032392d332e3132330d0a0909632d302e3430392d302e3133322d312e3039392c302e3134382d312e3437392c302e343538632d312e3733352c312e3431352d332e3430332c322e3931312d352e3039392c342e333733632d312e3935372c312e3638362d322e3730382c312e3738332d342e3935332c302e3632320d0a0909632d312e3933382d312e3030322d332e3839392d312e3936352d352e3739312d332e303439632d302e3930362d302e3531392d312e3531352d302e3431382d322e3236322c302e3237632d312e3433352c312e3332312d322e3935352c322e3535312d342e3434342c332e3831330d0a0909632d322e3134312c312e3831352d322e3739392c312e3839342d352e3235332c302e363532632d312e3932392d302e3937372d332e3835392d312e3935342d362e32342d332e3136632d312e33392c362e3238322d322e3732322c31322e3330312d342e3035342c31382e33320d0a090963302e3139322c302e3036372c302e3338342c302e3133342c302e3537362c302e3263302e37322d302e39362c312e3432372d312e39332c322e3136342d322e38373763312e3637312d322e3134392c322e39362d322e3333352c352e3036392d302e3636350d0a090963322e3239312c312e3831342c342e3534322c332e3637392c362e3936382c352e36343963312e3934352d322e3439352c332e3732312d342e3830372c352e3533352d372e303963312e36362d322e3038392c322e3938392d322e3233352c352e31312d302e3537340d0a090963322e3239362c312e3739382c342e3536362c332e3632382c362e3936312c352e35333563312e3934352d322e3439342c332e3735352d342e3836382c352e3632342d372e31393463312e3438342d312e3834372c322e3839352d322e30332c342e3733322d302e3535370d0a090963312e3138322c302e3934382c322e32332c322e3036312c332e3537322c332e333139433339302e32312c3136322e3430372c3339302e39332c3135372e3731332c3339312e3637312c3135322e3838387a204d3334392e3236322c3134382e3136380d0a090963312e3932322c312e3035332c332e3530312c312e3939332c352e3135372c322e37373263302e3431352c302e3139352c312e3231342c302e3034382c312e3539372d302e32343963312e3637382d312e3330322c332e3332342d322e3635372c342e3837342d342e3130380d0a090963312e3538312d312e34382c332e3135342d312e3539372c352e3030332d302e35343263312e3739352c312e3032342c332e3634342c312e3936382c352e3533372c322e37393363302e3532312c302e3232372c312e3435352c302e3132372c312e3930342d302e3231340d0a090963312e3733362d312e3331372c332e3338312d322e3736312c352e3030362d342e32313863312e3334362d312e3230372c322e3736392d312e3432322c342e3435322d302e37383763332e3337392c312e3237332c362e3738392c322e3436342c31302e3131322c332e3636310d0a090963322e31332d352e3637332c342e3233332d31312e3237352c362e3337312d31362e393732632d322e3434362d302e3835322d342e3937352d312e3738342d372e3534352d322e353832632d302e3436322d302e3134332d312e3231382c302e3131312d312e3632372c302e3434320d0a0909632d312e38332c312e3438312d332e3630332c332e3033352d352e33362c342e363034632d312e3331352c312e3137352d322e3639332c312e3337382d342e3236392c302e353638632d322e3139372d312e3132382d342e3339352d322e3236342d362e3634372d332e3237340d0a0909632d302e3538392d302e3236342d312e3437342d302e3330322d322e3036362d302e3036632d352e3235392c322e3135312d31302e3439312c342e3336372d31352e3730342c362e363237632d302e3632392c302e3237332d312e3238362c302e3831392d312e3630332c312e3431330d0a0909433335322e3639372c3134312e33332c3335312e3034312c3134342e3637312c3334392e3236322c3134382e3136387a204d3433342e3535382c3237332e313834632d362e3130332d332e33312d31312e3431392d372e3435372d31362e3238392d31322e3333330d0a0909632d322e3139392c312e3836342d342e3331342c332e3631362d362e33382c352e343233632d312e3339352c312e3232312d322e382c312e3337392d342e3430342c302e3432632d322e3136342d312e3239332d342e3337322d322e3531322d362e3632362d332e3739390d0a0909632d312e3335342c312e3134332d322e3832332c322e3131332d332e3934362c332e333837632d322e3539352c322e3934332d352e3332382c332e3336372d382e3539372c312e3134632d312e3236382d302e3836342d322e3734382d312e3433322d342e31372d322e3034340d0a0909632d302e3338342d302e3136362d312e3034372d302e3138342d312e3334382c302e303432632d312e3230372c302e3930372d322e3332312c312e3933372d332e3538332c332e30313863352e35352c332e37312c31312e3332372c362e3236362c31372e3639312c372e3432340d0a090963342e3231342c302e3736362c382e3433382c302e3737362c31322e36392c302e323535433431372e3931312c3237352e3039372c3432362e3233362c3237342e3135372c3433342e3535382c3237332e3138347a204d3430322e3332372c3132352e3333360d0a090963332e3632352d362e3034342c372e3931342d31312e3238322c31332e3536392d31352e3939632d382e3735342c312e3032332d31362e3934382c322e3038362d32352e3136352c322e393136632d31302e38352c312e3039362d31392e3735382c352e3933352d32372e3235392c31332e3634370d0a0909632d302e3237332c302e3238312d302e3437362c302e3633312d312e30322c312e33363663332e3039372d312e3237362c352e3730322d322e3330362c382e3236392d332e34323463312e3533392d302e36372c322e3936362d302e3633362c342e3434392c302e3135340d0a090963322e32372c312e3230392c342e3537392c322e3334352c362e3839372c332e35323563312e3836322d312e3537392c332e37332d332e3032322c352e3432372d342e36343263312e3637352d312e3539392c332e3336312d312e3832352c352e3438362d302e3935310d0a0909433339352e3939352c3132332e3137362c3339392e3130382c3132342e3137392c3430322e3332372c3132352e3333367a222f3e0d0a093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3431302e3338392c3139322e333834632d312e3437342d31332e3736392d312e30332d32372e3932332c332e3335342d34312e37353363322e3236332d372e3133392c352e3438332d31332e3737382c31302e3835332d31392e3136330d0a090963382e3137322d382e3139352c31382e3835382d392e3333332c32382e3537392d332e30333263372e3430322c342e3739382c31322e3434322c31312e3636362c31362e3439342c31392e33313363372e3339382c31332e3936322c31302e3732352c32392e3032312c31312e3634312c34342e3637320d0a090963302e3636392c31312e3433312d302e3233362c32322e37332d332e3538362c33332e3734632d322e3037342c362e3831362d342e3938342c31332e3232342d392e3734382c31382e363432632d382e3834352c31302e30362d32302e3932312c31312e3335342d33312e3730362c332e3336360d0a0909632d372e3230312d352e3333342d31322e3036352d31322e3532392d31352e3937312d32302e3434433431342e38372c3231362e3733372c3431312e3933372c3230352e3032372c3431302e3338392c3139322e3338347a204d3437352e3232382c3138392e3039330d0a0909632d312e3939342d31362e3930392d352e3537382d32382e3834362d31312e3234392d33392e3232632d332e3538382d362e3536342d372e3839382d31322e3537332d31342e3336332d31362e363433632d372e3436332d342e3639382d31342e3935342d332e3731362d32312e3034372c322e3635360d0a0909632d342e3531362c342e3732332d372e3133362c31302e3530352d392e3038312c31362e363334632d302e3133312c302e3431332c302e3037392c312e3132312c302e3338362c312e34353863332e3235352c332e35362c352e3638342c372e3633362c372e3539362c31322e30330d0a090963352e3334332c31322e3238332c372e3433342c32352e3138312c362e3934392c33382e353031632d302e3331322c382e3535342d312e3635362c31362e39312d352e3935332c32342e353239632d302e31372c302e3330322d302e3130362c302e3839382c302e3038342c312e3231360d0a090963332e3134372c352e32372c362e38332c31302e3039382c31312e3934372c31332e36323463382e3233352c352e3637362c31362e3436312c342e3538322c32322e3939362d322e39383763342e3137372d342e3833382c362e3730342d31302e3534322c382e3530312d31362e3538370d0a0909433437352e3738352c3231312e3535322c3437362e3237392c3139382e3534382c3437352e3232382c3138392e3039337a204d3431372e3436362c3136302e343233632d342e3532352c32302e3932362d302e3432362c34372e3136372c372e3337312c36322e35310d0a0909433433322e3139382c3230372e3831352c3432382e3339372c3137332e3938342c3431372e3436362c3136302e3432337a222f3e0d0a3c2f673e0d0a3c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3334382e3535372c3233342e3736386c2d322e3436332c31332e353439483333342e3638762d32302e3534336831302e373332632d312e3333312d332e3331392d322e3438372d362e3734382d332e34352d31302e3237344834332e3635320d0a09762d31332e333339683239352e363632632d302e3432392d332e3336352d302e3639332d362e3739322d302e3737362d31302e3237682d352e393736762d37302e36323563302d31342e3133332c382e3934362d32362e3738312c32322e3236322d33312e34380d0a0963332e3535352d312e3235382c372e3239332d312e3839392c31312e3131372d312e3839396331322e3533372c302c32332e34382c362e39352c32392e3138372c31372e31393663332e33362d312e3033382c362e38312d312e3832382c31302e3333372d322e33340d0a09632d362e3938322d31342e3833332d32322e30372d32352e3132392d33392e3532332d32352e313239632d322e3630312c302d352e3137312c302e32332d372e3639352c302e3638335633312e313435433335382e3234362c31332e3936392c3334342e3237332c302c3332372e3130322c304838322e350d0a094336352e3332342c302c35312e3335352c31332e3937332c35312e3335352c33312e3134357634392e313532632d322e3532372d302e3435332d352e3130312d302e3638332d372e3730332d302e3638334331392e3538322c37392e3631342c302c39392e3139362c302c3132332e3236360d0a0963302c32302e3236322c31342e3036322c33372e3736322c33332e3337392c34322e34337635362e39343163302c322e3833362c322e3239372c352e3133332c352e3133332c352e3133336831302e38326c342e38342c32362e3630310d0a0963302e3434352c322e3434362c322e35372c342e3231392c352e3035352c342e3231396832302e38333563322e3833362c302c352e3133372d322e3330312c352e3133372d352e313336762d32352e3638483332342e34317632352e363863302c322e3833352c322e3239372c352e3133362c352e3133332c352e3133360d0a096832302e383463322e34382c302c342e3630392d312e3737372c352e3035312d342e3231396c312e3137392d362e343832433335332e3539322c3234332e3831362c3335302e3839312c3233392e3432372c3334382e3535372c3233342e3736387a204d3332322e3238392c3139332e3839314838372e3330390d0a09762d32352e39303663302d382e3337352c362e3831322d31352e3138382c31352e3138372d31352e313838683230342e35393863382e3337392c302c31352e3139352c362e3831332c31352e3139352c31352e313838563139332e3839317a204d36312e3632392c33312e3134350d0a0963302d31312e3530382c392e3336332d32302e3837312c32302e3837312d32302e383731683234342e3630326331312e3530372c302c32302e3837312c392e3336332c32302e3837312c32302e3837317635322e333332632d31352e352c372d32352e3638342c32322e3535312d32352e3638342c33392e3738390d0a097632342e333031632d342e3234322d332e3136342d392e3530342d352e3034332d31352e3139352d352e303433483130322e343936632d352e3638372c302d31302e3934352c312e3837352d31352e3138372c352e303339762d32342e3330310d0a0963302d31372e3233342d31302e3138342d33322e3738352d32352e36382d33392e3738355633312e3134357a204d33392e3139312c3135362e333434632d31362e3438382d322e3139352d32382e3931382d31362e3431342d32382e3931382d33332e3037380d0a0963302d31382e3430362c31342e3937332d33332e3337392c33332e3337392d33332e33373963332e3832352c302c372e3537312c302e3633372c31312e3132392c312e3839396331332e3331332c342e3639392c32322e3235342c31372e3334372c32322e3235342c33312e34387637302e3632354834332e3635320d0a09762d33322e3435374334332e3635322c3135382e38362c34312e3734362c3135362e3638342c33392e3139312c3135362e3334347a204d37342e3932362c3234382e3331374836332e3531326c2d332e3733392d32302e3534336831352e313533563234382e3331377a222f3e0d0a3c2f7376673e0d0a	image/svg+xml
1001	Équipements électriques et électroniques	1	1000	1527	4	\N	\N	\N
1002	Meubles et éléments de décoration	1	1000	1527	6	\N	\N	\N
1003	Planches et palettes	1	1000	1527	7	\N	\N	\N
1004	Portes, fenêtres, volets, vitres et sanitaires	1	1000	1527	8	\N	\N	\N
1005	Objets entrant dans plusieurs catégories 	1	1000	1527	9	\N	\N	\N
1006	Épave de vélo	1	1000	1517	3	\N	\N	\N
1007	Épave de Vélib'	1	1000	1489	2	\N	\N	\N
1008	Épave de motocycle	1	1000	1517	1	\N	\N	\N
1009	Déchets divers légers en sac ou en vrac	0	1000	1527	9	\N	\N	\N
1010	Autre objet (hors catégories précédentes)	1	1000	1527	11	\N	\N	\N
2000	Problème sur un chantier	1	\N	0	9	image?resource_type=image_type_signalement&#38;id=2000	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2269736f2d383835392d31223f3e0d0a3c212d2d2047656e657261746f723a2041646f626520496c6c7573747261746f722031392e312e302c20535647204578706f727420506c75672d496e202e205356472056657273696f6e3a20362e3030204275696c6420302920202d2d3e0d0a3c7376672076657273696f6e3d22312e31222069643d224c617965725f312220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220d0a092076696577426f783d2230203020363020363022207374796c653d22656e61626c652d6261636b67726f756e643a6e6577203020302036302036303b2220786d6c3a73706163653d227072657365727665223e0d0a3c673e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d223439222079313d223339222078323d223133222079323d223339222f3e0d0a090d0a09093c706f6c796c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b2220706f696e74733d220d0a090935332c35392035332c33392035392c33392035392c313120312c313120312c333920392c333920392c35392009222f3e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d2239222079313d2235222078323d2239222079323d2237222f3e0d0a090d0a09093c636972636c65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222063783d2239222063793d22332220723d2232222f3e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d223531222079313d2235222078323d223531222079323d2237222f3e0d0a090d0a09093c636972636c65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222063783d223531222063793d22332220723d2232222f3e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d2235222079313d223539222078323d223133222079323d223539222f3e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d223439222079313d223539222078323d223537222079323d223539222f3e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d223232222079313d223135222078323d223134222079323d223335222f3e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d223130222079313d223135222078323d22342e3938222079323d2232372e353439222f3e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d223334222079313d223135222078323d223236222079323d223335222f3e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d223436222079313d223135222078323d223338222079323d223335222f3e0d0a090d0a09093c6c696e65207374796c653d2266696c6c3a6e6f6e653b7374726f6b653a234146414641463b7374726f6b652d77696474683a323b7374726f6b652d6c696e656361703a726f756e643b7374726f6b652d6c696e656a6f696e3a726f756e643b7374726f6b652d6d697465726c696d69743a31303b222078313d2235342e393737222079313d2232322e353538222078323d223530222079323d223335222f3e0d0a3c2f673e0d0a3c2f7376673e0d0a	image/svg+xml
2001	Chantier de voirie sans barrière ou information et présentant un danger	1	2000	174	1	\N	\N	\N
2002	Chantier de voirie sale	1	2000	174	2	\N	\N	\N
2003	Chantier concernant un bâtiment, sale et dangereux	1	2000	174	3	\N	\N	\N
3000	Propreté	1	\N	0	3	image?resource_type=image_type_signalement&#38;id=3000	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2269736f2d383835392d31223f3e0d0a3c212d2d2047656e657261746f723a2041646f626520496c6c7573747261746f722031392e312e302c20535647204578706f727420506c75672d496e202e205356472056657273696f6e3a20362e3030204275696c6420302920202d2d3e0d0a3c7376672076657273696f6e3d22312e31222069643d22466f726d615f315f315f2220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220d0a092076696577426f783d22302030203433382036313222207374796c653d22656e61626c652d6261636b67726f756e643a6e65772030203020343338203631323b2220786d6c3a73706163653d227072657365727665223e0d0a3c672069643d22466f726d615f31223e0d0a093c673e0d0a09093c70617468207374796c653d2266696c6c2d72756c653a6576656e6f64643b636c69702d72756c653a6576656e6f64643b66696c6c3a234146414641463b2220643d224d3135372e3131322c3533302e3733386c372e3731312d32372e3835330d0a09090963312e3236362d342e3537312d302e3737372d392e3431312d342e3933332d31312e3639346c2d32342e3037392d31332e3232346c2d31342e3234332d32352e313439632d322e3333372d342e3132362d372e3230332d362e3130372d31312e3735352d342e37386c2d32362e3338312c372e3637350d0a0909096c2d32372e3835332d372e3731632d332e3535332d302e3938352d372e3335352c302e3032312d392e39362c322e3632344c332e3332312c3439322e393233632d322e3633392c322e3634312d332e36332c362e3530372d322e3538372c31302e3039316c372e3637352c32362e3337390d0a0909096c2d372e3731312c32372e383532632d302e3938332c332e3535322c302e3031392c372e3335372c322e3632342c392e3936326c34322e3239392c34322e32393763312e3931392c312e3931392c342e3531392c322e3939372c372e3233322c322e3939376835392e38320d0a09090963322e3731312c302c352e3331332d312e3037372c372e3233322d322e3939376c34322e3239392d34322e32393963322e3633392d322e3633392c332e3633312d362e3530342c322e3538372d31302e3038384c3135372e3131322c3533302e3733387a204d3130382e3433332c3539322e3034354835372e3038360d0a0909096c2d33352e3038382d33352e3038386c362e3839362d32342e39303763302e3530372d312e3832392c302e3439342d332e3736342d302e3033372d352e3538376c2d362e3739352d32332e3335346c33332e3830342d33332e3830356c32342e3930362c362e3839340d0a09090963312e38332c302e3530362c332e3736322c302e3439342c352e3538362d302e3033346c32312e3339382d362e3232366c31312e3638352c32302e36333463302e3933372c312e3635322c322e3331332c332e3031322c332e3937372c332e3932366c31392e3533332c31302e3732380d0a0909096c2d362e3332382c32322e383536632d302e3530372c312e38332d302e3439342c332e3736342c302e3033372c352e3538376c362e3739352c32332e3335334c3130382e3433332c3539322e3034357a204d3433362e3133382c3135372e3739380d0a090909632d312e3934322d322e3231362d342e3734362d332e3438372d372e3639322d332e343837682d31392e3132316c2d362e37352d32332e3139346c372e3731312d32372e38353263312e3236362d342e35372d302e3737352d392e3431312d342e3933332d31312e3639346c2d32342e3037362d31332e3232360d0a0909096c2d31342e3234372d32352e3135632d322e3333372d342e3132362d372e3139392d362e312d31312e3735352d342e3737396c2d32362e33382c372e3637366c2d32372e3835332d372e373131632d332e35352d302e3938362d372e3335352c302e3031392d392e39362c322e3632350d0a0909096c2d34322e3239392c34322e323939632d322e3633392c322e3633392d332e36332c362e3530352d322e3538372c31302e3038396c372e3637352c32362e3337366c2d362e3739362c32342e353432682d32392e3034386c352e3830392d32302e3938350d0a09090963302e3938332d332e3535312d302e3031382d372e3335352d322e3632342d392e39366c2d34322e3239392d34322e333031632d312e3931382d312e3931382d342e3531392d322e3939352d372e3233322d322e393935682d33332e3031336c2d332e3132382d31312e3239386c34352e3831352d34352e3831390d0a0909096836362e3531396c31332e3930372c31332e39303963332e3939332c332e3939322c31302e34372c332e3939322c31342e3436332c3063332e3939352d332e3939352c332e3939352d31302e34372c302d31342e3436344c3235392e3334322c332e3439370d0a090909632d312e3931392d312e39322d342e3532312d322e3939372d372e3233322d322e393937682d37342e393931632d322e3731322c302d352e3331342c312e3037372d372e3233322c322e3939376c2d35332e3032342c35332e3032390d0a090909632d322e3630352c322e3630332d332e3630372c362e34312d322e3632342c392e3935386c332e3230372c31312e353837682d352e3538632d322e3731322c302d352e3331342c312e3037372d372e3233322c322e3939376c2d34322e3239392c34322e3239370d0a090909632d322e3633392c322e3634312d332e36332c362e3530362d322e3538372c31302e30396c362e3036392c32302e3835354832372e313332632d322e3938342c302d352e3831382c312e3330332d372e3736312c332e3536360d0a090909632d312e3934332c322e3236332d322e3830312c352e3236332d322e3334382c382e3231316c33392e3636322c3235382e35323563302e3835372c352e3538342c362e3037322c392e3432332c31312e3635392c382e3535380d0a09090963352e3538332d302e3835362c392e3431352d362e3037362c382e3535382d31312e3635394c33392e3034352c3137342e373634683337372e3732384c3336342e35382c3536382e383939483138302e363531632d352e3634382c302d31302e3232372c342e3537392d31302e3232372c31302e3232380d0a09090973342e3537392c31302e3232382c31302e3232372c31302e323238683139322e38393463352e3132392c302c392e3436362d332e3830312c31302e3133382d382e3838356c35342e3930322d3431342e3539310d0a090909433433382e3937322c3136322e39362c3433382e3038312c3136302e3031352c3433362e3133382c3135372e3739387a204d3139362e3830332c3135342e33314838372e3131386c2d362e3034322d32302e37366c33352e3032342d33352e3032356835312e3334346c33352e3038392c33352e3038380d0a0909094c3139362e3830332c3135342e33317a204d3338322e3132362c3133342e3034346c352e3839382c32302e323636483236382e3239396c362e30362d32312e38383463302e3530372d312e3833312c302e3439332d332e3736342d302e3033372d352e3538376c2d362e3739352d32332e3335340d0a0909096c33332e3830352d33332e3830346c32342e3930362c362e38393663312e3832392c302e3530362c332e3736342c302e3439362c352e3538352d302e3033356c32312e3339392d362e3232376c31312e3638392c32302e36333663302e3933352c312e3635312c322e3331332c332e30312c332e3937352c332e3932340d0a0909096c31392e3533322c31302e3732376c2d362e3332382c32322e383535433338312e3538332c3133302e3238382c3338312e3539352c3133322e3232312c3338322e3132362c3133342e3034347a204d3332382e3137332c3533362e31383563352c302c392e3337332d332e3637332c31302e3130392d382e3736360d0a0909096c34342e35322d3330382e32343863302e3830372d352e3539312d332e3037312d31302e3737382d382e3636312d31312e353834632d352e3539352d302e3832362d31302e3737362c332e3036392d31312e3538352c382e36366c2d34342e35322c3330382e3234380d0a090909632d302e3830372c352e35392c332e3037312c31302e3737362c382e3636312c31312e353834433332372e3139332c3533362e3135312c3332372e3638362c3533362e3138362c3332382e3137332c3533362e3138357a222f3e0d0a093c2f673e0d0a3c2f673e0d0a3c2f7376673e0d0a	image/svg+xml
3300	Déchets divers légers en sac ou en vrac	0	3000	108	3	\N	\N	\N
3400	Malpropreté du sol	1	3000	\N	3	\N	\N	\N
3401	Grille d'arbre	0	3400	108	1	\N	\N	\N
3402	Jardinière ou espace végétalisé souillé	1	3400	108	17	\N	\N	\N
3403	Flaque d'huile	1	3400	108	15	\N	\N	\N
3404	Urine 	1	3400	108	20	\N	\N	\N
3405	Mégots 	1	3400	108	18	\N	\N	\N
3406	Grille d'égout encrassée	1	3400	108	16	\N	\N	\N
3407	Déjection, crotte de chien	1	3400	108	12	\N	\N	\N
3408	Fientes d'oiseaux	1	3400	108	14	\N	\N	\N
3409	Feuilles mortes	1	3400	108	13	\N	\N	\N
3410	Autre	1	3400	108	21	\N	\N	\N
3500	Chantier mal tenu	1	3000	\N	1	\N	\N	\N
3501	Barrières et informations	1	3500	174	1	\N	\N	\N
3502	Propreté du chantier	1	3500	174	2	\N	\N	\N
3600	Graffitis, tags, affiches et autocollants	1	\N	0	1	image?resource_type=image_type_signalement&#38;id=3600	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2269736f2d383835392d31223f3e0d0a3c212d2d2047656e657261746f723a2041646f626520496c6c7573747261746f722031392e312e302c20535647204578706f727420506c75672d496e202e205356472056657273696f6e3a20362e3030204275696c6420302920202d2d3e0d0a3c7376672076657273696f6e3d22312e31222069643d2253686170655f315f315f2220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220d0a092076696577426f783d22302030203333322035313222207374796c653d22656e61626c652d6261636b67726f756e643a6e65772030203020333332203531323b2220786d6c3a73706163653d227072657365727665223e0d0a3c672069643d2253686170655f31223e0d0a093c673e0d0a09093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3332332e3934312c3432322e3933632d342e34352c302d382e3035382c332e3630322d382e3035382c382e3034387635362e38373763302c342e3433382d332e3631352c382e3034382d382e3035382c382e303438483132352e31370d0a090909632d342e3434332c302d382e3035382d332e36312d382e3035382d382e303438563231372e393632683133342e38343163342e34352c302c382e3035382d332e3630322c382e3035382d382e303438732d332e3630382d382e3034382d382e3035382d382e303438483131372e313132762d31322e3334310d0a09090963302d32322e31392c31382e3037342d34302e3234322c34302e3239312d34302e323432683131382e3138366332322e3231372c302c34302e3239312c31382e3035322c34302e3239312c34302e3234327631322e333431682d32302e3935320d0a090909632d342e34352c302d382e3035382c332e3630322d382e3035382c382e30343873332e3630382c382e3034382c382e3035382c382e3034386832302e393532763137302e30383763302e3030312c342e3434352c332e3630392c382e3034382c382e3035392c382e3034380d0a09090973382e3035382d332e3630322c382e3035382d382e303438563138392e35323463302e3030312d33312e3036362d32352e3330332d35362e33342d35362e3430372d35362e3334682d382e303538762d32362e32393163302d342e3434362d332e3630382d382e3034382d382e3035382d382e3034380d0a090909682d31352e3232315635332e32333663302d342e3434362d332e3630382d382e3034382d382e3035382d382e303438682d33392e333937632d342e34352c302d382e3035382c332e3630322d382e3035382c382e3034387634352e363038483137332e35320d0a090909632d342e34352c302d382e3035382c332e3630322d382e3035382c382e3034387632362e323931682d382e303538632d33312e3130342c302d35362e3430382c32352e3237342d35362e3430382c35362e3334763239382e3333320d0a09090963302c31332e3331332c31302e3834342c32342e3134362c32342e3137352c32342e313436683138322e3635336331332e33332c302c32342e3137352d31302e3833332c32342e3137352d32342e313436762d35362e3837370d0a090909433333312e3939392c3432362e3533322c3332382e3339312c3432322e39332c3332332e3934312c3432322e39337a204d3230342e3835392c36312e3238346832332e32387633372e3536682d32332e32385636312e3238347a204d3138312e3537392c3131342e3934316836392e3833387631382e3234330d0a090909682d36392e383338563131342e3934317a204d3134312e3238382c37302e393432682d382e303538632d342e34352c302d382e3035382c332e3630322d382e3035382c382e30343873332e3630382c382e3034382c382e3035382c382e30343868382e3035380d0a09090963342e34352c302c382e3035382d332e3630322c382e3035382d382e303438533134352e3733372c37302e3934322c3134312e3238382c37302e3934327a204d36302e3033342c37302e3934324834352e333935632d342e34352c302d382e3035382c332e3630322d382e3035382c382e3034380d0a09090973332e3630382c382e3034382c382e3035382c382e3034386831342e36333963342e34352c302c382e3035382d332e3630322c382e3035382d382e3034385336342e3438342c37302e3934322c36302e3033342c37302e3934327a204d38392e3331322c37302e3934320d0a090909632d342e34352c302d382e3035382c332e3630322d382e3035382c382e30343873332e3630382c382e3034382c382e3035382c382e3034386831342e36333963342e34352c302c382e3035382d332e3630322c382e3035382d382e303438732d332e3630382d382e3034382d382e3035382d382e3034380d0a0909094838392e3331327a204d31362e3131372c37302e39343248382e303539632d342e34352c302d382e3035382c332e3630322d382e3035382c382e30343873332e3630382c382e3034382c382e3035382c382e30343868382e30353863342e34352c302c382e3035382d332e3630322c382e3035382d382e3034380d0a0909095332302e3536372c37302e3934322c31362e3131372c37302e3934327a204d3130342e3530332c3132312e313633632d312e3831352d342e3035372d362e35382d352e3838312d31302e3634342d342e3036356c2d31342e3731352c362e3536370d0a090909632d332e3739382c312e3639352d352e3730392c362e3136342d342e3239352c31302e30373563312e3536392c342e33342c362e3634332c362e3531312c31302e38372c342e3632336c31342e3731342d362e3536370d0a090909433130342e3439352c3132392e3938312c3130362e3331382c3132352e3232312c3130342e3530332c3132312e3136337a204d34392e3731342c3133362e3739376c2d31322e37312c352e363732632d332e3739382c312e3639352d352e3730392c362e3136342d342e3239352c31302e3037350d0a09090963312e3536392c342e33342c362e3634342c362e3531312c31302e38372c342e3632336c31322e37312d352e36373263342e3036342d312e3831332c352e3838362d362e3537342c342e30372d31302e3633320d0a0909094335382e3534342c3133362e3830352c35332e3737392c3133342e3938322c34392e3731342c3133362e3739377a204d3133382c39372e3339386c2d31342e3731342c362e353637632d332e3335312c312e3439352d352e3330332c352e3139322d342e36342c382e3739390d0a09090963302e3639362c332e3737372c342e3038352c362e362c372e3933322c362e3663312e3039382c302c322e3231352d302e3232352c332e3238322d302e3730326c31342e3731342d362e35363763342e3036332d312e3831332c352e3838362d362e3537332c342e30372d31302e3633320d0a090909433134362e3832382c39372e3430362c3134322e3036352c39352e3538342c3133382c39372e3339387a204d3132332e3238352c35342e3031374c3133382c36302e35383363342e3238332c312e3931332c392e3430352d302e3334312c31302e3931372d342e3736340d0a09090963312e3332372d332e3838312d302e3539372d382e3236312d342e3334322d392e3933346c2d31342e3731342d362e353637632d342e3036332d312e3831342d382e38332c302e3030382d31302e3634352c342e3036350d0a090909433131372e342c34372e3434342c3131392e3232332c35322e3230342c3132332e3238352c35342e3031377a204d37392e3134332c33342e3331386c31342e3731352c362e35363763342e3238342c312e3931332c392e3430352d302e3334312c31302e3931372d342e3736340d0a09090963312e3332372d332e3838322d302e3539382d382e3236322d342e3334322d392e3933344c38352e3731372c31392e3632632d342e3036332d312e3831342d382e38332c302e3030382d31302e3634342c342e3036350d0a0909094337332e3235372c32372e3734352c37352e3037392c33322e3530342c37392e3134332c33342e3331387a204d33372e3030342c31352e3531326c31322e37312c352e36373263342e3238342c312e3931332c392e3430352d302e3334312c31302e3931372d342e3736340d0a09090963312e3332372d332e3838322d302e3539372d382e3236322d342e3334322d392e3933346c2d31322e37312d352e3637324333392e3531342d312c33342e37352c302e38322c33322e3933342c342e3837394333312e3131382c382e39342c33322e39342c31332e372c33372e3030342c31352e3531327a222f3e0d0a093c2f673e0d0a3c2f673e0d0a3c2f7376673e0d0a	image/svg+xml
3601	Graffitis sur statue, monument, œuvre d'art	1	3600	1514	2	\N	\N	\N
3602	Graffitis sur immeuble, mur ou commerce	1	3600	1499	1	\N	\N	\N
3603	Graffitis sur trottoir ou ouvrage d'art	1	3600	1499	3	\N	\N	\N
3606	... sur corbeille à déchets et mobilier urbain	0	3600	108	9	\N	\N	\N
3700	Affiches et autocollants sur autres supports	1	3600	\N	8	\N	\N	\N
3701	Affiches ou autocollants sur statue, monument, œuvre d'art	1	3600	1514	6	\N	\N	\N
3702	Affiches ou autocollants sur immeuble, mur ou commerce	1	3600	108	5	\N	\N	\N
3703	Affiches ou autocollants sur trottoir et ouvrage d'art	1	3600	108	7	\N	\N	\N
3704	Affiches ou autocollants sur colonne à verre 	1	3700	1518	9	\N	\N	\N
3705	Affiches ou autocollants sur arbre 	1	3700	1	3	\N	\N	\N
3706	... sur mobilier spécifique : RATP, EDF...	0	3700	174	9	\N	\N	\N
3800	WC publics	1	3000	\N	4	\N	\N	\N
3801	Sanisette, WC automatique sale	1	3800	1488	22	\N	\N	\N
3802	Saleté sur autres WC publics	1	3800	1520	23	\N	\N	\N
3910	Canaux	0	3000	174	10	\N	\N	\N
3920	Autre 	0	3000	108	11	\N	\N	\N
4000	Voirie et déplacements	1	\N	0	4	image?resource_type=image_type_signalement&#38;id=4000	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2269736f2d383835392d31223f3e0d0a3c212d2d2047656e657261746f723a2041646f626520496c6c7573747261746f722031392e312e302c20535647204578706f727420506c75672d496e202e205356472056657273696f6e3a20362e3030204275696c6420302920202d2d3e0d0a3c7376672076657273696f6e3d22312e31222069643d2243616c7175655f312220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220d0a092076696577426f783d22302030203235342e3938372033303122207374796c653d22656e61626c652d6261636b67726f756e643a6e657720302030203235342e393837203330313b2220786d6c3a73706163653d227072657365727665223e0d0a3c673e0d0a093c673e0d0a09093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3233352e33362c3239322e37393763312e31382c342e3438392c352e3233312c372e3435372c392e3636342c372e34353763302e38342c302c312e3639392d302e3130352c322e3535312d302e3333320d0a09090963352e33342d312e3430362c382e3533312d362e3837352c372e3132352d31322e3231344c3138302e3930332c372e343538632d312e3430362d352e33342d362e3837352d382e3533362d31322e3231392d372e313235632d352e33342c312e3430362d382e3532372c362e3837382d372e3132312c31322e3231380d0a0909094c3233352e33362c3239322e3739377a204d3233352e33362c3239322e373937222f3e0d0a09093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d382e3235382c3239392e39323263302e3835362c302e3232372c312e3731312c302e3333322c322e3535352c302e33333263342e34332c302c382e3438312d322e3936382c392e3636342d372e3435374c39342e3237342c31322e3535310d0a09090963312e3430362d352e3334332d312e3738352d31302e3831322d372e3132352d31322e323138632d352e33342d312e3430372d31302e3831322c312e3738352d31322e3231392c372e3132354c312e3133332c3238372e3730380d0a090909432d302e3236392c3239332e3034372c322e3931392c3239382e3531362c382e3235382c3239392e3932324c382e3235382c3239392e3932327a204d382e3235382c3239392e393232222f3e0d0a093c2f673e0d0a093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3132372e3931392c3234372e303938222f3e0d0a093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3133342e3931392c3137372e30393863302d352e3532332d312e3437372d31302d372d3130632d352e3532342c302d372c342e3437372d372c31307632362e30363363302c352e3532332c312e3437362c31302c372c31300d0a090963352e3532332c302c372d342e3437372c372d3130563137372e3039387a222f3e0d0a093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3133372e3931392c39372e303938222f3e0d0a093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3133372e3931392c31372e303938222f3e0d0a3c2f673e0d0a3c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3133342e3931392c39372e30393863302d352e3532332d312e3437372d31302d372d3130632d352e3532342c302d372c342e3437372d372c31307632362e30363363302c352e3532332c312e3437362c31302c372c31300d0a0963352e3532332c302c372d342e3437372c372d31305639372e3039387a222f3e0d0a3c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3133342e3931392c31372e30393863302d352e3532332d312e3437372d31302d372d3130632d352e3532342c302d372c342e3437372d372c31307632362e30363363302c352e3532332c312e3437362c31302c372c31300d0a0963352e3532332c302c372d342e3437372c372d31305631372e3039387a222f3e0d0a3c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3133342e3931392c3235372e30393863302d352e3532332d312e3437372d31302d372d3130632d352e3532342c302d372c342e3437372d372c31307632362e30363363302c352e3532332c312e3437362c31302c372c31300d0a0963352e3532332c302c372d342e3437372c372d3130563235372e3039387a222f3e0d0a3c2f7376673e0d0a	image/svg+xml
4100	Marquage au sol	1	4000	\N	7	\N	\N	\N
4101	Marquage de passage piéton	1	4100	174	27	\N	\N	\N
4102	Marquage routier 	1	4100	174	28	\N	\N	\N
4103	Marquage de stationnement	1	4100	174	29	\N	\N	\N
4104	Bande en relief pour mal voyants 	1	4100	174	26	\N	\N	\N
4200	Panneaux routiers	1	4000	\N	8	\N	\N	\N
4201	Panneau mal orienté	1	4200	174	31	\N	\N	\N
4202	Panneau endommagé	1	4200	174	30	\N	\N	\N
4203	Panneau manquant	1	4200	174	32	\N	\N	\N
4300	Feux tricolores 	1	4000	\N	4	\N	\N	\N
4301	Lampe éteinte ou cassée	1	4300	1475	14	\N	\N	\N
4302	Carrefour éteint	1	4300	1475	10	\N	\N	\N
4303	Feu tricolore mal orienté	1	4300	1475	13	\N	\N	\N
4304	Matériel détérioré	1	4300	1475	15	\N	\N	\N
5000	Dégradation du sol	0	\N	0	8	image?resource_type=image_type_signalement&#38;id=5000	\\x3c73766720786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f737667222069643d226465677261646174696f6e536f6c22207374796c653d22222076696577426f783d2230203020363338203535362e372220783d223070782220793d22307078222077696474683d22393022206865696768743d2239322220786d6c6e733a786d6c3d22687474703a2f2f7777772e77332e6f72672f584d4c2f313939382f6e616d6573706163652220786d6c3a73706163653d227072657365727665222076657273696f6e3d22312e31223e0a20202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7374796c6520747970653d22746578742f637373223e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202e7374307b66696c6c3a6e6f6e653b7d0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202e6465677261646174696f6e2d736f6c7b66696c6c3a233030303030303b7d0a20202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c2f7374796c653e0a20202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c673e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d227374302220643d224d203535302e38203331302e392063202d31362e322030202d32392e3420362e37202d33352e332031372e342063202d302e3620312e31202d312e3620332e3520322e3420332e3520682036362e39206320322e3820302032202d3220312e35202d322e392043203538302e37203331372e38203536372e34203331302e39203535302e38203331302e39205a22202f3e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d227374302220643d224d2039302e3720323232204820313537206320332e39203020322e31202d332e3220312e33202d342e372063202d362e32202d31302e32202d31382e39202d31362e33202d33342e36202d31362e332063202d31352e382030202d32382e3620362e33202d33342e382031362e352043203838203231392038362e37203232322039302e3720323232205a22202f3e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d226465677261646174696f6e2d736f6c2220643d224d203237332038322e38206320332e3920302036202d312e392036202d322e352073202d322e31202d322e35202d36202d322e352073202d3620312e39202d3620322e352053203236392e312038322e38203237332038322e38205a22202f3e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d226465677261646174696f6e2d736f6c2220643d224d203237332039312e38206320382e342030203135202d352e31203135202d31312e352073202d362e36202d31312e35202d3135202d31312e352073202d313520352e31202d31352031312e352053203236342e362039312e38203237332039312e38205a204d203237332037372e38206320332e392030203620312e39203620322e352073202d322e3120322e35202d3620322e352073202d36202d312e39202d36202d322e352053203236392e312037372e38203237332037372e38205a22202f3e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d226465677261646174696f6e2d736f6c2220643d224d203835203234312e33206820373420632031302e3220302031352e34202d342e332031372e39202d372e38206320332e34202d342e3720342e31202d313120322e31202d31372063202d372e33202d32312e34202d32382e35202d33342e37202d35352e34202d33342e372063202d32372e392030202d35302031342e36202d35362e322033372e332063202d302e3720322e37202d322e3720392e3720312e392031352e3820432037322e36203233392e322037372e39203234312e33203835203234312e33205a204d2038382e39203231372e36206320362e31202d31302e32203139202d31362e352033342e38202d31362e3520632031352e3820302032382e3520362e312033342e362031362e33206320302e3920312e3420322e3620342e37202d312e3320342e3720482039302e3720432038362e3720323232203838203231392038382e39203231372e36205a22202f3e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d226465677261646174696f6e2d736f6c2220643d224d203535302e38203239312e362063202d32372e392030202d35302031342e36202d35362e322033372e332063202d302e3720322e37202d322e3720392e3720312e392031352e38206320332e3320342e3320382e3520362e342031352e3720362e34206820373420632031302e3220302031352e34202d342e332031372e39202d372e38206320332e34202d342e3720342e31202d313120322e31202d31372043203539382e39203330342e39203537372e37203239312e36203535302e38203239312e36205a204d203538342e39203333312e392068202d36362e392063202d342030202d332e31202d322e34202d322e34202d332e35206320352e39202d31302e37203139202d31372e342033352e33202d31372e3420632031362e3720302032392e3920362e382033352e362031382043203538362e39203332392e39203538372e37203333312e39203538342e39203333312e39205a22202f3e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d226465677261646174696f6e2d736f6c2220643d224d203531362e39203430382e36206c202d343335203130332e37206c203231382e35202d3132312e31206320302e33202d302e3120302e35202d302e3320302e37202d302e35206320302e31202d302e3120302e32202d302e3120302e32202d302e32206320302e31202d302e3120302e33202d302e3220302e34202d302e33206320302e31202d302e3120302e32202d302e3120302e33202d302e32206320302e31202d302e3120302e32202d302e3220302e34202d302e33206320302e31202d302e3120302e32202d302e3220302e32202d302e32206320302e31202d302e3120302e32202d302e3320302e34202d302e34206320302e31202d302e3120302e31202d302e3120302e32202d302e32206320302e33202d302e3420302e36202d302e3920302e39202d312e342063203020302030202d302e3120302e31202d302e31206320302e31202d302e3220302e32202d302e3420302e33202d302e3620632030202d302e3120302e31202d302e3220302e31202d302e32206320302e31202d302e3220302e31202d302e3320302e32202d302e3520632030202d302e3120302e31202d302e3220302e31202d302e3320632030202d302e3120302e31202d302e3220302e31202d302e3320632030202d302e312030202d302e312030202d302e3120632030202d302e3220302e31202d302e3320302e31202d302e3520632030202d302e312030202d302e3320302e31202d302e3420632030202d302e322030202d302e332030202d302e3520632030202d302e312030202d302e332030202d302e3420632030202d302e312030202d302e332030202d302e3420632030202d302e312030202d302e332030202d302e3420632030202d302e312030202d302e33202d302e31202d302e3420632030202d302e312030202d302e33202d302e31202d302e3420632030202d302e31202d302e31202d302e33202d302e31202d302e3420632030202d302e31202d302e31202d302e33202d302e31202d302e3420632030202d302e31202d302e31202d302e33202d302e31202d302e342063202d302e31202d302e31202d302e31202d302e33202d302e32202d302e342063202d302e31202d302e31202d302e31202d302e32202d302e32202d302e342063202d302e31202d302e32202d302e31202d302e33202d302e32202d302e342063203020302030202d302e31202d302e31202d302e3120632030202d302e31202d302e31202d302e31202d302e31202d302e322063202d302e31202d302e31202d302e32202d302e33202d302e33202d302e342063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e342063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e342063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e34202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e322063202d302e31202d302e31202d302e33202d302e32202d302e34202d302e322063202d302e31202d302e31202d302e32202d302e31202d302e34202d302e322063202d302e31202d302e31202d302e33202d302e31202d302e34202d302e322063202d302e31202d302e31202d302e33202d302e31202d302e34202d302e322063202d302e312030202d302e33202d302e31202d302e34202d302e312063202d302e322030202d302e33202d302e31202d302e35202d302e312063202d302e312030202d302e322030202d302e32202d302e31204c2037302e3220333234206c20323435202d39332e3620632030203020302e31203020302e312030206320302e31203020302e32202d302e3120302e33202d302e31206320302e32202d302e3120302e35202d302e3220302e37202d302e33206320302e31202d302e3120302e32202d302e3120302e33202d302e32206320302e32202d302e3120302e35202d302e3320302e37202d302e34206320302e31202d302e3120302e31202d302e3120302e32202d302e32206320302e33202d302e3220302e36202d302e3420302e38202d302e3720632030203020302e31202d302e3120302e31202d302e31206320302e32202d302e3220302e34202d302e3420302e36202d302e37206320302e31202d302e3120302e31202d302e3220302e32202d302e32206320302e32202d302e3320302e34202d302e3620302e36202d302e3920632030203020302030203020302063203020302030203020302030206320302e31202d302e3320302e33202d302e3520302e34202d302e38206320302e31202d302e3120302e31202d302e3320302e32202d302e34206320302e31202d302e3120302e31202d302e3320302e32202d302e34206320302e31202d302e3220302e31202d302e3320302e31202d302e3520632030202d302e3120302e31202d302e3220302e31202d302e3320632030202d302e3220302e31202d302e3320302e31202d302e3520632030202d302e312030202d302e3220302e31202d302e3420632030202d302e312030202d302e332030202d302e3420632030202d302e312030202d302e332030202d302e3420632030202d302e312030202d302e322030202d302e3420632030202d302e322030202d302e332030202d302e3520632030202d302e312030202d302e322030202d302e3320632030202d302e322030202d302e34202d302e31202d302e3520632030202d302e31202d302e31202d302e33202d302e31202d302e3420632030202d302e31202d302e31202d302e33202d302e31202d302e342063202d302e31202d302e33202d302e32202d302e36202d302e33202d302e38206320302030203020302030203020632030202d302e312030202d302e31202d302e31202d302e322063202d302e31202d302e32202d302e32202d302e34202d302e33202d302e362063202d302e31202d302e31202d302e31202d302e32202d302e32202d302e332063202d302e31202d302e32202d302e32202d302e33202d302e33202d302e352063202d302e31202d302e31202d302e32202d302e32202d302e32202d302e332063202d302e31202d302e31202d302e32202d302e33202d302e33202d302e342063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e34202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e33202d302e32202d302e35202d302e342063202d302e31202d302e31202d302e32202d302e31202d302e32202d302e322063202d302e32202d302e31202d302e34202d302e33202d302e36202d302e34206320302030202d302e312030202d302e31202d302e31206c203020302063203020302030203020302030206c202d3132302e33202d3639206c203633202d31372e36206320342e38202d312e3320372e36202d362e3320362e33202d31312e312063202d312e33202d342e38202d362e33202d372e36202d31312e31202d362e33206c202d38332e372032332e342063202d302e312030202d302e3220302e31202d302e3320302e312063202d302e3220302e31202d302e3320302e31202d302e3520302e322063202d302e3120302e31202d302e3320302e31202d302e3420302e322063202d302e3120302e31202d302e3320302e31202d302e3420302e322063202d302e3120302e31202d302e3320302e31202d302e3420302e322063202d302e3120302e31202d302e3220302e31202d302e3420302e322063202d302e3120302e31202d302e3320302e32202d302e3420302e332063202d302e3120302e31202d302e3220302e32202d302e3320302e322063202d302e3120302e31202d302e3220302e32202d302e3320302e332063202d302e3120302e31202d302e3220302e32202d302e3320302e332063202d302e3120302e31202d302e3220302e32202d302e3320302e332063202d302e3120302e31202d302e3220302e32202d302e3320302e332063202d302e3120302e31202d302e3220302e32202d302e3320302e342063202d302e3120302e31202d302e3220302e32202d302e3220302e332063202d302e3120302e32202d302e3220302e33202d302e3320302e352063203020302e31202d302e3120302e32202d302e3220302e3220632030203020302030203020302063202d302e3120302e32202d302e3220302e34202d302e3320302e362063203020302e31202d302e3120302e32202d302e3120302e322063202d302e3120302e32202d302e3220302e35202d302e3320302e372063202d302e3120302e32202d302e3120302e33202d302e3120302e352063203020302e31202d302e3120302e32202d302e3120302e342063203020302e32202d302e3120302e33202d302e3120302e352063203020302e31202d302e3120302e33202d302e3120302e342063203020302e31203020302e33203020302e342063203020302e32203020302e33203020302e352063203020302e31203020302e33203020302e342063203020302e32203020302e33203020302e352063203020302e32203020302e3420302e3120302e362063203020302e31203020302e3320302e3120302e342063203020302e3220302e3120302e3520302e3220302e372063203020302030203020302030206320302e3120302e3320302e3220302e3520302e3220302e38206320302030203020302e31203020302e31206320302e3120302e3220302e3220302e3420302e3320302e372063203020302e3120302e3120302e3120302e3120302e32206320302e3120302e3220302e3220302e3320302e3320302e352063203020302e3120302e3120302e3220302e3120302e32206320302e3120302e3220302e3220302e3320302e3320302e35206320302e3120302e3120302e3120302e3220302e3220302e32206320302e3120302e3120302e3220302e3320302e3420302e34206320302e3120302e3120302e3120302e3120302e3220302e32206320302e3220302e3220302e3420302e3420302e3520302e352063203020302030203020302e3120302e31206320302e3220302e3220302e3420302e3320302e3620302e35206320302e31203020302e3120302e3120302e3220302e31206320302e3220302e3120302e3320302e3220302e3520302e3320632030203020302e3120302e3120302e3120302e31206c203132322e352037302e33204c2033352e38203331372e3920632030203020302030203020302063202d302e3220302e31202d302e3420302e32202d302e3620302e322063202d302e312030202d302e3220302e31202d302e3320302e312063202d302e312030202d302e3220302e31202d302e3320302e312063202d302e3620302e34202d312e3220302e38202d312e3820312e33206320302030202d302e3120302e31202d302e3120302e312063202d302e3120302e31202d302e3220302e33202d302e3420302e342063202d302e3120302e31202d302e3220302e32202d302e3220302e332063202d302e3120302e31202d302e3120302e32202d302e3220302e332063202d302e3120302e31202d302e3220302e33202d302e3320302e34206320302030203020302e31202d302e3120302e312063202d302e3420302e36202d302e3720312e32202d3120312e392063203020302e31202d302e3120302e32202d302e3120302e332063203020302e31202d302e3120302e32202d302e3120302e332063202d302e3120302e32202d302e3120302e34202d302e3220302e3620632030203020302030203020302063203020302e31203020302e32203020302e322063203020302e32202d302e3120302e34202d302e3120302e362063203020302e31203020302e32203020302e332063203020302e32203020302e34203020302e352063203020302e31203020302e33203020302e342063203020302e32203020302e33203020302e352063203020302e32203020302e3320302e3120302e352063203020302e31203020302e3320302e3120302e342063203020302e3220302e3120302e3420302e3120302e352063203020302e31203020302e3220302e3120302e33206320302e3120302e3220302e3120302e3420302e3220302e362063203020302e31203020302e3120302e3120302e322063203020302030203020302030206320302e3120302e3420302e3320302e3820302e3520312e312063203020302e3120302e3120302e3220302e3120302e33206320302e3220302e3320302e3420302e3720302e3720312063203020302e3120302e3120302e3120302e3120302e32206320302e3220302e3320302e3420302e3520302e3720302e37206320302e3120302e3120302e3120302e3120302e3220302e32206320302e3320302e3320302e3620302e3520302e3920302e37206320302e31203020302e3120302e3120302e3220302e31206320302e3320302e3220302e3620302e3420302e3920302e35206320302e31203020302e3120302e3120302e3220302e31206320302e3420302e3220302e3720302e3320312e3120302e34206320302e31203020302e32203020302e3220302e31206320302e32203020302e3320302e3120302e3520302e31204c203237302e3920333837204c2031352e36203532382e35206320302030202d302e312030202d302e3120302063202d302e3220302e31202d302e3420302e32202d302e3520302e332063202d302e3120302e31202d302e3220302e31202d302e3220302e322063202d302e3220302e31202d302e3320302e32202d302e3420302e332063202d302e3120302e31202d302e3220302e31202d302e3320302e322063202d302e3120302e31202d302e3220302e32202d302e3320302e332063202d302e3120302e31202d302e3220302e32202d302e3320302e332063202d302e3120302e31202d302e3220302e32202d302e3220302e332063202d302e3120302e31202d302e3220302e33202d302e3320302e342063202d302e3120302e31202d302e3120302e32202d302e3220302e332063202d302e3120302e31202d302e3220302e33202d302e3320302e342063202d302e3120302e31202d302e3120302e32202d302e3220302e332063202d302e3120302e31202d302e3220302e33202d302e3220302e342063202d302e3120302e31202d302e3120302e33202d302e3220302e342063202d302e3120302e31202d302e3120302e33202d302e3220302e342063202d302e3120302e32202d302e3120302e33202d302e3220302e352063203020302e31202d302e3120302e32202d302e3120302e332063203020302e32202d302e3120302e34202d302e3120302e352063203020302e31203020302e32202d302e3120302e332063203020302e32202d302e3120302e34202d302e3120302e352063203020302e31203020302e32203020302e332063203020302e32203020302e33203020302e352063203020302e31203020302e33203020302e342063203020302e31203020302e33203020302e342063203020302e32203020302e34203020302e352063203020302e31203020302e32203020302e332063203020302e3220302e3120302e3420302e3120302e36206320302030203020302e31203020302e312063203020302e3120302e3120302e3220302e3120302e332063203020302e3120302e3120302e3320302e3120302e34206320302e3120302e3220302e3220302e3520302e3220302e37206320302030203020302e31203020302e31206320302e3120302e3320302e3220302e3520302e3420302e3820632030203020302030203020302063203020302030203020302030206320302e3220302e3320302e3420302e3620302e3620302e39206320302030203020302e3120302e3120302e31206320302e3220302e3320302e3520302e3620302e3720302e38206320302e3120302e3120302e3120302e3120302e3220302e32206320302e3220302e3220302e3520302e3520302e3820302e3720632030203020302e3120302e3120302e3120302e31206320302e3220302e3220302e3520302e3320302e3720302e35206320302e31203020302e3120302e3120302e3220302e31206320302e3320302e3220302e3620302e3320302e3920302e34206320302e31203020302e31203020302e3220302e31206320302e3320302e3120302e3620302e3220302e3920302e332063203020302030203020302e312030206320302e3320302e3120302e3720302e32203120302e32206320302e31203020302e31203020302e322030206320302e34203020302e3720302e3120312e3120302e3120632030203020302030203020302063203020302030203020302030206320302e31203020302e32203020302e322030206320302e33203020302e35203020302e38202d302e31206320302e32203020302e34202d302e3120302e36202d302e31206320302e32203020302e33203020302e35202d302e31206c20302e3120302063203020302030203020302030206c203439382e39202d313139206320342e38202d312e3220372e38202d3620362e37202d31302e382043203532362e36203431302e34203532312e37203430372e34203531362e39203430382e36205a22202f3e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d226465677261646174696f6e2d736f6c2220643d224d203632312e332031392e3520632030202d302e312030202d302e332030202d302e3420632030202d302e322030202d302e33202d302e31202d302e3520632030202d302e312030202d302e32202d302e31202d302e3320632030202d302e32202d302e31202d302e34202d302e31202d302e3620632030202d302e312030202d302e312030202d302e32206320302030203020302030202d302e312063202d302e31202d302e32202d302e31202d302e34202d302e32202d302e3620632030202d302e31202d302e31202d302e32202d302e31202d302e332063202d302e31202d302e31202d302e31202d302e33202d302e32202d302e342063202d302e31202d302e31202d302e31202d302e33202d302e32202d302e342063202d302e31202d302e31202d302e31202d302e32202d302e32202d302e332063202d302e31202d302e32202d302e32202d302e33202d302e33202d302e35206320302030203020302030202d302e3120632030202d302e31202d302e31202d302e31202d302e31202d302e322063202d302e31202d302e32202d302e32202d302e33202d302e33202d302e352063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e322063202d302e31202d302e31202d302e33202d302e32202d302e34202d302e332063202d302e31202d302e31202d302e32202d302e31202d302e33202d302e322063202d302e32202d302e31202d302e33202d302e32202d302e35202d302e332063202d302e31202d302e31202d302e32202d302e31202d302e33202d302e322063202d302e32202d302e31202d302e33202d302e32202d302e35202d302e322063202d302e31202d302e31202d302e32202d302e31202d302e33202d302e322063202d302e31202d302e31202d302e33202d302e31202d302e34202d302e322063202d302e312030202d302e33202d302e31202d302e34202d302e312063202d302e312030202d302e33202d302e31202d302e34202d302e312063202d302e322030202d302e33202d302e31202d302e35202d302e312063202d302e312030202d302e322030202d302e33202d302e312063202d302e322030202d302e33202d302e31202d302e35202d302e312063202d302e312030202d302e322030202d302e3320302063202d302e322030202d302e332030202d302e3520302063202d302e312030202d302e332030202d302e3420302063202d302e322030202d302e332030202d302e3520302063202d302e322030202d302e332030202d302e3520302e312063202d302e312030202d302e322030202d302e3420302e312063202d302e322030202d302e3420302e31202d302e3620302e312063202d302e312030202d302e312030202d302e322030204c203239332e362039392e342063202d342e3820312e33202d372e3620362e33202d362e332031312e31206320312e31203420342e3720362e3620382e3720362e36206320302e38203020312e36202d302e3120322e34202d302e33206c203236332e38202d37332e36204c203430352e39203134392e39206320302030202d302e3120302e31202d302e3120302e312063202d302e3120302e31202d302e3220302e32202d302e3320302e322063202d302e3120302e31202d302e3320302e32202d302e3420302e332063202d302e3120302e31202d302e3220302e32202d302e3320302e332063202d302e3120302e31202d302e3220302e32202d302e3420302e342063202d302e3120302e31202d302e3220302e32202d302e3220302e332063202d302e3120302e31202d302e3220302e33202d302e3320302e342063202d302e3120302e31202d302e3120302e32202d302e3220302e332063202d302e3120302e31202d302e3220302e33202d302e3320302e342063202d302e3120302e31202d302e3120302e32202d302e3220302e332063202d302e3120302e31202d302e3220302e33202d302e3220302e342063202d302e3120302e31202d302e3120302e32202d302e3220302e342063202d302e3120302e31202d302e3120302e33202d302e3220302e342063203020302e31202d302e3120302e32202d302e3120302e342063202d302e3120302e32202d302e3120302e33202d302e3120302e35206320302030203020302e31203020302e312063203020302e31203020302e32202d302e3120302e332063203020302e32202d302e3120302e33202d302e3120302e352063203020302e31203020302e33202d302e3120302e342063203020302e31203020302e33203020302e342063203020302e32203020302e33203020302e352063203020302e31203020302e33203020302e342063203020302e32203020302e33203020302e352063203020302e31203020302e33203020302e342063203020302e31203020302e3320302e3120302e342063203020302e3120302e3120302e3320302e3120302e342063203020302e3120302e3120302e3320302e3120302e342063203020302e3120302e3120302e3320302e3120302e342063203020302e3120302e3120302e3320302e3120302e34206320302e3120302e3120302e3120302e3320302e3220302e34206320302e3120302e3120302e3120302e3320302e3220302e34206320302e3120302e3120302e3120302e3320302e3220302e34206320302e3120302e3120302e3220302e3320302e3320302e342063203020302e3120302e3120302e3120302e3120302e32206320302030203020302e3120302e3120302e31206320302e3220302e3320302e3420302e3520302e3620302e382063203020302030203020302030206320302e3220302e3320302e3520302e3520302e3720302e37206320302e3120302e3120302e3220302e3120302e3220302e32206320302e3220302e3120302e3420302e3320302e3520302e34206320302e3120302e3120302e3220302e3120302e3320302e32206320302e3220302e3120302e3420302e3220302e3620302e34206320302e3120302e3120302e3220302e3120302e3320302e32206320302e3220302e3120302e3520302e3220302e3820302e33206320302e31203020302e31203020302e3220302e31206320302e3320302e3120302e3620302e3220302e3920302e33206c203136372e352034322e37206c202d3230332039342063203020302030203020302030206c2030203020632030203020302030203020302063202d302e3320302e31202d302e3520302e32202d302e3720302e342063202d302e3120302e31202d302e3220302e31202d302e3320302e322063202d302e3220302e31202d302e3320302e32202d302e3520302e332063202d302e3120302e31202d302e3320302e32202d302e3420302e332063202d302e3120302e31202d302e3220302e31202d302e3320302e322063202d302e3220302e32202d302e3420302e33202d302e3520302e35206320302030202d302e3120302e31202d302e3120302e312063202d302e3420302e35202d302e3820302e39202d312e3120312e352063203020302e31202d302e3120302e32202d302e3120302e322063202d302e3120302e32202d302e3220302e34202d302e3320302e352063202d302e3120302e32202d302e3220302e34202d302e3220302e352063203020302e31202d302e3120302e32202d302e3120302e332063202d302e3120302e32202d302e3120302e34202d302e3220302e362063203020302e31202d302e3120302e32202d302e3120302e332063203020302e32202d302e3120302e34202d302e3120302e352063203020302e31203020302e32202d302e3120302e332063203020302e31203020302e33203020302e342063203020302e31203020302e33203020302e342063203020302e31203020302e32203020302e332063203020302e32203020302e34203020302e352063203020302e31203020302e32203020302e332063203020302e32203020302e3420302e3120302e362063203020302e31203020302e32203020302e322063203020302e3220302e3120302e3420302e3120302e362063203020302e3120302e3120302e3320302e3120302e342063203020302e3120302e3120302e3320302e3120302e34206320302e3220302e3720302e3520312e3320302e3920312e392063203020302e3120302e3120302e3220302e3120302e32206320302e3220302e3320302e3420302e3620302e3720302e3920632030203020302e3120302e3120302e3120302e31206320302e3220302e3220302e3520302e3520302e3720302e37206320302e3120302e3120302e3220302e3220302e3320302e33206320302e3120302e3120302e3220302e3120302e3220302e32206c203130382e392038312e36206320312e3620312e3220332e3520312e3820352e3420312e38206320322e37203020352e34202d312e3220372e32202d332e3620632033202d3420322e32202d392e36202d312e38202d31322e36206c202d39362e38202d37322e35206c203231322e33202d39382e33206320302e31203020302e31202d302e3120302e32202d302e31206320302e32202d302e3120302e33202d302e3220302e35202d302e33206320302e31202d302e3120302e32202d302e3120302e33202d302e32206320302e31202d302e3120302e33202d302e3220302e34202d302e33206320302e31202d302e3120302e32202d302e3120302e33202d302e32206320302e32202d302e3120302e33202d302e3220302e35202d302e34206320302e31202d302e3120302e32202d302e3220302e33202d302e32206320302e32202d302e3120302e33202d302e3320302e35202d302e35206320302e31202d302e3120302e31202d302e3120302e32202d302e32206320302e31202d302e3120302e32202d302e3320302e33202d302e34206320302e31202d302e3120302e31202d302e3220302e32202d302e32206320302e31202d302e3220302e32202d302e3320302e33202d302e3520632030202d302e3120302e31202d302e3120302e31202d302e32206320302e31202d302e3220302e32202d302e3320302e33202d302e3520632030202d302e3120302e31202d302e3120302e31202d302e32206320302e31202d302e3220302e32202d302e3420302e32202d302e3620632030202d302e3120302e31202d302e3120302e31202d302e32206320302e31202d302e3220302e31202d302e3420302e32202d302e3620632030202d302e312030202d302e3120302e31202d302e32206320302030203020302030203020632030202d302e312030202d302e3220302e31202d302e3320632030202d302e3220302e31202d302e3420302e31202d302e3620632030202d302e312030202d302e332030202d302e3420632030202d302e322030202d302e332030202d302e3520632030202d302e312030202d302e332030202d302e3420632030202d302e322030202d302e332030202d302e3520632030202d302e312030202d302e332030202d302e3420632030202d302e312030202d302e332030202d302e3420632030202d302e32202d302e31202d302e33202d302e31202d302e3520632030202d302e312030202d302e33202d302e31202d302e3420632030202d302e32202d302e31202d302e33202d302e31202d302e3520632030202d302e31202d302e31202d302e32202d302e31202d302e342063202d302e31202d302e32202d302e31202d302e34202d302e32202d302e3620632030202d302e31202d302e31202d302e32202d302e31202d302e3320632030203020302030203020302063202d302e31202d302e32202d302e32202d302e34202d302e33202d302e362063202d302e32202d302e33202d302e33202d302e35202d302e35202d302e38206320302030202d302e31202d302e31202d302e31202d302e312063202d302e31202d302e32202d302e33202d302e33202d302e34202d302e352063202d302e31202d302e31202d302e31202d302e31202d302e31202d302e322063202d302e31202d302e31202d302e33202d302e33202d302e34202d302e342063202d302e31202d302e31202d302e31202d302e32202d302e32202d302e322063202d302e31202d302e31202d302e32202d302e32202d302e34202d302e332063202d302e31202d302e31202d302e32202d302e32202d302e33202d302e332063202d302e31202d302e31202d302e32202d302e31202d302e33202d302e322063202d302e31202d302e31202d302e33202d302e32202d302e34202d302e332063202d302e31202d302e31202d302e32202d302e31202d302e33202d302e312063202d302e32202d302e31202d302e33202d302e32202d302e35202d302e332063202d302e312030202d302e32202d302e31202d302e33202d302e312063202d302e32202d302e31202d302e35202d302e32202d302e37202d302e332063202d302e32202d302e31202d302e34202d302e31202d302e37202d302e322063203020302030203020302030206c202d3137322e37202d34342e31204c203631372e342032372e33206320302e31203020302e31202d302e3120302e32202d302e31206320302e32202d302e3120302e33202d302e3220302e35202d302e33206320302e31202d302e3120302e32202d302e3220302e33202d302e33206320302e31202d302e3120302e32202d302e3220302e34202d302e33206320302e31202d302e3120302e32202d302e3220302e33202d302e33206320302e31202d302e3120302e32202d302e3220302e33202d302e33206320302e31202d302e3120302e32202d302e3320302e33202d302e34206320302e31202d302e3120302e31202d302e3220302e32202d302e33206320302e31202d302e3120302e32202d302e3320302e33202d302e34206320302e31202d302e3120302e31202d302e3220302e32202d302e33206320302e31202d302e3120302e32202d302e3320302e32202d302e35206320302e31202d302e3120302e31202d302e3220302e32202d302e33206320302e31202d302e3120302e31202d302e3320302e32202d302e3420632030202d302e3120302e31202d302e3320302e31202d302e3420632030202d302e3120302e31202d302e3320302e31202d302e3420632030202d302e3220302e31202d302e3320302e31202d302e3520632030202d302e312030202d302e3220302e31202d302e3420632030202d302e3220302e31202d302e3320302e31202d302e3520632030202d302e312030202d302e322030202d302e3420632030202d302e322030202d302e332030202d302e352043203632312e332031392e38203632312e332031392e37203632312e332031392e35205a22202f3e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d226465677261646174696f6e2d736f6c2220643d224d203238332e35203439372e382063202d332e392030202d3620312e39202d3620322e35207320322e3120322e35203620322e3520732036202d312e392036202d322e352053203238372e34203439372e38203238332e35203439372e38205a22202f3e0a2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c7061746820636c6173733d226465677261646174696f6e2d736f6c2220643d224d203238332e35203438382e382063202d382e342030202d313520352e31202d31352031312e35207320362e362031312e352031352031312e352073203135202d352e31203135202d31312e352053203239312e39203438382e38203238332e35203438382e38205a204d203238332e35203530322e382063202d332e392030202d36202d312e39202d36202d322e35207320322e31202d322e352036202d322e352073203620312e39203620322e352053203238372e34203530322e38203238332e35203530322e38205a22202f3e0a20202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c2f673e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c2f7376673e	image/svg+xml
5100	Chaussées	1	4000	\N	2	\N	\N	\N
5101	Affaissement, trou, bosse, pavé arraché	1	5100	174	5	\N	\N	\N
5102	Revêtement manquant après travaux	0	5100	174	2	\N	\N	\N
5103	Revêtement manquant	1	5100	174	6	\N	\N	\N
5200	Trottoirs	1	4000	\N	9	\N	\N	\N
5201	Affaissement, trou, bosse, pavé arraché	1	5200	174	33	\N	\N	\N
5202	Bosse	0	5200	174	2	\N	\N	\N
5203	Revêtement manquant après travaux	0	5200	174	3	\N	\N	\N
5204	Revêtement manquant	1	5200	174	35	\N	\N	\N
5205	Bordure / caniveau endommagé	1	5200	174	34	\N	\N	\N
5300	Escaliers	1	4000	\N	3	\N	\N	\N
5301	Marche dangereuse	1	5300	174	7	\N	\N	\N
5302	Rampe / main-courante endommagée	1	5300	174	8	\N	\N	\N
5400	Aire de jeux ou de sports	0	5000	94	4	image?resource_type=image_type_signalement&#38;id=5400	\N	\N
6000	Éclairage / Électricité	1	\N	0	5	image?resource_type=image_type_signalement&#38;id=6000	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2269736f2d383835392d31223f3e0d0a3c212d2d2047656e657261746f723a2041646f626520496c6c7573747261746f722031392e312e302c20535647204578706f727420506c75672d496e202e205356472056657273696f6e3a20362e3030204275696c6420302920202d2d3e0d0a3c7376672076657273696f6e3d22312e31222069643d22466f726d615f312220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220d0a092076696577426f783d22302030203238352036313222207374796c653d22656e61626c652d6261636b67726f756e643a6e65772030203020323835203631323b2220786d6c3a73706163653d227072657365727665223e0d0a3c70617468207374796c653d2266696c6c2d72756c653a6576656e6f64643b636c69702d72756c653a6576656e6f64643b66696c6c3a234146414641463b2220643d224d3238352e3235342c3138382e383435632d352e3530312d32312e3135382d32322e3939372d33382e3435312d34362e3030352d34372e3638370d0a09762d31362e38343563302d31372e38322d31322e3235392d33322e3833312d32382e3739322d33372e303663302e3034392d302e3339312c302e3038332d302e3738362c302e3038332d312e3139433231302e3533392c33382e3630372c3137312e3930322c302c3132342e34312c300d0a094337362e3931382c302c33382e3238312c33382e3630372c33382e3238312c38362e3036337639372e3237632d31312e3133382c332e3934382d31392e31342c31342e3537372d31392e31342c32372e303433763338322e35682d392e3537632d352e3238352c302d392e35372c342e3238322d392e35372c392e3536330d0a0963302c352e3238312c342e3238352c392e3536332c392e35372c392e3536334838362e313363352e3238352c302c392e35372d342e3238322c392e35372d392e35363363302d352e3238312d342e3238352d392e3536332d392e35372d392e353633682d392e3537762d3338322e350d0a0963302d31322e3436362d382e3030322d32332e3039352d31392e31342d32372e303433762d39372e323763302d33362e3930392c33302e3035322d36362e3933382c36362e39392d36362e3933387336362e3938392c33302e3032392c36362e3938392c36362e3933380d0a0963302c302e3430342c302e3033342c302e382c302e3038332c312e3139632d31362e3533332c342e3232392d32382e3739312c31392e32342d32382e3739312c33372e30367631362e383437632d32332e3030382c392e3233352d34302e3530322c32362e3532392d34362e3030352c34372e3638370d0a09632d302e3734352c322e3836342d302e3132312c352e3931332c312e3639332c382e32353563312e3831322c322e3334322c342e3630382c332e3731332c372e35372c332e3731336832382e323138762d302e3030316832372e36363468392e3030336832392e3237370d0a0963302c31302e3534352d382e3538372c31392e3132352d31392e31342c31392e313235632d362e3538352c302d31322e3430342d332e3334322d31352e3834392d382e343137682d32302e38393363342e3634372c31352e3839342c31392e3335342c32372e3534332c33362e3734322c32372e3534330d0a096332312e3130382c302c33382e32382d31372e3135392c33382e32382d33382e32356833362e37343363322e3936332c302c352e3735372d312e3337312c372e35372d332e373133433238352e3337352c3139342e3735382c3238352e3939392c3139312e37312c3238352e3235342c3138382e3834357a0d0a09204d35372e3432322c3539322e383735682d31392e3134563533352e356831392e3134563539322e3837357a204d35372e3432322c3231302e33373576333036682d31392e3134762d33303663302d352e3237332c342e3239322d392e3536322c392e35372d392e3536320d0a094335332e3132382c3230302e3831332c35372e3432322c3230352e3130322c35372e3432322c3231302e3337357a204d3138312e3833312c3132342e33313363302d31302e3534352c382e3538372d31392e3132352c31392e31342d31392e3132350d0a096331302e3535332c302c31392e31342c382e35382c31392e31342c31392e3132357631312e333137632d362e3138362d312e3134342d31322e3539352d312e3735352d31392e31342d312e373535732d31322e3935342c302e3631312d31392e31342c312e373535563132342e3331337a0d0a09204d3134302e3437312c3138312e3638386331302e3930352d31372e3136312c33342e3234362d32382e3638382c36302e352d32382e3638386332362e3235342c302c34392e3539342c31312e3532362c36302e352c32382e363838483134302e3437317a222f3e0d0a3c2f7376673e0d0a	image/svg+xml
6010	Éclairage éteint la nuit	1	6000	1475	2	\N	\N	\N
6020	Éclairage allumé le jour	1	6000	1475	1	\N	\N	\N
6030	Fils électriques apparents sur lampadaire ou sur armoire électrique	1	6000	1475	3	\N	\N	\N
6040	Lampadaire en mauvais état	1	6000	1475	4	\N	\N	\N
7000	Mobiliers urbains dégradés (arrachés, cassés, tordus, bancals, en panne…)	1	\N	0	7	image?resource_type=image_type_signalement&#38;id=7000	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2269736f2d383835392d31223f3e0d0a3c212d2d2047656e657261746f723a2041646f626520496c6c7573747261746f722031392e312e302c20535647204578706f727420506c75672d496e202e205356472056657273696f6e3a20362e3030204275696c6420302920202d2d3e0d0a3c7376672076657273696f6e3d22312e31222069643d2253686170655f315f315f2220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220d0a092076696577426f783d22302030203531322035313222207374796c653d22656e61626c652d6261636b67726f756e643a6e65772030203020353132203531323b2220786d6c3a73706163653d227072657365727665223e0d0a3c672069643d2253686170655f31223e0d0a093c673e0d0a09093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3131312e3038362c3239302e313333683335382e32363363342e3731372c302c382e35332d332e3832332c382e35332d382e353333762d33342e31333363302d342e37312d332e3831332d382e3533332d382e35332d382e3533330d0a090909682d34322e363531563233302e3463302d342e37312d332e3831332d382e3533332d382e35332d382e353333632d342e3731372c302d382e35332c332e3832332d382e35332c382e35333376382e353333483137302e373937563233302e3463302d342e37312d332e3832322d382e3533332d382e35332d382e3533330d0a090909632d342e3730382c302d382e35332c332e3832332d382e35332c382e35333376382e353333682d34322e363531632d342e3730382c302d382e35332c332e3832332d382e35332c382e353333563238312e360d0a090909433130322e3535372c3238362e33312c3130362e3337382c3239302e3133332c3131312e3038362c3239302e3133337a204d3131392e3631362c323536483436302e38327631372e303637483131392e363136563235367a204d3131312e3038362c3335382e34683335382e3236330d0a09090963342e3731372c302c382e35332d332e3832332c382e35332d382e353333762d33342e31333363302d342e37312d332e3831332d382e3533332d382e35332d382e353333682d34322e363531762d382e35333363302d342e37312d332e3831332d382e3533332d382e35332d382e3533330d0a090909632d342e3731372c302d382e35332c332e3832332d382e35332c382e35333376382e353333483137302e373937762d382e35333363302d342e37312d332e3832322d382e3533332d382e35332d382e353333632d342e3730382c302d382e35332c332e3832332d382e35332c382e35333376382e3533330d0a090909682d34322e363531632d342e3730382c302d382e35332c332e3832332d382e35332c382e3533337633342e313333433130322e3535372c3335342e3537372c3130362e3337382c3335382e342c3131312e3038362c3335382e347a204d3131392e3631362c3332342e323636483436302e38327631372e3036370d0a090909483131392e363136563332342e3236367a204d382e3736372c3131312e37383763302e3433352c342e3336312c342e3130332c372e36382c382e3438382c372e36386835312e31383163342e3338342c302c382e3035322d332e3331392c382e3438382d372e36386c382e35332d38352e3333330d0a09090963302e3233392d322e3430362d302e3534362d342e3738372d322e3136362d362e353739632d312e3631322d312e3738342d332e3930362d322e3830372d362e3332312d322e3830374835312e33373556382e35333363302d342e37312d332e3832322d382e3533332d382e35332d382e3533330d0a090909632d342e3730382c302d382e35332c332e3832332d382e35332c382e35333376382e35333348382e373235632d322e3431342c302d342e3730382c312e3032342d362e3332312c322e38303743302e3738342c32312e3636352c302c32342e3034362c302e3233382c32362e3435324c382e3736372c3131312e3738370d0a0909097a204d36372e35342c33342e3133334c36302e3731362c3130322e344832342e3937344c31382e31352c33342e3133334836372e35347a204d3530332e3437312c3439342e393333483336362e393838632d342e3731372c302d382e35332c332e3832332d382e35332c382e3533330d0a09090963302c342e37312c332e3831332c382e3533332c382e35332c382e353333483530332e343763342e3731372c302c382e35332d332e3832332c382e35332d382e353333433531312e3939392c3439382e3735362c3530382e3138382c3439342e3933332c3530332e3437312c3439342e3933337a0d0a090909204d3530332e3437312c3337352e343637483432362e37762d382e35333363302d342e37312d332e3831332d382e3533332d382e35332d382e353333632d342e3731372c302d382e35332c332e3832332d382e35332c382e35333376382e353333483137302e373937762d382e3533330d0a09090963302d342e37312d332e3832322d382e3533332d382e35332d382e353333632d342e3730382c302d382e35332c332e3832332d382e35332c382e35333376382e3533334837362e393635632d342e3730382c302d382e35332c332e3832332d382e35332c382e3533337633342e3133330d0a09090963302c342e37312c332e3832322c382e3533332c382e35332c382e3533336832352e35397634322e36363763302c342e37312c332e3832322c382e3533332c382e35332c382e35333363342e3730382c302c382e35332d332e3832332c382e35332d382e353333762d34322e363637483436302e38327634322e3636370d0a09090963302c342e37312c332e3831332c382e3533332c382e35332c382e35333373382e35332d332e3832332c382e35332d382e353333762d34322e3636376832352e353963342e3731372c302c382e35332d332e3832332c382e35332d382e353333563338340d0a090909433531322c3337392e32392c3530382e3138382c3337352e3436372c3530332e3437312c3337352e3436377a204d3439342e39342c3430392e364838352e343935762d31372e303637483439342e3934563430392e367a204d3132382e3134362c3439342e3933334835312e333735563134352e3036370d0a09090963302d342e37312d332e3832322d382e3533332d382e35332d382e353333632d342e3730382c302d382e35332c332e3832332d382e35332c382e353333763334392e38363748382e373235632d342e3730382c302d382e35332c332e3832332d382e35332c382e3533330d0a09090963302c342e37312c332e3832312c382e3533332c382e3532392c382e353333683131392e34323263342e3730382c302c382e35332d332e3832332c382e35332d382e353333433133362e3637362c3439382e3735372c3133322e3835342c3439342e3933332c3132382e3134362c3439342e3933337a0d0a090909204d3333322e3836382c3439342e393333682d31372e303631632d342e3731372c302d382e35332c332e3832332d382e35332c382e35333363302c342e37312c332e3831332c382e3533332c382e35332c382e3533336831372e30363163342e3731372c302c382e35332d332e3832332c382e35332d382e3533330d0a090909433334312e3339382c3439382e3735362c3333372e3538352c3439342e3933332c3333322e3836382c3439342e3933337a204d3236342e3632372c3439342e393333682d38352e333031632d342e3730382c302d382e35332c332e3832332d382e35332c382e3533330d0a09090963302c342e37312c332e3832322c382e3533342c382e35332c382e3533346838352e33303163342e3731372c302c382e35332d332e3832332c382e35332d382e353333433237332e3135372c3439382e3735372c3236392e3334342c3439342e3933332c3236342e3632372c3439342e3933337a222f3e0d0a093c2f673e0d0a3c2f673e0d0a3c2f7376673e0d0a	image/svg+xml
7100	Mobiliers de protection 	1	7000	\N	3	\N	\N	\N
7101	Potelet, barrière ou garde-corps 	1	7100	174	11	\N	\N	\N
7102	Barrière et garde-corps	0	7100	174	2	\N	\N	\N
7103	Borne en pierre ou amovible 	1	7100	174	9	\N	\N	\N
7104	Borne amovible 	0	7100	174	4	\N	\N	\N
7105	Grillage bas autour de végétaux	1	7100	1	10	\N	\N	\N
7300	WC publics 	1	7000	0	6	\N	\N	\N
7301	Sanisette sale, en panne ou présentant une fuite d'eau	1	7300	1488	31	\N	\N	\N
7302	Autre WC public sale, en panne ou présentant une fuite d'eau	1	7300	1520	32	\N	\N	\N
7400	Eau qui coule	0	7000	\N	8	\N	\N	\N
7500	Trappes ou grilles au sol	1	7000	\N	5	\N	\N	\N
7501	Grille de caniveau sur trottoir	1	7500	174	29	\N	\N	\N
7502	Grille d'arbre	0	7500	174	2	\N	\N	\N
7503	Avaloir, bouche ou grille d'égout	1	7500	108	28	\N	\N	\N
7504	Trappe d'égout	0	7500	108	4	\N	\N	\N
7505	Autre trappe ou grille au sol	1	7500	174	30	\N	\N	\N
8000	Gênes à la circulation des piétons	1	4000	\N	6	\N	\N	\N
8100	Terrasse à usage commercial / étalage excessif 	1	8000	1517	23	\N	\N	\N
8200	Corbeille de rue gênante	1	8000	108	19	\N	\N	\N
8300	Colonne à verre gênante	1	8000	108	18	\N	\N	\N
8400	Présence de neige ou de glace	1	8000	108	21	\N	\N	\N
8500	Autre mobilier urbain gênant	1	8000	174	24	\N	\N	\N
9000	Arbres, végétaux et animaux	1	\N	0	8	image?resource_type=image_type_signalement&#38;id=9000	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2269736f2d383835392d31223f3e0d0a3c212d2d2047656e657261746f723a2041646f626520496c6c7573747261746f722031392e312e302c20535647204578706f727420506c75672d496e202e205356472056657273696f6e3a20362e3030204275696c6420302920202d2d3e0d0a3c7376672076657273696f6e3d22312e31222069643d2243616c7175655f312220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220d0a092076696577426f783d22302030203438392e3834203337382e39373422207374796c653d22656e61626c652d6261636b67726f756e643a6e657720302030203438392e3834203337382e3937343b2220786d6c3a73706163653d227072657365727665223e0d0a3c673e0d0a093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3136362e3436352c34382e36393363302c362e3030382d342e3837312c31302e3837392d31302e3837392c31302e383739632d362e3031322c302d31302e3838332d342e3837312d31302e3838332d31302e3837390d0a090963302d362e3030382c342e3837312d31302e3837392c31302e3838332d31302e383739433136312e3539342c33372e3831342c3136362e3436352c34322e3638352c3136362e3436352c34382e3639334c3136362e3436352c34382e3639337a204d3136362e3436352c34382e363933222f3e0d0a093c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3337362e3138382c3236312e3131316c342e3037342d35342e3132396c2d31382e3938352d312e3432396c2d332e3033392c34302e3332386c2d33332e3139312d32382e3137326c2d3130302e3030342c312e313939762d31382e3934390d0a090963382e3731352d302e3436312c31372e3236322d322e3333322c32352e3436392d352e35393863392e3133362d332e3634312c31372e3336372d382e3830312c32342e3531352d31352e3336376c3134322e3833322d342e3834386c2d34302e3833392d31392e3835350d0a0909632d39322e3936392d34372e3631332d3135322e3937372d3131322e3631372d3135392e3534372d3131392e3931632d362e3039342d362e3735382d32302e38362d32322e3835362d32362e3434362d32362e333231632d382e3533352d352e3238392d31382e3333322d382e3038362d32382e3332382d382e3038360d0a0909632d372e31342c302d31342e3134342c312e3431342d32302e3831322c342e323034632d31362e3834382c372e3034362d32382e3436352c32322e3131332d33312e3837312c33392e3139314c38352e3733382c36342e3636326c32372e3139322c392e3232360d0a090963322e3631372c362e34352c362e3434352c31322e3334342c31312e3238392c31372e33303963312e3933332c312e3938312c372e3838362c372e3035392c31372e3439322c31352e313231632d322e3530342c31342e3532342d302e3935372c32392e33342c342e3536322c34332e3139350d0a09096331302e3337322c32362e3032342c33322e3936352c34342e3233392c35392e3733312c34392e327632302e3432326c2d3130302e3430362c312e32303363322e3234322d31362e34312d312e3034372d33332e3234362d392e3632312d34382e3330390d0a0909632d31302e3238392d31382e3037382d32362e3634392d33302e3934352d34362e3036332d33362e3232336c2d392e3134312d322e3438386c2d322e3533312c392e313333632d352e3337352c31392e3338372d322e3636342c34302e3031392c372e3632352c35382e3039380d0a090963342e3138342c372e3335312c392e3338372c31332e3832342c31352e3337312c31392e323839632d32372e3738312c352e3936382d35312e3236352c32372e3133322d35382e3735342c35342e36364c302c3238332e3633386c392e3132392c322e3533320d0a090963362e3338372c312e3736392c31332e3030382c322e3636382c31392e36382c322e3636386333312e3838322c302c36312e3138332d32302e3339352c37322e3335312d34392e3430376c3134332e3436352d312e3731386c2d31392e3436392c32302e35350d0a0909632d382e3532332d332e3239362d31372e3535312d342e3939322d32362e3932392d342e393932632d32392e3836382c302d35372e3239372c31362e3934322d36392e3838332c34332e31366c2d342e3039382c382e3534336c382e35322c342e3134310d0a09096331302e3134342c342e39332c32312e3131332c372e34332c33322e3539372c372e34336331342e3538322c302c32382e3537382d342e3034372c34302e3535352d31312e323335632d302e3434352c352e3635332d302e3330312c31312e34312c302e3530342c31372e3231350d0a090963322e3834342c32302e36312c31332e3235342c33382e3632352c32392e33322c35302e3733356c372e3536372c352e3639396c352e3733382d372e3533356331322e3138372d31362e3030382c31372e3333322d33362e3137322c31342e3439322d35362e3737380d0a0909632d322e3433372d31372e3635322d31302e3434312d33332e3339342d32322e3738312d34352e31366c33302e3339382d33322e30396c34372e3030342d302e3536326c3135392e3132312c3133352e3035346c31322e3332312d31342e3531354c3337362e3138382c3236312e3131317a0d0a0909204d3136332e3936312c3134322e343637632d342e3738352d31322e3031362d352e36362d32342e3936352d322e3532372d33372e3435376c312e3434392d352e3737346c2d362e3935332d352e3834632d342e3435332d332e3733342d31362e3237382d31332e3635322d31382e3038362d31352e350d0a0909632d342e3231312d342e3331362d372e3234362d392e3734322d382e37372d31352e363833632d342e32332d31362e3439332c342e3434322d33332e3839312c32302e3136342d34302e34363963342e3332382d312e3831332c382e38362d322e3733312c31332e3436352d322e3733310d0a090963362e3434392c302c31322e3737342c312e3830392c31382e3139392c352e31363863312e35322c312e3035352c392e3030342c382e3034372c32322e3435372c32322e39383163362e3137322c362e3834382c35382e32372c36332e3330352c3133392e3938392c3131302e3436316c2d37362e3339392c322e3539340d0a09096c2d322e3636342c322e363931632d352e3931342c352e3938342d31322e3931382c31302e3631332d32302e38322c31332e373632632d372e32372c322e3839342d31342e3838332c342e3336332d32322e3632392c342e3336330d0a0909433139352e3632312c3138312e3033332c3137332e3239372c3136352e3839362c3136332e3936312c3134322e3436374c3136332e3936312c3134322e3436377a204d3135302e3936312c3239352e3635386331302e3736322d31342e3434312c32382e3334382d32332e3334382c34372e3236362d32332e3334380d0a090963342e3935332c302c392e3736352c302e3631382c31342e3430322c312e383434632d31302e3736322c31342e3434312d32382e3334382c32332e3335322d34372e3236362c32332e333532433136302e3431342c3239372e3530362c3135352e3539382c3239362e3838352c3135302e3936312c3239352e3635380d0a09094c3135302e3936312c3239352e3635387a204d3234342e3637362c3331372e32343863312e3630392c31312e3637322d302e3238352c32332e3437322d352e3234322c33332e363337632d372e3532342d382e3434322d31322e3534332d31392e32392d31342e3135332d33302e3936350d0a0909632d312e3630392d31312e3637322c302e3238352d32332e3437332c352e3234322d33332e363337433233382e3034372c3239342e3732382c3234332e3036362c3330352e3537322c3234342e3637362c3331372e3234384c3234342e3637362c3331372e3234387a204d35342e3739332c3135372e3935310d0a09096331302e3131372c352e3034372c31382e3830352c31332e3235342c32342e3633372c32332e34393663352e3833322c31302e3234322c382e3434392c32312e3930322c372e3632312c33332e3138632d31302e3132312d352e3034372d31382e3830392d31332e3235342d32342e3633372d32332e3439360d0a09094335362e3538322c3138302e3838382c35332e3936312c3136392e3232382c35342e3739332c3135372e3935314c35342e3739332c3135372e3935317a204d32382e3830392c3236392e373939632d312e3430332c302d322e3830352d302e3035352d342e322d302e3136310d0a090963392e3537392d31392e3238392c33302e3230332d33322e3435332c35322e35322d33322e34353363312e3430362c302c322e3830352c302e3035352c342e3139392c302e31364337312e3735342c3235362e3633312c35312e3132352c3236392e3739392c32382e3830392c3236392e3739390d0a09094c32382e3830392c3236392e3739397a204d32382e3830392c3236392e373939222f3e0d0a3c2f673e0d0a3c2f7376673e0d0a	image/svg+xml
9100	Herbes hautes sur espace enherbé	0	9000	94	1	\N	\N	\N
9700	Autre	0	9000	94	7	\N	\N	\N
10000	Problèmes d'animaux et d'insectes	1	9000	\N	2	\N	\N	\N
10100	Présence d'un animal mort	1	10000	108	11	\N	\N	\N
10200	Présence d'Insectes (essaim)	1	10000	1	9	\N	\N	\N
10300	Présence de rongeurs	1	10000	1506	12	\N	\N	\N
10400	Présence d'un animal errant	1	10000	1517	10	\N	\N	\N
10500	Malpropreté : déjection, crotte de chien	1	10000	108	7	\N	\N	\N
10600	Malpropreté : fientes d'oiseaux	1	10000	108	8	\N	\N	\N
10604	...sur mobilier spécifique : RATP, EDF...	0	3600	174	10		\N	
10605	Affiches ou autocollants sur Abris bus, mobilier urbain publicitaire, sanisette	1	3700	1488	1	\N	\N	\N
10606	Affiches ou autocollants sur station Vélib'	1	3700	1489	16	\N	\N	\N
10608	..sur corbeille à déchets et mobilier urbain	0	3700	108	8		\N	
10609	Grosse flaque d'eau	0	7400	108	3		\N	
10611	Du vert près de chez moi	0	\N	0	1	image?resource_type=image_type_signalement&#38;id=10611	\\x89504e470d0a1a0a0000000d4948445200000096000000960802000000b363e6b50000001974455874536f6674776172650041646f626520496d616765526561647971c9653c0000036869545874584d4c3a636f6d2e61646f62652e786d7000000000003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520352e332d633031312036362e3134353636312c20323031322f30322f30362d31343a35363a32372020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a73745265663d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f73547970652f5265736f75726365526566232220786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d704d4d3a4f726967696e616c446f63756d656e7449443d22786d702e6469643a34383436314334343533323036383131383038334230324436434643424145372220786d704d4d3a446f63756d656e7449443d22786d702e6469643a46393144354638334644444431314533384533414436323645343637393630322220786d704d4d3a496e7374616e636549443d22786d702e6969643a46393144354638324644444431314533384533414436323645343637393630322220786d703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f702043533620284d6163696e746f736829223e203c786d704d4d3a4465726976656446726f6d2073745265663a696e7374616e636549443d22786d702e6969643a3438343631433434353332303638313138303833423032443643464342414537222073745265663a646f63756d656e7449443d22786d702e6469643a3438343631433434353332303638313138303833423032443643464342414537222f3e203c2f7264663a4465736372697074696f6e3e203c2f7264663a5244463e203c2f783a786d706d6574613e203c3f787061636b657420656e643d2272223f3eabb3ae8100002cd44944415478daec5d075c9555ff7fe6dd933be0b2f712050117a2383235cddc232ded35df9c99992d2b5b8e4acbf26d69db99e6d6728b980a22385199b2e785bbd733ffe7829901a2f87780ddafcf87cff5b9e73cf79ce77b7eeb4c986559c885f60cc4f50a5c14bae0a2d00517852e0a5d7051e8828b42175c1436830b172f9c3973c645617bc595ab57de79ff5d14c35c14b64b984ca6e7a6fe07e7e29d63625c14b64bbcf9d69b69a9a9cf3d33e55f620be147ac8f74dbf6ed63c78e89e8d421fd641a8fcb7349613b834ea7fb78c5472c07193b7edcbf84bf478dc25fb76c3e5b7a49a4128f1935da1554b44514979468b5da5b8aa05ef7cba6b51c29a7574262a87fb08bc2b688353fac89eb1affc3cf3f59add6a6dfa69d3e7daee4024bb3c3870e4710c445615bc4fc975e1e3f7efcd4a9ff99f0cc84d319e98dbeddb97b27aee0f2215ecfae09d0bf0a6c7bc3cfeb7e41b9b8bba7c7ca559fdfb809e432222e52de473d68dc10a3d9c4fe9bd0fe14ceb3139fd9b469a3b6ba66de2bf366cc9e01027967774cf695527d254bb2b1519dc542d1bf4a08dba5cd183d7cd4aa55ab7019f7e7a31b9e9e38d16834161797d05c9a32d351611da07f19da6b2fe2f417a66766666ec9de7dc294367ffe7c99428e0931312d0c0c08fcb751d88e7b67aa6baa7bf6eb45f481f4a975cc553bdc8117c4f3dfb57ebb8f97f79d3f84a2a80d1b36180c863973e6b814e983865aa59e3763ae2ead56f998879d4b31164aa5542a148a3bcc6eb3d976efde9d9090306ddab4acac2c972d7c484671f4688d5dc9386879a292b6d2ee6e6a018f7fdb5c0441ecdeb37be4a891c3860d2b2c2c5cb162c5575f7de5b2850f074aa572c413c3bfcbfcc5ad97da5662138b24b7cd929a9eb6f2f395878f276b4baa7af7ee0df88b8f8f7779a4f7062445b5baf40892949444143b101cc584a84aad6c21b183702c59ba64ccf3e30e941d71c08e1933a66fdbb6adbdf3d7b628dc7978f7f8ff4c389072d86cb5dc79aee0e0604f819a34122cc5caa4b25b25bb9c7365c498511ffff1191d874015ccdbf316aefa62d59d1b4e178577561406d9ba63fbb0c9c3474d18bdfbe05e3be1b8935cdedede019a0042474028cc81f066d3ecddfffb93239f3ceb9625899123a9d49aa5df2e983b1f455157687f8f21c2f9323f37bf1782cf73af8c7e7edc84291333af9cbf6d2e3e9f1f111eeea8b0223082c070d3046b7efc6ef2cce798a7b89808e327639b7ffc75d48891aede99fb028e80473b28188595491efed3838f9b4e3d35faa95fb6aebb6dc6a8a828b29260188684e8465fadf8f2b379ef2d50ccf1246b1d8a13a2ad9bb62474ebf18885f66d8842854a89d20865a4191bc51171fd26066343f8d366bdf0e18a252df73f0073c827b910cb9aace69bef7fbcead3851fbfedf746b0e992d1fd8c74f3a65fa3221fc1eeb7361454f87a78497021e3a02084433968c444abba7bf254820fbf580c24ec9d056fdd2a6348708818125a595b5d5ded8d9b5f7df7cd7b1fbd17f856b8e15c9d2a5db4fed7f5a1a1a1d0a3883624854281502c96914612ae1fb06569863410a24069e09c88c52b977ebfe1c75b76d3a8d56e1205433175daba863b3b7edfb5f0ed855e33fc2db966710a77f3e6cde1e1e1d0238a3644218662014181641d015f771519a03f290b250e92f94d0d5df8e6c233e7329acd087ccb001f3f86608d16e7c0d3d9acf32fcc982e9da0a6ac14b3cbb676eddab0b030e8d145dbea60f3f3f625758e46868f3413ea786fb62bfae1e20f098a6cde8eca152cc9902c5967d0bd387b0edc13e72838353f957dfdf997f1b1716daa8ea084bb0eedadaca97a34298cec1041681d40fc40c1580626b404c43ae71530041532327a5fe6a17dc70f349b51a690b3245b55573373ceac8b8eabf2aeca8a5f8adf7df9eda14f0c6d5315fc23f9c0c8a7478d786af8badfd63f82ee0c40786838a92781f2c40418cbd2e63c0347c5851188b413728d4a33d8f7d3e5cb07260ee0e29cc614ca6480eccc1367ce89ce06cc0babda5336a2c793735f9adbf02d4dd33575dab2f232abd96a71582d160bb8c3e172c45c21082ba50ab9b7c64b2a96dcd7aad909c7e2cf967cb6ea73f930b5c758bf5dbfef9ef3fceca61569f71406fa07ca3812d2e8c02438903eda4601a1042c320c4558edbe7d434eef3d9c7a3e2d29be57e3009fc76780e984198f517eb6124b90d577c58a15f9c5d7f6ecdf93919a915b906730eb6dac834619063c18662018f84b104ac33009610c0e827e8d8757784868d7eedd7a764bf0f7f1bbb77d3780bf975e7bf9a79d6bbda7fa4b3bb8598a8d97bfb95cababf5546b1e350ae51259887fc8b5ea52818f101022e920af395ae135da8f8521da460bd5627167b775ebd737a590a628048555833d795e82e2557949831366bf3c77dff1fd88172e0816491f5748ddbdd4623ec6c3110ed2603e807e862118c4309495242d8ef2125d56fedeb51f6fc2f470425cc2c489130724f557c8dcee49bd162d7defa75d6b03668471145cda426222dcc2d8caaa2bda25850d413adc5c4f985398b8bcf8b8f8cb19b9b2581824c5655c47a58d7130300f880f4393b447a2cf9feb8f19cc46e93fc7950c3a3dd753a07a5c53b6a9c85e66feedc436d5008fc045915c191f01669504161501ff68868208ccd9110743f52560512e86f171ae92270c90a97b795a4c666b85e9dce5ace40f66c4ac8e9a3d6bf6984123ff9fb3527fdebceed3af5606cf8d02fcb12405e108cac151015a555dd12edd99d2d2d2cacaca5b960641e2e3e31d6556ca46428c53958a2365bab41a96a1199a0641823c58594dd6a59c3ede28a356abe507084813419c358b641240115147e8b3b4babc1aa35667b59a6c36107118cd6683d9a2b7dacc56bbc5e6b082bfe02bb3c960d4e9f4d55a7051b45d102052f7f5140489fe3c78fcecb973ffcffae616e5bff1ea1bde6302f99e02c64143080c54345006308adcab292f0f5a0a737272381c8e46734b05d231324acc88089d83ef8eb1140d7ccbfc959715891a2082b483e028f8900f7af2d4c927fb0db93957757535c79ba34dae9e3b7deed4ff3e9f713e233925392df5744e491e2366797e3cbebf88abe1e3320ce5a224e3809d4dd7d92bcec22ce09b757e00cf671ca576e3b9524ba6212e2c667df2f7bde27bfd3f45f0c3a51f5afd488f581569b5c3180c42268e0f172803d6c1c8e5f27649617979b9d56aedd5abd7ad12f87bfbc584479f2fbbccf710b23484096081afd09855a7ece44139289c606411caf399e78154a2c8758f832088dce27c4649490bf9cf7ef26c80b71fb8460f1909dc4e70ff4c46466adaa9f3e7cf571cafd0425607d7812bb89814438518b08b409d3224439948a296606b583756d233b2cba4cf270d1d3098f3ff7617934fa5ecd9b35733d39fa1281885683beda822440130ada35112f5547ab64b0a81c6cbcfcf0786ed56ad5b221227f64a38b929551a2d8718842158657f8ff22d45ca680f908bb212623f69716a4949792920fb8664d7d8ebacf996a1dd87870685dcdc6b131e100aae49a32700ad55507c2d2f2fef5a5121882e2ab595da5a2d61204032105da8ddd5deb13e6121a1b19d3b07fb05dd939a5234b5e1d78d70142e7497100e2b84c335872a3443bd610cb36bedc071934aa4ed92428bd59279eeaccd66130a8537dfd719f417ae5eec16d395c7e5f6ef3760d5375f923a0297f18151e42af90817b5969bc45e72d24e72e582524b5e6e61fe0d0ad3d2d27488012b82c72c187babdf05da32c82f105c7f77fa502445d1c0cfc1310cc7f07b6f32f272f7edffc36d8c1af861c0e811350e9666511e1746595bb9a943509844746f22d107de3bc342d9d957adb6c64b930e1d3eb4e88345805af0b96ba7b8b8a85853961ee1c22c0d3376ca7db057e5c15267470d03615c84149185c5d76ee44d39711ce6c241f280c4849e775e10401b9fc713f0f8f7833f80d4b3a7755c236876344502d35bb5a74491a806fc395780e45bbb75ef86dfa3dd1c1e3485c097d1d5e92a9a38a5c09b4ffff3b4c168a8773390a9cf3faf4faba3cc248c2134c172d53ce09392660270882038df539475e95243c6a2a2a2ccbc73e0bdf4ea9e88e338d43600443c39f988305482d68743c03ba3ad34a80582a384c1612b342776ef79af7eeb415388737096612f5ebcd838a897c9098bfd4a7e76c37f870e78a2575c62edf11ad4392d94a56cb4fa714d4d6a79bdefc8f235bcecdc9c8671890b172f9452558c85eed92bf13e9579efdebde9e98dd7c2011feaecd9b3cdae74043059cca733ce08fc452034727a0029958a5eee4099c3386ccad707bb05740c8b6aaf1472043c105403ebd538a8e7f3719c733eebfa64190e862f5bb68c3e67335e31a0421093b38800a5599a241d0c4d093cc4d97939b506e7e8e099336730258a91288846ee4781abaaaa5e7ae9a51d3b7634babf6eddba279e78a2a4a4a4f9f0b7b2bc545b21504b41380bc140735a241da530e28c050d677483060c562b54ed9542894482ba7152d3531bdd17894480c5d327fea636be43e7651f2dabd8526c2bb3a00294255949b45477556bb7593019b7ca56535e520674d4f99c4ba8047397bbabd5eafb51e063c78e013fb67bf7ee37dfbc72e5ca2bafbc121f1fefebebdb6cae82dc7c480471451cd0f8acd72cd26899d3a1c2116ba589cd259e1c3af41eae437ed014ba49e5429528b7a200bc977f2852b91c5078f1ec05eaa609c12f3cf3fc6b2f2d285b57e8a8b6227c144660cc0da5080ae642b88273f1f225603b4b8de5308a78bb69ee642a7e6b0122cb7dfbf66118d6a953a71b3741bb59b8702150a16fbcf1062873f38ad46e467828c2c5580636e71adc129ccd0be3a3b57f6a7b76eed93da6db3d2ce403a75026972ae484843e79eae4cdf7954a2510d0c282c2462b54de9abf70d6e499a53f15d84ac14b41301187a168e014f0fc046999694693a9d6540b5aba482869b95d839601ec536b4b5b5c5c0c2804fcb9b9fddddfbd65cb96eddbb78f1b37ae8599e07aa30ec19db60f62195c86a3420ce361d62ab3e9b86ef68bb3f07bbab3d883a6d0d3cb538649f87e8223c9476fbe2f93c9dcbd3c582e74e29fd4f238dc65ef2e79ebe5374b7f28d09fd3231c1838ac2c4b8b4225a969a9b575b5044db13423958a6fd5750e907e3163ece409d9d7725b5bda8c8c8c8a8a0aa0456f44b13a9d0e8820686d53a74e05def52dc36d0cbbde030a43a26089b36b948f956f2f193ee8c90109fdefed2b7dd0147a7b792b38328e8a7bf6d2b99b772001f18097a717c7939f9696da34807bebe5853fadf9114e76546c2fa5ec048c43223f71b9b9eae8a9640443c17b12099aa790a2a92f7efcb27fdffe59d997bcdc5b37b2035c8f03879c93043ac646df10f1afbefa2a3f3ffff1c71fefddbb770b79a562196d07ee17034c2047c9c725784d6a05bf0079ffddf75b686aed83421445234222208aadc0b5a9a9ff60cbd7db1795a259f9576b6b6b9b667c7ac4f8ddbbf6c4723b5d5b95ab3d598d8a704194f883cf9798191350563c2eafe9abb1d8ac2f2f9cfffaf2857038e7b1c707b4d609d41b0cfb8e1ce448f891e1110d77f2f2f3bef9e61bd0da5e7ef9e596f3baabdd193349d92850284c88da4acc359bcb3efee4e3202fff7bfe4a1fc2dc99b8d858b29cc4c2f0a347ffa14ba33a748069b8c45e7ee1c2856633c64474dcb965fb578bffa73823c9ff2c8ba628434e2de5a010ac995a982de679afbffce381752173a340821ef13d6e748bdf21ce5d385751531e1611e6ede9d52094abd7ac292d2d1d33664c8f1eb799121e1e122643a5e64a3d2c82ed75b6c23539735e98336ed8d8fbf13e1f0285093d13d02a88efc34f4e3b76f3d86154c728cc811112323333f35679f95cde7fc64fdebd6de7a2296f79542a9c13a51816c61092246e1e7e039f172f59bc76ffa6c01961a4cd21aee577ead8b1b5e5dc7fe80022c2828343bceb577e9fbf707ef59ad55c2e178413b7cdeba5d60cec37d094afb3ebccc56bf2668c9ffee1ebef6128f6885018111e11e4e6c712503e527afaf4e91bf743434235020f5c86659ecf04de7c4b06d5c36bde7fe7fe79f0f8a7ab573abb3f50a7cebc39c1fa8d1b3efde98bc0e7c33029d794ad0f0d0c09f40e68ad213c76fc182ac22243c31adc96cf577d61a8d34f9a34293a3aba858c20e4d01bf45575d52121c1bae33539ef5f121b053e7e3e1bb66ddab16fd7e98cf482c26b0d1baddc2b3c9cb9334f3c36f88b73df4862a5bf6dddfae4934f3698311e8fd7392a7abfeee8f992cb405ff9f9f9dda69740281e9434f083ef97215c14bc14f0ee1ae62c65e7e6bcfac66b3e9382b91e7cca445872ccf1bde3447c61ab4a9875e5724e791eca4523c29c86f0f889e39b366c04a1c5f3cf3f7fabe825bfa0203d23fdcfd327cf5e3a9b7329475b5e059a17c75b6056da177df73ea8216563682b294325915ee1ddbb74030e51e7b858b552d52e291c366cd8f24d9fcb7a28ff38b83f3b3bfbc66cf9de3d12f7aedf5746555cbd7af5b6143a9b3c49c30884093073a5b9814292245f7b6501190dc9a2dd08939db4515039dd33a1576b4b987c2cd9212015b822aabedfee83a58bed34f1ece867e3e29a99587cf9ea95efd6ac39987eb4982d6349c65a607197299e9f3ffdcfc3c7abdd6a3dc7fb0263ccd2108cc220a8a50c746155d5c5abbf7cbefdeb8eee91c3873df5cca4499e2a4d7b52a4006161613dfcba10b504d289fbd34f3fddb8df33a1276c84503992da24b468bed31cc761060621bfd9666458678ff28edd3bf75f38ea31c49bb0d86104b5159bdd798a9e5d5abd20edc4c9131c25c743acec14d571f36f5b92cfa4a83c5593274f6e341852555dfdc6c237874e7a6a6dfe66adbf9eb131811cbf4f3f5c9e723065f5475f6d5cbf3198f62ffeaec05a6475ce0db0508c03e248b9f24eee81633a84ce8fa98cd57fb86159bf810356af5b43de62a27a1ba510589789139ed6fda99577576cdcb90984cf0df781e445a8c3110e7a3ce384dd6ebf7de981974921080729d7d750146d77d8bff9e66bc520774c88b3140ca1b0f1a2212131d14ddaba592aa565a559d7ae80603c26341a58e58f577e82cab0c7921e4b4848b829e4d07fb9faebde4f247d93f683bd13455613be851eab5e5c716ccf9117ff3b2bc82f10588798f08ebbb6ec1cd775b4f687f2aabd158e2a3b43011619bbde6cd1813647ba45a983a777b0f6a45e7a7fc1d8694f6717e6b61b0a01faf7efef6ff58468d6ec4f7efbedb70d37854261525c22a8e485a2ac1bbcb6002e8fc74705081fd119eb689a3a96f6e79992f3b21837c60e641326f4766bb671ece871ad2d5be6b9b3e570356b63929292be5db3fa8a211727f0975ebc3e379c20889d3b770e1f3f6ae12f8b8c917650858002afe5ff5992bcffc8946727379a4ee1ae50affefcebcdeb36f55324d8b719ca37166b4f56598b4c84deea30da6d463369b7039deffb42d0a1aca3fdfaf7dbbe7f57fbb085001e1e1ee3478dfbe4f0ff54833dd6adde3065ca147f7f7fd072bb77ebfe75caf7a4803d79ea6440c06ddc482ece9172440e8c65045041d1b50387f6f33a0938623e6920502e62bca88bf48fe8ddadd5e38869a7d2500d0655b3c7b24e1e3cb01f93e1c3bb0fe91adbc56923539257ae5c79b4e4243f4c80d0a84791e2bfe35f1d376edccd9da84d3120b13fb8d2324e1f3f75222d2df5dcd10b65ba22880f2102a0461086641907c56138befe7ec08f6b3714028c9f30fefbb53fc2186408b2ae5ebd7ac9922550fd925d392c376b2c478e1d9df8f4c4db2a64b9405e01d5e16acefee40329a927443d64c065805988b290fad3356fbdf40abf959b74030d792a239513cca94dadfab9e0474937392f9ffbdedbef9696957db8f4c31d2776c31d715e001fbdc4be3472c6b469d35a9850d908dde2ba82cb3ad55653535367d41594e46bab6a81a2c639b8c6d333d0db5fad522bdd14ed89427f3fff09a3c67db9e77bcd48cddae5eb9e7efae9a8a828209d0152df6c6541dad974600e41a4d1b23b231589cbec5a4c857ff4f9279488f15507331606e6a0ba5355c102ff512346b5b654206e3b5f9ea51aaca9862b441da4a800ed1dde7dcfde3d2bbefdcc12e4e026f26da7cdfd027a2f5aff4e870e77b3ec5bc0e7fbf9fafa41be20826a2b7121f0e6ab6bb52683c16c31eb0d0687d54e01a30d3b179f002f9f2f12c86572004f8da6e944a3193366acedbb81b2327402f6d1471fad5dbb1668244fb97b2eb7b09ad6666666deec41340520d8d35d734e9bcdf3e157e415487ba8500e02c2727b8dd57854b77ce592bb88ba929393210f481828087a2d82b650f94b2eef470f1caa4b711ba466afdaddcfc85e9dbf78ecd8b1509bc15d52683019332f9cbd78f162765e76614151b5beca6cb1d860c24c9b68846561675f178238236d94c1f80c4f82093c141e9161913d137b26f54e52b95ddfa60968a179335f7c7bf307feb343b62dda3d7cebd651a346797b7bd3da93ac377cead4a99629044dc4c7db87c8b6b9f5503b077484188c23a4912cdb543861d098918386b7b65e0449ecdab35b1c23054f13074b2d574da28e32794f054bb2b6c38617064e99f5f5ac3bd79c6d94c23f920feedab5232525a596d6d9e524df5bc00be6f11442be5229e6723db980370c9868c8b9eec43985900622495084c17aadbcf25cce955f3ed8a466a449097d264f9dd235261e58f3a953a702e1abcb367a3ee7fffac237060f1e1c18104817528200e1c5bfa6a9b5001f5f1ffb113b26c35039c739d9de4a16ff94d72fa2f78a8f977339dcd6d6ee6a4ef699bcb301134318074b5b697eb0c87baa7fe59612ff5aafa54bbe18306000d4f6d06a0a3ffa68595a7ebaeff3412a95372a0231195a3f380d040e8721a7f0d110453b473a9dcb879c5ba371308e8823548814211e501244da297d7ef5f694dfd78ffeb55fd7a4050b5e4d8cebb164e99291b3c6052f8928eb50bb68d1a2ce9d3b435696a3e15e3b770d58fb9697fa013f16d1c1c0271245488d57f4b622dba8a4a73e5fb6522212dfc5ebd8b26933379c8f2b39ac834504505d4655ed86aa67063ebd6ccb52015f70f33088c562311a8d56bb4d6731545656eab53a87d5c6504cbdfa4138429ed25d15e0eba77253012785cfe3b5210a972d5936fc99118c83e6c870524f32cede1104c6286badc976cd6ace36d94b2c20b0e3a8783c0d8febcee76904a24029c6c541222073e052466a3c627ccd958673fbaf0c193bf4e927272c98377fdad0291bb66ff39ae4b77ef1e6f4f4745482e362dc425aeaeaea54aa96ec99c643a3c15494891286898445f83baf2f7a61e2b4bb7b17469371eb9eedf2110a105302855cbeb354992559f1d98f43060c2aab282f2e2caaa8aabc5674adb0a418a0d6a0adb5e86d849d8009022621018bf24115ebe36c86a51d0c6da26823e329f5e81c1ed32fa9ef534f3ea551b9df0f0aef6657e09fb6ad9d3d67b6fb341f71a48c36d34ee1034a13419d3b556010a089a871982f1b4d970ca62b7ab2da06a3083f58220a9348a2e5d2280552bfbe0fe773702e475f585bbc2d379c088c4be8f2cbfab59a79fe2cc5e4be7549dac54d33d117fac1bef3976dc1412d9d1be27038468c1a99d3ad18bc74cf3f9507b7ff71d7cb594060b3e0db3783de0d67ed50f18fd774fb2afa3ef158c78e1d2f669dafa9d356db6b1d1c0a5322a0758adc6542b5582413a35c1c681f16a19dbda0080bb8a7199a60ec144932244d18ecb672abadd46ecad207e3be6fbcf2e698a7463d7c29049832f2198bc1f2fa5baf932349790f85738117084e4134c64030307e088bc950792f955b92537a1c350ed36583e992beee5475f5ae62548c49e2158a24b5305c0c5b58cc9d173023a4fccfeab39b7e248a2c25df15447c12e53ec6db516e6549c6b927d7ed76b8e472b951911dcee65e560df6c8db9c7ff6f2856ed177b33fa5c964faf9e79f1583dd111e56fa6ba1f19c4ed8d9ed22e76ab6ee1a2786cb570abddd82b91201870bac3d563fb2c2d2044d13144d53ce55130e9665585060e700260b814f2c0d21382e0953484311ca48e41d2b8068b64d28d206cc7a6ebaa7c673c12baf146715b80fd1f0bd85ce7d29ec0c43b130106cf0da11127c00061197a26e094ab74410b1c28416d069345f36147e998bf210d5502f452f15901e651f35df4778ed8b5ccb395df9e672cd486f539691ac22f94039f16f3fb5b04b972edf7fba161b8d59c4d60be7cfdf1d85dbb76f3f67ba1cd239527742cb71e3442c8fe6ba7340d3a4ad8c3dd761c8acab282c01da05e138fd5e4c88a1020c016c820f7c0c133857ed3aeff01054005c39e0c7392512c0985d57bdb73c5c10b2eac06fdd62bab415457a0379c5055f7cb56ac3f68d50282eefe126f417821a3204b0046cfdc623f53fd0d00b0b346dc327d8b9cac8e9be6b1de61c03594b4ae3e5a005a042843250f99f5eb55e35862ced28f015e94f693dd2dc0eed3bd0680d54b3bdd27d06f6e3cd9719cf1afa9912d6ac5edddac5153535358f0d1c6019c9b0144dae357b047ae6d8f2ddfa28c4516e08838282392732395f16441a28d26007812c6375aacafa0aa2803918833121079360ce4bc401e4d9abacda93d57496e3b9a727bf3af7158ffb6308a17bb243fe89ccd4751bd66eddbed5ae2025317251b898abe23b670b3288d34373eee1c4c07ffdd03f7ecd49e5f5594be03e26c6181b99ff7136d04ec16f463a4aedf65f8cbb366f8f89befd61a020d64ef33c2f8a94d2df980eef39ece5d9bad5976fbef9e637e93ff8cd0cce7d23eb9bf7bfecdbbbcfd6eddbbedff0434e6d81244a2e8992f2ddf910889468986da891737b8dfa1ac0d7070b0085804b08855882b1969a0d6775a60bfae1039f9a356d7aef1ebda0fb897b73c801b0e145a5c5bf1ffe63db6fdbce675fa4c50cc78fc7f713703d78b80c77365214b4530c4618e72ffe25a0ce1804fefb1368e908177554d8f2165f96c4cb7da60495fd5c98c8e9b27efd7a8140d07201366edc38e3f37981af85642fbab4e3b3cd03fab722803b72f4c8d049c3833f8eac3bae8d280c3cf0c7fe866655ababdb9f7c103cf954c62942caf0fc05023f0147c9030aa341f81a9239150ea83f70c36b1cb6128b3dd726b2e38ff57dfcb967a6f4e8d29dc7e542f719f7fe9c0aa05d4fa69e4a4b4dbb7ce572555da599b659112b0d7c6e6183f1409dcba3eb673a032e41e581e2656c146d63181b4d9b1921241030bcf22bc51e2f060081ce5f72f5cd67162c5cb8b0e51f05b1474c42ac78be1a58b2f18ae19faef8f40e4b5b5159d17fc063f6e130cf8357b1b4f0e0defdf1d18dc7e5f38a0a0e1e3d949a7a2aeb5296d6526763ed36c40e736118059a0602f18300e2f319ae42e8161616d6af5fbf81fd07f87878430f0af7f7a891e2f2928af28ab2caf28a9272bbc35e6dd2d66ab576ab83a228c01f30f8c0b9c3705cae7453cbd5228c2f53ba011de8e9ed75f2eca9d9f35e0c7a2f82d212159f16fdfad386418306b5fc5b3366ccd8451e9046cbd91f6ce97fa689eee0e42610084e7e76f2493cd3639467c17bd9cbe62e9ef5c28c96bc568bb9a0b0a0a6ba06048866a3892629a05d4412b1a746a356ab030302c58287715cd4833fe9cbb9830cedec7773f6863b8d4af378fdad374471f2b8ddbd7de784060605e5e4e6b4fcd863c78e89a2e49dd6751745c90e271fb96d311c8463f64b73a4898a8e1bba8bbb2966ce9c4992647b3c39aded1e7e67b15a860e1daa1eebd3edd063aae15ee03388e25b486f30187af64e0c59d6d17d92ffcc9766b7fc70d07ae6bfbe4014ef16f96dbc3449f5ecb3cfb6fc7017857789dcbcdce0b050ffd722e27eef05241258c496d37ffae9a7caa7bc42974747c645e94d865b253399cdb35f9c23eaaa007c0b6315d3a64db3d96cedf7fcc2b67e04e5fe830714feea88ffc5775adb5d16a4dcb469530b892f5dbae4dbd13fe2eb58b778f7adbbb6379b0698e7514f8f95f656f9cd0f1787b92df968693bd59fed864280959fafe4f88b62b62600a151797ba4a7a7b7a01e814af47931d4735ae0f3d3a6354d7030e5485c62bcdb208dfbd37e7e9d8236b6d8205c14de4bcc9a354bdc4319bf3fc97b566874740c88046e9572ebd6ad6ef1ead0e5311dba742a2d2f6bb859a3d5eef863d79849e3a5212ab7c19e921eaac7870cbe70e9e2a371106cfb38bfd064328d1d3b365374c9e785a0a2ffe5f542baae5bb7aed978df6c36273dd647ff84a3f640d5b2673f888d8fddbe73c7aebd3b8b883251a404c4a0580e3b63dc7f17bcba80c7e5418f04dacd119425a5a503070f34f7a35403d539ef5c99d97fea92254b9a1d0d5eba74e98a13ff13868a1d1b74a48465fd51b71e4a848f6af75774e6747cefed77131313a14708ede914d13f4f9d183d6e8c64969aefcfcb7bebeaf297978270be69b2a2a2a22e03bac9677ad226121372042142d32583f6878ab91367ce9d3bf75eed3fd886d0d6343bf00fad56e7f6d9e06f535f71d3965f859e92c8d5f1115fc5093cc4bb76ed6af621c0a9d1fc27a0cb91a4d8df7b811843e6adf86dc7d647f550f4b6228539f9b9991999572f5fb976ed9acea8a728928b73a512a9979757404040484888bfbf7fc35aa76f577f3bffa3d7033f0cb716581c3f18766cd916d7e4188343870e8d983736f0ed0888618b3ec85d3ce7bd59d367428f281e3e85e5d515abbefcdfce3f769622957c7f81c043c491f06014a6099a3213f63aaba3d28ed4215e98aa63484760c6860d7f6aeddab51ffdbac2ffad50edd12ad1617cd7ce9d8d2667e8f5fa814307e987db895a2224c3fbf7df7fc730cc45e1fd11be6bb9a3c68e2e42cbbc27fb89bc645c2e1f4339188221ce7938cedd7a5988a649da61b19bab8d7597ab8c993a4fbb3a2aaae3e1c387495f26f4eda89275d73a56856cdcb851a9fcc711a2efbcf3ce9aa275c24081778aeaf081438fcc69854df1908f1ae1f3f99131918c9171d4100c4e5b49a3beaeba4e5b5d57576dd4d5190d7a93d16827ac101792f8cbfc868445bcde19fa0f3f853a69c56d96745dd1ea7cef497e999cac993367366c847903ddbb77b75d36f3038457b57977b85ab19d027df7dd771fe2cf4b459231c3467b79789dfc2ea52cab94e723e428b9f5031924cd3a2f8a21488a20490741d81d762b4511980495c6baa9fb7b59afd96a0f954118e23d2520fd8ff4928cc2810307de90360441fed8b6978dc5cdb526b951dcb76f5f1785f71131919d060c1ea8cbad4dfef608c3b2027f3e2ac4091d61ce3519cee96a8f57d51eabd61eaa3464d4496264308ec218547bb20acaa2df7dfbdd9cbd970d98c96b9ccfd1b5c98c96ecd3a74fc333c562f1c13f0e95f3abf87ec2bae49a9123463c32b17cdb8d0b299afa2379dfe20f965cacbda21ce02e8d9763621462e0fad30eeaa7aa020389d19481aada51865f80be59b37a68efc129c753c64e1e2f9be3ce5173f3175d5df9da27d3a65d9f0afcda6baffd52b1d97d98a6f4bd6bdbbfdadcc29eee2e29bc47661941c20243278c9de029f7bcbafb62f1e12273899971300cc5300e9a3212b6126b5d8ab67673755755dccf3ffcd2abb373c50c88346442e9fa651b5583dd4551d26d8b7f8b8ee804821067874e49c9be3f0f2afa2af5393a3fd4bb67cf9e2e297c70b0138e23278e1e493972f1ecc5724395d961c1115425568605843d396ce8d0c78634da4cf0c5f92ffd94ba3ef4bd0e75c7aae94db6df366ceed2a5cbb19463e3e74ed2bce7af3ba1ed7035e8d70dbfde763ea38bc27b0f9bdd5e515d61341a311c73577ba8e4cd2f82359a4d8f3ffe7871448dcf14dff25fcb0447901d5bb7f9f8f8c4f4e8cc9be7066a59fd71c9f11dc98fe45994481b2f1f9fc70bf40d88898a8e0aeb702bfea0fad32d56ae5c6939a8339cd56b46690c9d6d73e6cc01e17ca87f88adc4c2d3f01d722a3de38c2b2e6cd3e8deb5db8bd366576c2ea52c8ce738af0ce6e2f2e5cb2342231ca57644800843c5c752525c14b675cc7861ba2fe1a13ba94504a8e778df2f377e9b969e662f71ee2b220c159d4c3fd9f47c0c17856d0b9e6acdf419336bf754917534df4f8025f14e9c3a692d3193469aef2f2c319665e7e6b8286ceb7876ecc420be9f3ead8e8558b75e4a5ccd272a6dcef3cadc70d8036b7ab8828bc23607b1503c7df674edbe0ada40636e1ce50077da40dacbec080f1504f03333325d14b6038c7d6aac0652e9536b219255f4518a62e5ce23af1896ef2fbe7425ebae77ab7351f8e02097c89e7d6e4add092d514360124ee0bc50499494d2933c4f5ea5beb2a4acd445613bc0c86123e02ad65664a5ad94f3740b19c6900c2ec7cdb8edcae52b2e0adb01027d037a774db4e499182b435be986158d804b5ac15ccdbefa8855b63dcd60bb158c06fde17dbb8f271fb978e162757575adce60b63957c0412c4b327fd70ec79c7b7bf170cc4d265629951a8da6736c7ccfde7d7af4ea2d164b5c143e04e45cb9f4d1fb6f1f3a925c5aa3e7a1885480c878889083f039b000877184859d3b7c4148fd42624025cd40b4f364418882701bc95a08566f677416d24ad061fede4f3cf1c48bf35ff5f50f7051f880c87b76fca8f44b39ee22cc5b82ba8b11c019747d2b061881d9864d1ad8fa1358a19b4f208161888131208f7f9d590192033acb0d64918e2cd73b12bb44ffb076536048a88bc2fb0b01075708e0684f5cd864638bfa9d42aeefc1d0b02015fae72132ce7d19501c45b186fbf55bc55d4f6125a18c126b959134db09973b737fc1c5117f3754d8dcc624f52b7d9c02584f4f33ad136e487323fd4d69043814a2e2e2683b7b27ed92427f6f8ddeca34d21f37d681ffb5640b98bf5b9d70c55e67ba09ea2c84b746e9a2f0be232e36b6cece40ff5c4dd09c385edfef07fee76637f5891b2bd806e8ac746464a48bc2fb8e1e89bd8014b6d2e6df4cef2d2baeb35271f15d5c14de770c1d31d64a32442b77a5bb89c5bf95307c9330827b7a1b9dd8bbaf8bc2fb0e774f2f090fafb3dd85ffdd62178183067c76ed99e4a2f041c0c7536db035a34bd9dbd0f4971e0566926d468b2a2502ac955bf0b928bc4b748e89d1d999bbcede70c0532300fb1ae0e7d3ee5e457ba5b067af5b7b34cdc70bb7d2ad7fdb429d8dead4a9a38bc2078481434698088662d8e618bcbd74c2cdbba374d71e3d5d143e200484840ab9a8ce7e0b7963e13be5ef2fd714b406939d4aea3fd045e18383b7bb5267bddb0ede26fd36408bf271342834dc45e18343a78e517a5beb29ac8febe126aa546f613c94d2f6f81eda31853d7b25e96ccc5d496033c403290c0d0e7251f840f1f8e0274130deac4773abe0d0399a88a0ced1441869eacbc436774eaf8bc2fb88884e31c07a191cadd1a5373307378eeb1312fbb8287cd0f054cb9bf568e05b88e0ad9e63251907c5f46e87ee68bba7b06387489dedae9cd21b1d6cf5bc022d2a17f22432998bc2078d6e3d12f4774561a3f145bd95f2f650b6d397d0be291c3474b8d1debc43d32a0043181919e1a2f0212026be1b8e22fa267d3477c8e98de81028d22eddbabb287c38d028a5867fea52e7fe262d76b035021062839deaddf73117850f071d22c3eb6c746ba5f0ba775affd768a7610889ed9ae0a2f0e1a06bf71e3a6b536f055c7063cefe11142237220f6008d53201da6eb74a6cf7143e36708891a09a4c60fb878bd34244e874476d8cbfaf4ffb7d03ed9ec21ebdfb2230d2a88f86bd29b8ff4b6722b70af38114464747bb287c680064b8cb458da243f82634db23daf0c50d77b47b7bdedbeb51585f18191ea2b333d709fb4bc260088560b42979ce3a5f3fcfd4998c6260b383eaf7f81017850f13ddba2700492268085c24033b3f38ffb2d73f37b94816211886a09d070f9b59be58c0f3f60b68c77ae81158227a64dfdefe8387de75f6e888d07397b35d14bae052a42eb8287451e8828b42175c14ba7077f83f010600a4d6392cf45f3f220000000049454e44ae426082	image/png
10612	Mur végétalisé	0	10611	185	1	image?resource_type=image_type_signalement&#38;id=10612	\N	
10613	Jardinière en pleine terre	0	10611	185	2	image?resource_type=image_type_signalement&#38;id=10613	\N	
10614	Végétalisation d'un pied d'arbre	0	10611	185	3	image?resource_type=image_type_signalement&#38;id=10614	\N	
10615	Plantation d’arbre	0	10611	185	4	image?resource_type=image_type_signalement&#38;id=10615	\N	
10616	Pot ou bac à fleurs	0	10611	185	5	image?resource_type=image_type_signalement&#38;id=10616	\N	
10617	Autre proposition	0	10611	185	6	image?resource_type=image_type_signalement&#38;id=10617	\N	
11000	Eau et assainissement	1	\N	0	6	image?resource_type=image_type_signalement&#38;id=11000	\\x3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d2269736f2d383835392d31223f3e0d0a3c212d2d2047656e657261746f723a2041646f626520496c6c7573747261746f722031392e312e302c20535647204578706f727420506c75672d496e202e205356472056657273696f6e3a20362e3030204275696c6420302920202d2d3e0d0a3c7376672076657273696f6e3d22312e31222069643d224c617965725f312220786d6c6e733d22687474703a2f2f7777772e77332e6f72672f323030302f7376672220786d6c6e733a786c696e6b3d22687474703a2f2f7777772e77332e6f72672f313939392f786c696e6b2220783d223070782220793d22307078220d0a092076696577426f783d222d343920313431203531322035313222207374796c653d22656e61626c652d6261636b67726f756e643a6e6577202d34392031343120353132203531323b2220786d6c3a73706163653d227072657365727665223e0d0a3c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3335392e3238342c3331312e363831483331392e3032632d382e3836312d31382e3933322d32322e3534372d33352e31322d33392e3839382d34372e3130370d0a09632d31312e3931322d382e3233312d32352e3037342d31342e3130322d33382e3932362d31372e343831762d31362e3139346834372e30333563352e3633322c302c31302e3139392d342e3536362c31302e3139392d31302e313939762d33302e3636320d0a0963302d352e3633332d342e3536372d31302e3139392d31302e3139392d31302e313939682d34372e303335762d32302e34363263302d352e3633332d342e3536372d31302e3139392d31302e3139392d31302e313939682d33362e3739340d0a09632d352e3633332c302d31302e3139392c342e3536362d31302e3139392c31302e3139397632302e343633682d34372e303336632d352e3633332c302d31302e3139392c342e3536362d31302e3139392c31302e313939563232302e370d0a0963302c352e3633332c342e3536362c31302e3139392c31302e3139392c31302e3139396834372e3033367631362e3435632d31332e3437372c332e3431362d32362e3238362c392e3139382d33372e3930352c31372e3232350d0a09632d31372e33352c31312e3938372d33312e3033362c32382e3137352d33392e3839382c34372e313037482d33382e383031632d352e3633332c302d31302e3139392c342e3536362d31302e3139392c31302e313939563430312e3663302c352e3633332c342e3536362c31302e3139392c31302e3139392c31302e3139390d0a09483130352e3263382e3836322c31382e3933322c32322e3534382c33352e31322c33392e3839382c34372e3130376331392e3735312c31332e3634362c34322e3932322c32302e3835382c36372e3031322c32302e3835386332342e3038382c302c34372e3236312d372e3231332c36372e3031312d32302e3835380d0a096331372e3335312d31312e3938372c33312e3033372d32382e3137352c33392e3839382d34372e313037483334372e3763382e3337312c302c31352e3138322c362e3831312c31352e3138322c31352e3138327635322e32393463302c352e3633332c342e3536372c31302e3139392c31302e3139392c31302e3139390d0a096837392e373263352e3633322c302c31302e3139392d342e3536362c31302e3139392d31302e313939762d36332e383738433436332c3335382e3230372c3431362e3437332c3331312e3638312c3335392e3238342c3331312e3638317a204d3230332e3430322c3136392e3537356831362e3339357631302e3236330d0a09682d31362e333935563136392e3537357a204d3134362e3136372c3230302e323336683133302e3836347631302e323633483134362e313637563230302e3233367a204d3230332e3430322c3233302e3839386831362e3339357631332e3038320d0a09632d322e3535312d302e3136342d352e3131322d302e3236332d372e3638362d302e323633632d322e3931382c302d352e3832322c302e3131312d382e3730392c302e3332314c3230332e3430322c3233302e3839384c3230332e3430322c3233302e3839387a204d3434322e3630322c3436392e3037350d0a09682d35392e333231563432362e393863302d31392e3631392d31352e3936312d33352e35382d33352e35382d33352e3538682d33352e333737632d342e3137372c302d372e3933312c322e3534372d392e3437362c362e3432370d0a09632d31342e3838322c33372e3338332d35302e3439392c36312e3533392d39302e3733382c36312e353339632d34302e32342c302d37352e3835372d32342e3135362d39302e3733382d36312e353339632d312e3534352d332e3838312d352e332d362e3432372d392e3437362d362e343237482d32382e3630320d0a09762d35392e333231683134302e34393763342e3137372c302c372e3933312d322e3534372c392e3437362d362e3432376331342e3838322d33372e3338332c35302e3439392d36312e3533392c39302e3733382d36312e3533397337352e3835372c32342e3135362c39302e3733382c36312e3533390d0a0963312e3534352c332e3838312c352e332c362e3432372c392e3437362c362e3432376834362e3935396334352e3934312c302c38332e3331372c33372e3337362c38332e3331372c38332e3331377635332e363738483434322e3630327a222f3e0d0a3c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d3432302e3039312c3531372e393931632d332e3936392d332e3839392d31302e3333312d332e3839392d31342e3239392c30632d312e37312c312e3638312d34312e3838372c34312e3538342d34312e3838372c37372e3739350d0a0963302c32372e3033392c32312e3939382c34392e3033372c34392e3033372c34392e3033377334392e3033372d32312e3939382c34392e3033372d34392e303337433436312e3937382c3535392e3537352c3432312e382c3531392e3637332c3432302e3039312c3531372e3939317a0d0a09204d3431322e3934312c3632342e343235632d31352e37392c302d32382e3633382d31322e3834372d32382e3633382d32382e36333863302d31382e3536362c31362e39312d34322e3036382c32382e3633382d35352e35360d0a096331312e37332c31332e3439362c32382e3633382c33362e3939362c32382e3633382c35352e3536433434312e35382c3631312e3537382c3432382e3733322c3632342e3432352c3431322e3934312c3632342e3432357a222f3e0d0a3c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d37342e3634362c3334332e333634682d342e303838632d352e3633332c302d31302e3139392c342e3536362d31302e3139392c31302e31393963302c352e3633332c342e3536362c31302e3139392c31302e3139392c31302e3139390d0a0968342e30383863352e3633332c302c31302e3139392d342e3536362c31302e3139392d31302e3139394338342e3834352c3334372e3933312c38302e3237392c3334332e3336342c37342e3634362c3334332e3336347a222f3e0d0a3c70617468207374796c653d2266696c6c3a234146414641463b2220643d224d33352e3830382c3334332e333634482d362e303936632d352e3633332c302d31302e3139392c342e3536362d31302e3139392c31302e31393963302c352e3633332c342e3536362c31302e3139392c31302e3139392c31302e3139390d0a096834312e39303363352e3633332c302c31302e3139392d342e3536362c31302e3139392d31302e3139394334362e3030372c3334372e3933312c34312e3434312c3334332e3336342c33352e3830382c3334332e3336347a222f3e0d0a3c2f7376673e0d0a	image/svg+xml
3900	Bassin ou miroir d'eau sale	1	11000	174	2	\N	\N	\N
11010	Graffitis sur autres supports	1	3600	\N	4	\N	\N	\N
3604	Graffitis sur colonne à verre 	1	11010	1518	9	\N	\N	\N
3605	Graffitis sur arbre	1	11010	1	3	\N	\N	\N
11011	Gravats ou déchets de chantier	1	1000	1527	5	\N	\N	\N
11012	Sacs de déchets ménagers 	1	1000	1527	10	\N	\N	\N
11013	Dépôt faisant l'objet d'une enquête	0	1000	1517	12	\N	\N	\N
11020	Malpropreté des mobiliers de collecte des déchets	1	3000	\N	2	\N	\N	\N
3100	Corbeille de rue débordante	1	11020	108	7	\N	\N	\N
3200	Colonne à verre débordante	1	11020	108	5	\N	\N	\N
11030	Aménagements cyclables	1	4000	\N	1	\N	\N	\N
11040	Gênes à la circulation (À partir du 1er janvier 2018)	0	4000	0	5	\N	\N	\N
11050	Accumulation d'eau	1	11000	\N	1	\N	\N	\N
11070	Bruit d'eau souterrain	1	11000	1505	3	\N	\N	\N
11080	Canaux (St Martin, St Denis…)	1	11000	\N	4	\N	\N	\N
11090	Dysfonctionnements sur appareil hydraulique au sol	1	11000	\N	5	\N	\N	\N
11100	Dysfonctionnements sur fontaine à boire ou point de puisage d'eau potable	1	11000	\N	6	\N	\N	\N
11110	Dysfonctionnements sur fontaine ornementale, monumentale, décorative	1	11000	\N	7	\N	\N	\N
11120	Fuite d'eau sur WC publics	1	11000	\N	8	\N	\N	\N
11130	Mobiliers de collecte des déchets	1	7000	\N	1	\N	\N	\N
11140	Mobiliers d'information ou publicitaire	1	7000	\N	2	\N	\N	\N
11150	Autres mobiliers	1	7000	\N	4	\N	\N	\N
11160	Problèmes sur arbres et végétaux	1	9000	\N	1	\N	\N	\N
11170	Graffitis sur aire de jeux pour enfants	1	11010	1499	2	\N	\N	\N
11171	Graffitis sur barrière / palissade de chantier	1	11010	174	4	\N	\N	\N
11172	Graffitis sur boîte de bouquiniste	1	11010	1499	6	\N	\N	\N
11173	Graffitis sur borne Belib'	1	11010	1519	7	\N	\N	\N
11174	Graffitis sur borne textile	1	11010	108	8	\N	\N	\N
11175	Graffitis sur corbeille de rue 	1	11010	1499	10	\N	\N	\N
11176	Graffitis sur horodateur	1	11010	108	11	\N	\N	\N
11177	Graffitis sur kiosque à journaux	1	11010	1515	12	\N	\N	\N
11178	Graffitis sur panneau routier (et / ou vélo)	1	11010	1499	13	\N	\N	\N
11179	Graffitis sur plaque de nom de rue	1	11010	1499	14	\N	\N	\N
11180	Graffitis sur station AutoLib'	1	11010	1513	15	\N	\N	\N
11181	Graffitis sur Trilib'	1	11010	108	17	\N	\N	\N
11182	Graffitis sur autre mobilier urbain municipal	1	11010	108	18	\N	\N	\N
11183	Graffitis sur mobilier spécifique RATP	1	11010	108	19	\N	\N	\N
11184	Graffitis sur mobilier électrique	1	11010	108	20	\N	\N	\N
11190	Affiches ou autocollants sur aire de jeux pour enfants	1	3700	1499	2	\N	\N	\N
11191	Affiches ou autocollants sur barrière / palissade de chantier	1	3700	174	4	\N	\N	\N
11192	Affiches ou autocollants sur boîte aux lettres (La Poste)	1	3700	1490	5	\N	\N	\N
11193	Affiches ou autocollants sur boîte de bouquiniste	1	3700	1499	6	\N	\N	\N
11194	Affiches ou autocollants sur borne Belib'	1	3700	1519	7	\N	\N	\N
11195	Affiches ou autocollants sur borne textile	1	3700	108	8	\N	\N	\N
7200	Corbeille de rue 	1	11130	108	3	\N	\N	\N
7201	Abris bus	1	11150	1488	12	\N	\N	\N
7202	Banc 	1	11150	174	14	\N	\N	\N
7203	Jeux d'enfants - table de jeu - aire sportive	1	11150	1516	22	\N	\N	\N
7204	Kiosque et chalet	1	11150	1515	23	\N	\N	\N
7205	Boite de bouquiniste	1	11150	1515	16	\N	\N	\N
7206	Mobilier urbain publicitaire	1	11140	1488	6	\N	\N	\N
7207	Mobilier d'accroche "2 roues" 	1	11150	174	24	\N	\N	\N
7208	Journal lumineux d'information	1	11140	1508	5	\N	\N	\N
7209	Horodateur (HS, souci ticket…)	1	11150	1512	21	\N	\N	\N
7210	Plaque de nom de rue	1	11140	174	8	\N	\N	\N
7211	Ascenseur en panne	1	11150	1504	13	\N	\N	\N
7212	Station Vélib' 	1	11150	1489	27	\N	\N	\N
7213	Station Autolib' 	1	11150	1513	26	\N	\N	\N
7401	Fuite ou mauvais état d'un appareil au sol	1	11050	108	1	\N	\N	\N
7402	Fontaine à boire sale ou détériorée	1	11100	1505	24	\N	\N	\N
7403	Fuite ou débordement sur fontaine ornementale	1	11110	1504	26	\N	\N	\N
9200	Pied d'arbre enherbé	1	11160	108	5	\N	\N	\N
9300	Herbes éparses sur espace sablé	1	11160	108	3	\N	\N	\N
9400	Végétaux en mauvais état 	1	11160	1	6	\N	\N	\N
9500	Pelouse en mauvais état	1	11160	1	4	\N	\N	\N
9600	Arbre dangereux ou en mauvais état 	1	11160	1	1	\N	\N	\N
10602	Graffitis sur Abris bus, mobilier urbain publicitaire, sanisette	1	11010	1488	1	\N	\N	\N
10603	Graffitis sur station Vélib'	1	11010	1489	16	\N	\N	\N
10610	Borne de taxis	1	11150	1475	20	\N	\N	\N
10618	Graffitis sur boîte aux lettres (La Poste)	1	11010	1490	5	\N	\N	\N
10623	Boîte aux lettres (La Poste)	1	11150	1490	15	\N	\N	\N
\.


--
-- Data for Name: signalement_type_signalement_alias; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_type_signalement_alias (fk_id_type_signalement, alias, alias_mobile) FROM stdin;
\.


--
-- Data for Name: signalement_type_signalement_version; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_type_signalement_version (version) FROM stdin;
1
1.00999999
1.01999998
1.02999997
1.03999996
1.04999995
1.05999994
1.06999993
1.07999992
1.08999991
1.0999999
1.1099999
1.11999989
1.12999988
1.13999987
1.14999986
1.15999985
1.16999984
1.17999983
1.18999982
1.19999981
1.2099998
1.21999979
1.22999978
1.23999977
1.24999976
1.25999975
1.26999974
1.27999973
1.28999972
1.29999971
1.3099997
1.31999969
1.32999969
1.33999968
1.34999967
1.35999966
1.36999965
1.37999964
1.38999963
1.39999962
1.40999961
1.4199996
1.42999959
1.43999958
1.44999957
1.45999956
1.46999955
1.47999954
1.48999953
1.49999952
1.50999951
1.5199995
1.52999949
1.53999949
1.54999948
1.55999947
1.56999946
1.57999945
1.58999944
1.59999943
1.60999942
1.61999941
1.6299994
1.63999939
1.64999938
1.65999937
1.66999936
1.67999935
1.68999934
1.69999933
1.70999932
1.71999931
1.7299993
1.73999929
1.74999928
1.75999928
1.76999927
1.77999926
1.78999925
1.79999924
1.80999923
1.81999922
1.82999921
1.8399992
1.84999919
1.85999918
1.86999917
1.87999916
1.88999915
1.89999914
1.90999913
1.91999912
1.92999911
1.9399991
1.94999909
1.95999908
1.96999907
1.97999907
1.98999906
1.99999905
2.00999904
2.01999903
2.02999902
2.03999901
2.049999
2.05999899
2.06999898
2.07999897
2.08999896
2.09999895
2.10999894
2.11999893
2.12999892
2.13999891
2.1499989
2.15999889
2.16999888
2.17999887
2.18999887
2.19999886
2.20999885
2.21999884
2.22999883
2.23999882
2.24999881
2.2599988
2.26999879
2.27999878
2.28999877
2.29999876
2.30999875
2.31999874
2.32999873
2.33999872
2.34999871
2.3599987
2.36999869
2.37999868
2.38999867
2.39999866
2.40999866
2.41999865
2.42999864
2.43999863
2.44999862
2.45999861
2.4699986
2.47999859
2.48999858
2.49999857
2.50999856
2.51999855
2.52999854
2.53999853
2.54999852
2.55999851
2.5699985
2.57999849
2.58999848
2.59999847
2.60999846
2.61999846
2.62999845
2.63999844
2.64999843
2.65999842
2.66999841
2.6799984
2.68999839
2.69999838
2.70999837
2.71999836
2.72999835
2.73999834
2.74999833
2.75999832
2.76999831
2.7799983
2.78999829
2.79999828
2.80999827
2.81999826
2.82999825
2.83999825
2.84999824
2.85999823
2.86999822
2.87999821
2.8899982
3
3.00999999
3.01999998
3.02999997
3.03999996
3.04999995
3.05999994
3.06999993
3.07999992
3.08999991
3.0999999
3.1099999
3.11999989
3.12999988
3.13999987
3.14999986
3.15999985
3.16999984
3.17999983
3.18999982
3.19999981
3.2099998
3.21999979
3.22999978
3.23999977
3.24999976
3.25999975
3.26999974
3.27999973
3.28999972
3.29999971
3.3099997
3.31999969
3.32999969
3.33999968
3.34999967
3.35999966
3.36999965
3.37999964
\.


--
-- Data for Name: signalement_unit; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_unit (fk_id_unit, visible) FROM stdin;
\.


--
-- Data for Name: signalement_workflow; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow (id_workflow) FROM stdin;
2
\.


--
-- Data for Name: signalement_workflow_notification_config; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_notification_config (id_task, subject, message, sender) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_notification_config_unit; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_notification_config_unit (id_task, destinataires, id_unit) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_notification_user_config; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_notification_user_config (id_task, subject, sender, title, id_message) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_notification_user_value; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_notification_user_value (id_history, id_task, notification_value) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_notifuser_multi_contents_config; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_notifuser_multi_contents_config (id_message, subject, sender, title, message) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_notifuser_multi_contents_task; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_notifuser_multi_contents_task (id_task, id_message) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_notifuser_multi_contents_value; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_notifuser_multi_contents_value (id_history, id_task, notification_value, id_message) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_rac_unit; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_rac_unit (id_config_unit, id_task, id_unit_source, id_type_signalement, id_unit_target, id_state_after) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_webservice_config; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_webservice_config (id_task, id_state_withws_success, id_state_withws_failure, id_state_withoutws) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_webservice_config_unit; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_webservice_config_unit (id_task, id_unit, prestatairesansws, urlprestataire) FROM stdin;
\.


--
-- Data for Name: signalement_workflow_webservice_value; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY signalement_workflow_webservice_value (id_history, id_task, webservice_value) FROM stdin;
\.


--
-- Data for Name: sira_user; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY sira_user (id_sira_user, user_guid, user_udid, user_device, user_email, user_token) FROM stdin;
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Data for Name: unittree_action; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY unittree_action (id_action, name_key, description_key, action_url, icon_url, action_permission, action_type) FROM stdin;
1	unittree.unit.action.createUnit.name	unittree.unit.action.createUnit.description	jsp/admin/plugins/unittree/CreateUnit.jsp	fa fa-plus fa-fw	CREATE	unittree.unitAction
2	unittree.unit.action.modifyUnit.name	unittree.unit.action.modifyUnit.description	jsp/admin/plugins/unittree/ModifyUnit.jsp	fa fa-pencil fa-fw	MODIFY	unittree.unitAction
3	unittree.unit.action.deleteUnit.name	unittree.unit.action.deleteUnit.description	jsp/admin/plugins/unittree/RemoveUnit.jsp	fa fa-trash fa-fw	DELETE	unittree.unitAction
4	unittree.user.action.modifyUser.name	unittree.user.action.modifyUser.description	jsp/admin/plugins/unittree/ModifyUser.jsp	fa fa-pencil fa-fw	MODIFY_USER	unittree.unitUserAction
5	unittree.user.action.moveUser.name	unittree.user.action.moveUser.description	jsp/admin/plugins/unittree/MoveUser.jsp	fa fa-sort fa-fw	MOVE_USER	unittree.unitUserAction
6	unittree.user.action.removeUser.name	unittree.user.action.removeUser.description	jsp/admin/plugins/unittree/RemoveUser.jsp	fa fa-user-times fa-fw	REMOVE_USER	unittree.unitUserAction
10	unittree.unit.action.moveSubTree.name	unittree.unit.action.moveSubTree.description	jsp/admin/plugins/unittree/MoveSubTree.jsp	fa fa-sort fa-fw	MOVE_SUB_TREE	unittree.unitAction
7	module.unittree.sira.unit.action.modifySector.name	module.unittree.sira.unit.action.modifySector.description	jsp/admin/plugins/unittree/modules/sira/ModifySector.jsp	images/admin/skin/plugins/unittree/modules/sira/modify_sector.png	MODIFY_SECTOR	unittree.unitAction
\.


--
-- Data for Name: unittree_sector; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY unittree_sector (id_sector, name, number_sector, geom) FROM stdin;
\.


--
-- Data for Name: unittree_unit; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY unittree_unit (id_unit, id_parent, label, description) FROM stdin;
0	-1	Racine	Racine des entités
\.


--
-- Data for Name: unittree_unit_sector; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY unittree_unit_sector (id_unit, id_sector) FROM stdin;
\.


--
-- Data for Name: unittree_unit_user; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY unittree_unit_user (id_unit, id_user) FROM stdin;
\.


--
-- Data for Name: workflow_action; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_action (id_action, name, description, id_workflow, id_state_before, id_state_after, id_icon, is_automatic, is_mass_action, display_order, is_automatic_reflexive_action) FROM stdin;
13	A traiter	Le signalement devra être traité	2	7	8	8	0	0	0	0
14	Requalifier	Requalifie le signalement	2	7	19	12	0	0	0	0
16	Rejeter	Rejette le signalement	2	7	11	13	0	0	0	0
17	Programmer	Programme le traitement du signalement	2	8	9	9	0	0	0	0
18	Déclarer un service fait	Déclare le service fait sur le signalement	2	8	10	14	0	0	0	0
19	A traiter	Signalement à traiter	2	8	8	8	0	0	0	0
21	Rejeter	Rejette le signalement	2	8	11	13	0	1	0	0
22	Déclarer un service fait	Déclare le service fait sur le signalement	2	9	10	14	0	0	0	0
23	Requalifier	Requalifie le signalement	2	9	7	12	0	0	0	0
27	Création	Création d'un message	2	13	19	12	1	0	\N	0
29	Reprogrammer	Reprogramme le traitement du signalement	2	9	9	11	0	0	0	0
38	archivage signalement rejectés	archivage signalement rejectés	2	11	12	\N	0	0	\N	0
39	archivage signalement service fait	archivage signalement service fait	2	10	12	\N	0	0	\N	0
40	Programmer	Programme le traitement du signalement	2	7	9	9	0	0	0	0
41	Déclarer un service fait	Déclare le service fait sur le signalement	2	7	10	14	0	0	0	0
42	A requalifier	Signalement à requalifier	2	7	15	16	0	0	0	0
43	A requalifier	Signalement à requalifier	2	8	15	16	0	0	0	0
44	A requalifier	Signalement à requalifier	2	9	15	16	0	0	0	0
45	Requalifier	Requalifie le signalement	2	15	19	12	0	0	0	0
46	A faire terrain	A faire terrain	2	7	16	17	0	0	0	0
47	A faire bureau	A faire bureau	2	7	17	18	0	0	0	0
48	Programmer	Service programmé	2	16	9	9	0	0	0	0
49	Déclarer un service fait	Service fait	2	16	10	1	0	0	0	0
50	A requalifier	A requalifier	2	16	15	16	0	0	0	0
51	A faire bureau	A faire bureau	2	16	17	18	0	0	0	0
52	Programmer	Programmer	2	17	9	9	0	0	0	0
53	Déclarer un service fait	Déclarer un service fait	2	17	10	1	0	0	0	0
54	A requalifier	A requalifier	2	17	15	16	0	0	0	0
55	A faire terrain	A requalifier bureau à terrain	2	17	16	17	0	0	0	0
56	A faire terrain	A faire terrain	2	8	16	17	0	0	0	0
57	A faire bureau	A faire bureau	2	8	17	18	0	0	0	0
62	Service fait	Déclarer un service fait prestataire	2	18	10	1	0	0	0	0
63	A requalifier prestataire	A requalifier prestataire	2	18	15	16	0	0	0	0
64	Service rejeté	Rejeter prestataire	2	18	11	13	0	0	0	0
66	Ne pas utiliser	Action à ne pas utiliser	2	18	18	3	0	0	0	0
67	Ne pas utiliser	Action à ne pas utiliser	2	18	18	3	0	0	0	0
68	Service programmé	Réception du service programmé par le prestataire	2	18	21	9	0	0	0	0
69	Ne pas utiliser	L'action à ne pas utiliser	2	18	18	3	0	0	0	0
70	Service fait	Service fait par le prestataire après programmation	2	21	10	14	0	0	0	0
71	Service rejeté	Service rejeté par le prestataire après programmation	2	21	11	13	0	0	0	0
72	Service programmé	Service reprogrammé par le prestataire après programmation	2	21	21	9	0	0	0	0
73	A requalifier prestataire	Service à requalifier par le prestataire après programmation	2	21	15	16	0	0	0	0
74	Test Magali_supp	Test Magali_supp	2	20	18	1	0	0	\N	0
75	Requalifier	Requalifier un signalement	2	8	19	12	0	0	1	0
76	Surveiller	Surveiller une anomalie	2	7	22	6	0	0	0	0
77	A traiter	Le signalement devra être traité	2	22	8	8	0	0	0	0
78	Requalifier	Requalifier un signalement	2	18	7	12	0	0	0	0
79	Requalifier	Requalifier un signalement	2	21	19	12	0	0	0	0
80	Surveiller	Surveiller une anomalie	2	8	22	6	0	0	0	0
81	Surveiller	Surveiller une anomalie	2	15	22	6	0	0	0	0
82	A requalifier	Signalement à requalifier	2	22	15	16	0	0	0	0
83	Programmer	Programme le traitement du signalement	2	22	9	9	0	0	0	0
84	Requalifier	Requalifie le signalement	2	22	13	12	0	0	0	0
85	Transferer prestataire	Demon appel WS prestataire	2	20	19	\N	0	0	0	0
86	Demon service fait	Demon WS prestataire pour service fait	2	20	10	\N	0	0	0	0
\.


--
-- Data for Name: workflow_action_action; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_action_action (id_action, id_linked_action) FROM stdin;
\.


--
-- Data for Name: workflow_assignment_history; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_assignment_history (id_history, id_task, workgroup_key) FROM stdin;
\.


--
-- Data for Name: workflow_icon; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_icon (id_icon, name, mime_type, file_value, width, height) FROM stdin;
1	Valider	image/png	\\x89504e470d0a1a0a0000000d4948445200000018000000180803000000d7a9cdca000001bc504c5445fffffffdfdfdfbfbfbfcfcfcf9f9f9f6f6f6f3f3f3d2d2d2fafafaebebebd8d8d8d3d3d3b2c7dbb3b3b3b1b1b197b3ce8faeca779dc0638eb67d7d7d4f7eaa4771984e4e4e0d14190c141b101010f8f8f8f5f5f5f4f4f4f1f1f1f0f0f0eeeeeeedededeaeaeae7e7e7e2e2e2e1e1e1d7e2ecdedededbdbdbd6d6d6d5d5d5d1d1d1cfcfcfc1d2e2cecececbcbcbcacacabacddfc5c5c5c3c3c3afc5cfadc3d8a9c0d6a4bdd5a3bcd4b4b5b5b2b2b2abababa9a9a9a8a8a890adc7a7a7a78cacc98babc9a3a3a39e9e9e9d9d9d9b9b9b7da1c29999997a9fc1789dbf769cbf9293937299bd8f90906690b7628db55f8bb45d8ab48080805987b25886b15785b05584b05483af7979797777777575754e7da97373734c79a36e6e6e49749c48739b47729a5b6874476c8d426a8f42698d5f5f5f4066895d5e5e3d62843c608156595b3c5f7e505a605656563556744f4f4f4b4f5233526e33516b32516d404c543a4d5e4848483c41433c3f412941583c3c3c313e49283d51263c51243a4f27394a2639492437492c353b2d30312132422630382c2c2c1c2d3d1b2b3a27272723282c2525252424241c1c1c131e281617170b12180b0c0b080c0e080908cb531b250000000174524e530040e6d866000000fb4944415478da6360c0029818b00346666ca25c6262161a8c58246c6c8d4b783930c50d13f945bbf9b0e81016149810ae8f29a155ca2fda6689c555651e02e291ba981aacb3758a3b7959e17c5626881ac602533ff15875b837d8929ab459c036fb9be5f55ac9c2357056abd63bb23130b0e79807f5e57223ac66760ee6a9f19263cc72f0ce9ce8c68964a774b9bb67a34f74114f587b9591144a0035080ab5f49b08a54c0a5446712b4b7abcafab817d546d0f1f1baa07e45b0342424592255235d1829cc9ae4e2426ae52d24901ddcf321569091912f97a2c18b1a6d255d821e9a288259ed99b274770b360893a0e257635561c69809181080000c74b2bf93b2091d60000000049454e44ae426082	14	14
2	Refuser	image/png	\\x89504e470d0a1a0a0000000d4948445200000018000000180803000000d7a9cdca00000243504c5445fffffffcfcfcfdfdfdfbfbfbc34c36fafafaf7f7f7e8e8e8f6f6f6f9f9f9f2f2f2e6e6e6be3b22ba3a22f1f1f1ecececebebebe0e0e0dfdfdfc7c7c7b4b4b43b1711e5e5e5e2e2e2e1e1e1d4d4d4cdcdcdcacacac9c9c9c5c5c5bebebeaeaeaea5a5a5a3a3a3a0a0a0cb7868717171c84e37c64d37c44d366d6d6dc03b22bf3b22bd3b225f5f5fbc3b22bb3b22ba3b22b93b24b739225c5c5cb23821575757545454962e1c4e1d144c1b133c18122d16112d1510f8f8f8f4f4f4f3f3f3eeeeeeededede9e9e9e7e7e7e3e3e3dcdcdcd7d7d7d6d6d6d3d3d3d0d0d0cfcfcfc6c6c6c1c1c1b9b9b9b8b8b8b6b6b6b5b5b5b0b0b0aaaaaaa7a7a7a4a4a4dd8d7d9f9f9f9d9d9d9a9a9a999999d17f709494949393938f8f8f8e8e8ed9705bd66f5bcd7261cc72618a8a8aca6d5bc16e5e848484838383ce6653d3634ed05f497e7e7e7a7a7ab06354787878767676c95641ce523a747474b45b4a7272726e6e6ec24d366c6c6c6a6a6ac2462fc24129636363ad4632be3f27bd3f28bd3d25c23b22b83e27bd3c24b63d26b93a22b43a23b63922b43922b03720ad3620a23a26a1352151515198311e96311e992f1d94301e922f1e912f1e922c1b8226188226173e3e3e50332e3b3836652419462f2a5c251b35302e57211942201939221e3b1f1a2626263c1d194e160d49160c242424331d18411710371a16351b162e1b182d1916201e1e2c19172e181531171230161137130c251a172618161d1a191f19181919192f0e0724120e280e0a22100d151515230f0c250e0a2c0b052109051d09061809060e569b6f0000000174524e530040e6d866000001734944415478da6360a02eb0139166638671981819e1123173e76bb0b341d8814b16c87141a5986686649a9b08723001d9be6b53aa374bf231812518a765e4ab59980a713030c82e8dab34dbe8c70dd1c23c9d45534b7d46b1389be0a67883498b54fca1128cc2eb597878586615ba6c496e98b2b74cd1136a14035784358bb6aeb1e8ae9c8ac93bb382a505604e641688b262d1d3372c2ae8db57a220c5cf0a772f2b7b9a250b2faf6aebb6a9e1c2fccc485ee4e4365a9cdec8cb6b6ca921698bec7726d90d91354d86fa7a6d56b1dc9c48123efb956b276c152dd5d56eb78e6647d891b450d9a07777aa9128d0d92d6be4e1aeca9b93d86cb6275bc15b6599ba9666e76a0f2e883f98e625d4f5ec285794629730b150abef58252206f5f9ec89fd07aa9464f859d9244ccd55bb56060941cc62945bbe5d27d4cb1168278790ce8a75ddf2e2504bb8dc450264d8c1aee4100ccb551276808615239f98b33dd4f56cecae6e4e3648d1c9046333b371b0e24b0700373150ebeaa3e2d40000000049454e44ae426082	14	14
3	Commentaire	image/png	\\x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af40000000467414d410000d904dcb2da020000067849444154789cc5964d6c13e919c7fff365c7c4cd879d8f0d64edb80e34c28ba304a9212840d4224e143801074a94037bd86dc3a16aa54891b85184a05237d96aa52a3d80842a558a90e0c20a11407ce4404c886cc7de86754c242731ac89673cb6c733f33e3d9044d9acd776aa7efca5f734efbccfef79de79fef300ff6709956edcbf7f7ff7e9d3a74ff03ccfcbb29cd7342df79f00102bdd78ead4a9c1919191dfacaeaee2eddbb7c9783cfe4d241299999999090483c1d94824f26d3a9d7ebf5d00aecc73e1ead5abbf773a9d1f777575fdcaed767f6c1806044180244910840f05cce572482693cbf178fc9f4b4b4b51c69856ec6c228224495c2010088d8e8e7e590960c3ecec6c82d654281448370cca9b26657339ca66b394cbe5289fcf53a150a04a35313111d8c8b00c80e3dcb973bfdeb56b57fdb70b0b48c932e464126c6e0e92d3094e92408c8188c01883aeeb6517c771304d7387cbe56a0d854221be5c09789e474ed3109d9a82944c627e64047a3e0fb1ba1a2002c771db5a8c31ecdcb9b3766868e8f3c6c6c676bebfbfffc8f1e3c77f590a8288505d5707737c1c5a4b0b2c7d7d0063955c6151711c877038fc5d241259168f1e3d3a32343474f4c68d1b7f49241219599697c7c6c6c600e8ebc1ab2c16581a1ab03a30008769c2aaeb802080e3ca7dc3c5835b2c1684c3e198aeeb09f1d2a54b5763b198e7e2c58b9f757474e0fefdfba1e6e6e6b6f1f1f13f2d2c2ca419631045113fefea02e338f01fee10cc34ffed0a00c0ececec1c005920a2e5603098aaadad3db067cf1efbdebd7b1d8661d89a9b9bdb88a8aabfbfff176eb7bb5e5614643319e83c0fa4d3e02509102af6b10d0982005555313636762b168b3d1100e88cb185a74f9fbe4ea5529eb6b6b65dbdbdbd1fd5d4d4d8dfbd7b57b76fdf3e9fd3e9b43dbe7f1f862461fe8b2f509d4ea3c6ef07781edc5a592b5d9224219148d0b56bd7461545f9663d853c11c55ebd7af52a140ad99d4ee7de9e9e9ec6eeee6e573e9fb728b99c24be7f0ff7d75f63657e1e6dc3c3b055558118db761788a2886030981a1d1dfd3380e4e61aea0096161717679e3c79a2582c169fcfe7abf3783c92aa2848a82ad2990cd29f7c829ffa7cb08a15bbf8868808a228e2d9b367b1898989af0064b65e220390521425383939199365d9dbd0d0d0e4f178d0e870a0aeb3133ff3fb515d550522da56e0cd002f5fbe5cbc7dfbf6df00e48b19110158d175fdef77efdefd5296653c7ffe1c055d87c36e874514c1711c789e2f5beeadc1d7b5b97d4b3961ceeff74bbdbdbdf07abd989e9e46341a85aeeb30d75a5092a492596f5dac887995bcc8aeae2ebf2008f07abdb0d96c98999981aaaab05aad989a9ac2891327e072b960180668cd963707dc0a534ca50044bfdfbf6ffde0a6a6261c3a7408939393181c1c84c3e1402814c2c0c0000e1c3800c6d80f322c0652b16c365bebf4f4f4db542a4544448661906118a4280a5dbe7c994451a41d3b76d0912347e8d6ad5b4444649a26699a469aa6513e9fa7dcda2f5b555552559532990c1111ddbc793300a0ae2440676767ffd2d2124b2693df03304d938888eeddbb47bb77ef2600d4dada4a57ae5c21555549d775d2346d23f83a4026932145518888e8faf5ebcf00d49404387bf6ec6fb3d92c2d2f2f7f0f6033c49b376f687070900090cfe7a34c26438cb18dec5555ddd8af691a99a6498f1f3fd65a5a5afe00c002941848ce9f3fffe9c18307bb73b91cec763b00fca0bdeaeaea70f2e449f87c3ed4d6d6429224343737c36ab5823106c330208a220cc300630c8140c03873e6cc578944e2af004ace8f96870f1f4e9ba6b95101d3348baecde3daa3478fe8ce9d3b140e87299fcf532a9522455128954a51381ca6e1e1e159007bb0695efc311f70a8aa5a158fc7cb7eb68c3198a6099ee771f8f0e18d8e2022e8ba8e6c368bb9b939489204c3300200e6f1c1ec4aea2782201c6b6a6abafce2c58bd5724326638c4cd3245dd7c9300c22225a5d5da568344a0f1e3ca04824424444c78e1dfbddd6403fe60319d3341f2493c99542a1f06939dacdf66b9a26d2e9345ebf7e8d743a8d8e8e0eb4b4b4409665168d46e72a0520000680950b172efcc36eb7b7b3623ebaf92051e4ebebeb6bdc6e77437b7b7b436767674d5f5f1fac562b00607171f1bb783c3e5f29c0bade8742a13fe2836994bb371e4015805a9ee73f72b95c6eafd7ebf1f97c9e9e9e9eb6582c1601b0b2f5a5ed4f95e525009000d800d801d40368029006300b40fb6f0314d37ab7112ae880ffa9fe054d115d3c36c248200000000049454e44ae426082	14	14
4	Replanifier (Ramen)	image/png	\\x89504e470d0a1a0a0000000d4948445200000030000000301006000000079225c400000006624b4744ffffffffffff0958f7dc00000009704859730000375c0000375c01cbc7a4b90000000976704167000000300000003000ceee8c570000394f4944415478dacdbc675814d9b7fffbdd559d03a101c9191413c184a2222a28e69cb38e39c7710ca3e3e818c6c818474c63ce23413060401150098a8864909c9bd0b9abeaff829edf39cfefdcf39c73ef73eff3dc7af3e955ddd57befb5d65eb5f6aa40f0ffef8d32b19b89434c149b9866e25b13d5ff4f1bbab6ffdab96bfb01a946da28d58027940bc542198cc27bc207c2fb48f11ae696e5b514a3f3938b37e45f1344386a1cf739eae67d33661a928d9963efb31fb864f603af40b043b05db0e3dd39f3fde647cdf747c618271b46182757dd6b13b759b689a9bd9d53bb083aa7b23bfe191fefff6b0ddacdb35b64370fd01ed61ed21e06a5b4515a296dc09abe1e13de2f7c48783f72a8b7b2b7b6b7925a3e841e623e84864d4856c8e3902c2e0dfdd00bfdd80d48c6472463be6ea56ea56e25c076623bb39d102e5e235e255e43ce968e295d563a86da10e711e711e781391f5d3e5a7e74e11ae37bc67789efc98ef35279e9bd5498e8b8c071b1e302d0d76baf175caf0543f8844ff800ada473e81a4051a76851a861148e160e128e2242c17b41b2209deb9bbbbef075aecc7e832d63bbdeb6ff53754963895f49bda375ddcababfeb56debf66d419bb1a75ada3c43f8a4f887f1cd6d776458729b62b36b8d9f26d2b6cf91bb32ca3157f59465fdc91b521eb72d606ca57f0899f25f8c47efe7f4dd1828982498289ff21731cc7711ce8a6fe4d639afa03c1d260f36029b9f8e71f7fdef8f30f7a95e9fb6413d1aa6d93b76a21341d4efeaf5ba1cada49279a761cfff76e98fe8ffae77f4d744c1c9638277118d5b070ebc2030bb752bf9a7eeffb6ffdc538d9f8f0713ee86e92abfed99f793a3334f3eceb92c8bcc8fd91294f9a4cfdd8fccff11b766c58b8613d79b12f6d5ff2be34603c194f8f2743afdc797c67fd9dc7ea4e59933fabb3262f11d4f7a8bb57df03288d2aed5b1a45ddf96f06fabf50789020481004e8927449ba24e0fcc7f3b9e73f42a07aaffaa07a0ffdabb7af9ebf7a4b3e4f39302562ca019230db75b6f96c577697e9f016d300a6fa16fbaa7d8b7d44fd17f4dfd47f415f99f365976bce9703bc6cba5a7bd974f5da2517ca8d72a14d9b70a8b0bf70a84ccc39731e9c334960052c8f15689a35c99a6c4d7263ff96212de35a86943eafaaa96aaaaac90afdbc336bcbe79da91951f68faaa3ec3392dbdb53fd686adff17deff7a3def726eb6e04dce8722380f81e3b77ecd0b173ecf00ccff4980c6bcadc3ac4dac1ba0fdbcc58311e8c750fafd4afa9dad4bab4fc82f785990553b719b6d76e0fdfbee0f015420821c4d0edd5fc976b5f1e17847f8f2c8f2c3fceba3e313cd1c4e7193f377d6bcc6dca1e3667d5c7552b577dbcee1bf0d1ff71c0c7eebf5143e81ed490eaa6ffdb06089406ca03a5009bc966b09910b496b57e6f2d83de906dc83664e3dedc7e7387ceed47f13afedef14ac7df59f264e893814f8662dc87c51f277e58ecf162383dcc63383d97e93aacebc0aec3267d741befe6e136becb5d7b9d7dacbd8e4ab37c6db1c2f235f2c55dc4a5e22ef0e69da737f02201729bda4c6e0398cbcdc05c8093709d3909c04ee136b35300c35ec36bc3af30b42d6b8b695b860f0dd98ddd1bb21154ee5fbebedcbf32212f206f7a5e407c875709af625e255c9e15732d6647ccb5b7b34cfebff52077c8f2a081b03553aabbd76ca4636436b21c196d1c6b7037f430b8cc70773eedfc93f3941b45fda70f38366031d070b8cebacea90851f3a26aa22a6787baffe19ee29e9a9cd010d1b0b3611ef574f38a2df53f9e203d6572d91ea981b13afdf8f486d38f932d06d40fb833a0fe8e4a52294e97541e33fc8f06a007d003e801c05afe5ac95a3ec07de7cab9ef9090a16428190a755953597d5913b9d939b97366e76472f7fdb3f7d1ef9fb10faa1e57ddab7aec3d6df488d1eb478fd8b1bb6775cf8f3daba7f5f0f1f179eae323543b54da4f77a8c473e1556188f01a1274e3749d75a399056a9eda4a0dc46acbb4aeda62f2dc70de90663887f34c2f6626d3872cc53ba42309e65411f5942a46146f24af336f14b751f852f09330911b2ade21192dde85c7e253a2fde2735417c41316f164b6f288d2457904b1c5478b3b171fc1a8ccd44fb699a9c9839ebb24383d77f9e5e843ab07cd0fad9ef47a3ff343f00757fa260249127298199f9664a67dfafad70abf78bf0f7e1fe69c627c8d6b8d9b0c9384b5fc3ff811fcfb35dfab55d52add86b737deeadf6a266fb469b6ee6efd2ec6c9d1c1b9cca551d05972405629bda8cff970ed43ee87bb671f867987bd0bf316af14cf114d10cf9957f9df1a40fe42fe42fe02287e5d9c51fc1a885a1035276a0184d551d50faaa3a04bf935e5e7945fa939517551b55175ec5553605abc64f092194b066fbb14dc33b84b70cf1ffbf44eec15d43b5194e4fcd989ef9cc535b105dc25369f4d54ce535e574ea3a62abd947f28ddc9a36643cbba6609c295479479cd7f816dd9d872bd793fa8b663aa1baa33803e5277467716e0345c2ba702f83bf93bf93b0071b6e483380330ab942798e58133b7352f32e781588c35d75a04a3deacc86c8159019766f9d5f207cb22b655fca368b6f827ea967245b348b99c4cf864f5b9fa931566253e4a64121f451d7ace7b5ef75cb16ed4895727169d5850dccd3bd1bbd6bb71765c65978ad715afae86ab1fa9f42a1dfb856b605c181764c966499f499f51331a4b94a9ca745551d28ee43f93770d3d5eb2a824bcb822f58fd55d57df5a7b0e885ff6e440fcc03b163e9d7cd27c3a35ebed6ded05f6b68bd5ffc50096332d675ace045e9f7c7df6f549e05dddbb9a77751094be2f7d5ffa1efa9c2f39d9395f687cfcfcf1c3c7cf0ce46a798d5cedf97c4ad8940d53c26e740c7d1dba25f4751f677fb19fbdbf84cde673bc7d7c0e7e0ddd1a9f377852cbaba6566baba6e28fef7f7df7fc9e0163e1d3c2fcc214f02ab754fa57fa01adb5ad9b5b7f028c07f4757a2540bcc813f20cc0337281440218c90de18600c603cc3be61dc0ee66cbd97280589223e42020eb20ff59be0db04db3f5b075023c4678847a8c07eb3edb9defde1794e3468752c765a8b5996e73db663e7b9dff82f73bff05ee143a14890a1da8e4b815f1be714b1a3b3f9bfcecd7677b57b71e7f11713ce2d634da7abe657fcb5e634bab7b57fc5671901b6190e8557a3d8913f4166d116d610f4a27cb8eca66533fb6ce6acb55a57c6de9f6c9634bb7a90139ddd47d9776db69e6b489da786c93a2a850e5d9d6a6f25c70c9acc82cd5ace8fee57f1940241009440260ead8a9e3a68e05f83c3e9fcf8388be40ff455f80b6f148e3b1c62374d7a6634de79b8e31d9ba5e3a475dafe03963478d5d3676d4fd0e63b3c7b88dcdb63eec2e76ebe02e6156682e695a35e7e9fcb2e28acb65dff0ec4bf297055f34d0673cca789df108823affda8eb5be807cb0cc53d611304f31139a8900b326b3bd66bf0216528bf316e701329bfc401601240881e80b30f7d9d7ec2bc05861d41ab580ce5cd74dd71d50e7ab5dd5ae40d5d12adf2a3f405dab59ae5901b42d56cd57cd01cc61516e5108f876f59ded3b176c8f9a1ebff54804e599eae1e99982328b9516972c36b03f357e6f9cdc984ba5dcbc7dabe1e647647047b835dc58b44c481bb77adc6e38b6fddc62d722461d1e92cd641ed7ddfcb5e5488bfe68100bc49ba5d78d2b7264d929397df82762dd1eff152bdd1b64bda0c354ebe5a36f528ee412e5d0fc7ad3df9b6d37fd1d32cfa4f6deff32c080d401a9035201c926c926c92688e5e3e513e4e3a131ae6636185753f5cd4d4a6d73136bad57e88d7ac530c7891d270e9cd8f1ef6e535f4f2d9dfa4a1c6f3bd7e690ed0276644b8fd6a6161fea71f6baafbdb377409f607831f1853704e577bedffefe1070675c3bb83a009e0f3dba79740614660a0f8527d0a26d59d7b216a85d5f575a570a74dbd835a26b04a0dba14bd5a502084307d802ec5e36923d0f18fb1927192701cc21e616730b68bbaafaaefa0ee4eaf232f33201b740d7f5aeeb8126b66944d308a0e26de5b6caed40c5b94a5402507cb0fa6a95090cde36f8a7c1dba1ed1b1d68dff72c44b6da0e525b9a2b35a4199e19de70074f579f1d758625a595ebcaedca3e91d8896113359342818ad40a9b8a5bd86a5d6fb3d7661ea2f52bb58efac7c84e18f8e25a822f56891c243922179c446fae18bd6fd93fca7ec43eca5e32bb14a549a5683d1c9c39a82e3813b74817e72ece5d9c0151a4285214099ef96bf317e6af6124e92493a4537dab9e54c6563d61537849fc385e521f6e7ae374fbe98d09a259af6696ce7a25d32a5c157314eeac5ef3876685661f2578d79c1cf7ce1a9ad8bdb1eb6397416c23b0829518084ae85bd9b70c504091a5f80c50c16c2bdb0608aba513a513017e34cf87e703a4ff987927f30e10a8ec93dc2719a0a653815420c07de22ab80a80cd66b3d96cc02030f81a7c0184a12ffa0279d7f216e72d06944f9b6d9a6d00e7a54ea94ea940d35b6598320cd03dd25ed75e079a8dcde1cde140ae7fbe777e27a0caa5a6bea61618707e40a701eec058e398ad635201fbcbf6371c6ea10545dc0594c3ecc8fc63dc914ddce69cb55ff7e64c21bfcb9e4896cbca4f2c94584ac7481a127d1a57350e685c1412abfaaed9a9aabcade0ffc4bfc1ffb12462fcddf117c7dfa970a9585831b5621189cc5c90793273015725bc2c3c2bbc8c9d54e089c013812700ad41dba235c0585e52feadbc84485fc4bf78f2229e4dc91d90679e3bc06e4cf8b1f067e1c76efd36ce65dc8a712e32ad34407a50da938d6a4d687dd0fa90123ca39f573d0b82f661f7072f1f3c8738d0bc574daf6660faa22998c2009e2f3dd23dd201bb4b0e010e3d800e09723fb91f60a390b9ca5c017bbde302c70580ff65df69bed300f96fb271b2718085d2e281c503c0a2c8fca2f94540412c5f5abe043a3cb399633307b035b38db68d063a9de968e86800021b7a6b7b6b01a7dd8ed68ed6804b6fe708e708c06ea09dd04e08d8df7498e230050874e8d3d8a71e0808f56bf353016f9937ad6f0cc0b5d4ebc3aeb70235b76a226b2ec30c6e6401ecd1b6eef7358675ab60e136c9ddd66d22f0a12663fe87a8d73fbcea9838f95587073f96cfadba5e3e7ddd74124874a46bd2dfb7dd6e6fb9ed56e1525357535c534f6d4cbb9af621ed2a7ea0a5741b2dc54ed69771677d21a6bb9977b3eb660e2a6163c2c6848d2089fcc4f0443eb97eaaf254caa94adc2d682c702b68bccc4c719d72678a6bd05d9734a7972ee9cc49dd78fd3e5d283de76d7412fbf63bb4b1a131bfc71c8068eca0d123468f02863c0a391e7214105b88593107c85c64429910107f16c944328098f1aa79d580daa3b8aeb80e108a6d1fd83e00ccbb9aad335b0750af290fca03e092b8e9dc740016708003002de490036436358f9a07e029b2910d981d37ff68fe11909f92d5cbea01d103f179f1794016253b243b0488878afb89fb01a2efa261a26100f1223124065070967d2c7b036687cd6acd6a8094f129cf53128186b18d560d3f005d167575ec3212024980e48e24109d7d1dbbfbf93a1069fdebfac1f5c921ad9f333feffd9c7d675efaeab4baf4f5ca095e87bc06781da31f042c0b9816b00cca23b38edc3c328bbbfd25fe4bc1977830c58d45cdc58d2035f76b5fd7dc87818c2f1f5f36be1c605b5823db425d507e53d629bfb18bf4a30dfdf5a3670a16ec9bbf72c1beebbae13b868d1bbe8375373e31d2c618aab87043d1a2c2dfa0bb38f4a2cb4531848b5ecc1b356f2260ef661f65ff375072ab7444e9082078e98081030602faad86ab86ab006369d41bf5001d2bee23ee03d4de7993f7260f90973b699db480d8dc35dc351c604feb8d7a23408e90a164280025945002504006198066b4a10d803d1ce10870333113330178a3333a03e4134922490006220c610077923bce1d075441aae5aae580ee9d8eafe303f94ff3a7e54f033ebdc87a9cf518b05158ff617d1288bff9f4edd3b7c0888b230f8edc07767aef69fba74b41b1e94c0c9bc3daa49c7b7f2ae52c557767f89d0e7786dfe817326f7063c8bc59295413d9463511e3ec9f670f98fd33c7ab2da977af2d01a6d54cc99a5603bceafb4afeaaef7f649dbcf8bcf8dcf83cdcd40ed1866a87b033da774bc7ac59be66e79ae53f5bf67ada93e9f514d0466b4769a3c914558e2a5af519b873f0cef13bf7201c7968f8cee17b81a0c07e9dfa79038612c33ec33ea0e54a8b4d8b0df02e3939213901f00bf15de2bb04105408970b9703f899d9c86c04a4533cc77b8e071a3ebd19f56614e0b2c563bac774808b20e3c97800b7c87bf21e801ae94807c08335ac0122010d1a00855ad40224168771188045bb81b883104104507dc83c320f10ac16bd15bd056e086eddba750b184e859d083b01186e1adb8c6d40f0c6012b06ac00748ff5cd7a2530b46430190c206e4d9c264e0fcae791cf1e1f33183ddcdcad3d1ca87cffcebe93fc3b7327cb22ca1aca2266265fa9beec73a53ad29cd9c6ae60b6bde43daa7c94f4a892ea45dfa597d177d98ff6dfecd7da7ffbafeb2ddea88451ef4725d0fb5bd4ad8e2d6a06ba4e5a5b5da7b9b5012303e401233b4549b3a587a45f59be7e9781a75f4f19124ebcf89c900756f1d222c4c20dd444f7f131e3a300759ac65be30d70ce9c156705f8c7f995f895004fab9e593cb30022f75f5a72690930ebde8ceb33ae039632f3ade65b01195c68171aa88ed0acd6ac065a467da9ff520f986ff69dee3b1d603c34dd34dd001c2347c951005a94a2144034a49002a04181022047077400f03b7ec12f00dd484da02600ead1eae3eae3c045a72b6d57da80a19b07ef1bbc0fa029fa29fd14b03dd921b84330e06dee3dc17b0250222dc92fc907babeee52dda50aa849adf9bde60870d7f3eed8bbc3c0db347453d9264f58886f8a43c437b99aa03e41b783fa1014a4177c2e48df587c9077f0f341de4b2b380070e086932d642bd9826f81b24059a00c6d037207e40ec805de767adbe96d2780ce79939390f386ab29da57d85ab48f28c34f875f0e3f7d2e23c437e45088affd384a41965072dca8adadf5aba5c9aa271b9e383fa141967a2efe61f132c0426a5161510e30c1cc446622406da67ea47e048c97981026047058eac039001076175a0a1580c508cb5f2d7f05c4d6e2d3e2d30069a1e2a978803b2c7c297c0954af8a5e15bd0ae8f05348714831c096e99ee89e00e429154945022483bc26af01924abe902f00f9424a48094052491a4903489ff690c559712e9c0bc09fc81fc61f06081e0a2e0a2e02ade7dbe6b6cd052ae654cca89801540655f7acee09f895fb3af93a01bc19bc605e3060eccffcc0fc00d86cb6d1d9e8800f5f3e947c2803cc27989f37ff19f00ef23eeeed441885bfc579456f58286d9a4f28adbd36af3cb7f2d3ca733135914117664406553dee1bdbd7a76f2ca9b44ab07a6c9580434c1953ce940185570baf165e0568cf54cf52cf54c0ba8bb5af7597fe034225a1d5a192ed9b3a1ff7c9ec7c9c53eb7df5d7f55e64d2dba36f1fbe4d86b9a2d082672106c6da8d968f96011a8da6b7a637400551bda85e00292635a406c075dcc30340f04df045f0097079e8fc97732420ea2bea22f20198feec64763a008521da10054874cefecefe407940dcb4b86980f89c4c215300d2659e759e750097a87fa47f04e036554fd50398462a49258051a4981403e4011943c6005c1b67c159007c2bbe2bdf1530b818c718c7007419dd83ee01e48eced5e66a01a9b3b455da0a840d097b17f60e60361a1d8c0e8060bdf0b0f0302018c90fe18700f4229aa2298059ce0432fd80f46f19ea8c0620c831a87b903b3ca552e99f5231f39d1b013537925e543ba1ee5eedf8e69c1ecb027eefb1ec7986579ad733af34faa6eb3ad745aeebb8961c8b1c8b1c0ba028a228a22802a0fa6fec7fa2ff46a0a37547f78ed6a34e383938a53b3900869bc65cc30df64df3cc969896e570299857605f60030cd10e7e353811604a983026144041fbd4274bc85d72072063c95eb20fa003e8e5f43c40f35893afad005ae4ad29ad6d8066b6e68ae619c0d3f1c43c024041cc8939c07b444e9013805dd00897112e40f1c86b0faf3d04289a9e4bcf05b0089dd0092031a4813400e40692900450f6a427e909b06dac3beb0e886971bdb81e689dd716d71607a4f64c7d96fa0c105f12ad16ad06267b4c4a9d940af45f1e7436e82c40ce210a51006662277602b047000200e959d919d91940ce9357cbab819e593d5c7a3803ea73aa1c552190b729ef5bde49808be6f2b9fbd47c871e76bf3a04000e93ecfb394c1ad1655bd4b605dba2a8b56bb56b0bd66a99b2b59ab5dc5a0d16904a93e39836eaca9b2b47aebc01eceedaddb4bb1b3c5171c132507101d03fd7ddd5c710cb7245f94f65fd00513761a87004d0b1cc3bd0bb0f805728473920a994e44abe01a407194bc603144d3550158052d91cd6fc1b6098ab8a682b0378cee8432601384fc5503aa07668cdcf354f01dca0ac28738029566f55ff04d84d1c786de03540d3af996ea681fa15af725fe502fc22b356b356004e6c329b0c90666a30351860a6325799ab805c2e57c9554059aff23ee57d80f8654f7c9ff802feebfcd7fbaf0714b68a024501a0eea3bea4be04e001f94ebe03dc09ee25f71220e1d4366a1b00517b16c59bc2dbcadb0ad8ecb49e6a3d15b0abb2bb63771b708e74bee67c0bc82acf62b21a0046c7ac643464ae6c94ac46361a50fca998aaf8b3f3da6ebf774bebf67ba7373e5ce7913e1c10161236222c842c7cce7fce7fce27fd2c280bca82c276aafd8282ed7ecb63963f5a1eeb745128107e130a01fd4d7d95fe3a35a4745ee9aed2d5804798c7348f5940dda97af77a37e075e09b7d6f7e03723cbf71df08c0cad97e6c00a03daafda86b030472e19fc22440325c1225190f70cb5b1fb62c026447e44fe59300fe303ec3a700fd36fd037d3900330c453f40b05d784a781ab03f30813f810fe4979d1d7e76384082a836aa0d6017b2c3d9e100bb9779cfbc072cc65b76b6ec0ca41b321c321c804797a246478d064644868f0f1f0f28522d8f581e01f47d0d118608806ea285b410403facc22a80d893301206e03b249000bc4bbcf7bcf740c3c886970d2f81d4b2f705ef0b806fe5b9e772cf01ae22979f5d7601e58ee585e545806aa9fa8d6a13560818011118d889f61dedbfd877e4d15ebbbdf67afde27bdd6f97ef25bf9f8096c52dcb5b16f182d94036900de492b79fdbfee7f67370e379f6f19ce4d9c7bd503e4d1e249f665d8cd9588cd980f68ed6457b0df10d690d110d17812eb93e8d3e8d80d763af62af62403640764a760a68ac6aecdcd81560dcd843ec3e8053c3927b0b4838d1049110d09819661a52818261094f139201db9bc10b826701d6db9d1f38c703869b3a17dd0a00934839a901d873aa55aaf58073fca8b0516140d1e893374ede00ea1f3caf7d5e0bb87f1bad1bad03185b759bba0d884e89bd1c7b19f8f0e5e3f58fd781350756c5ae8a05648f6469b23440f744b74db70da045d4566a2bc03dc53aac0348b9693d710335a801c85514a318c020f4411f80ff8617c98b043cf6781cf5380ad8b8da2cb7590e945a7edff77d2f9071e0d3b24ff381e6aeca99cd5b01cbf516b69673b82156db1597adb60356e3acbcacc674bd2c08150609c6002e2eaec52e2eec02624bf6115ba7b5a26451b228b9319467b9cff2b0e53e67beb050b84758883ac69c3163ccb89dea5b9acfea87e457cd144d93660260ebda21ba430cc07e63cfb16700739df937f36f80b5a5f565eb2b00b3c478d8b807689ddcb6b72d1ae00e70dfb962403453d45be40738b6f42aea55046034994366029c07778b8b01b81a2e9c9b0660166923cd0037957dc7be0324a1964d968d809b7cd68e593b80a7923597d75c06ea3cbe7cfef219b0d86a76c1ec025036b74454220236cdd8b077c35e40a292c44be201fd3bbd402f00e8f3f417fa0b8071edb19e5c8639cc0148600633001270e0005863044600dc6af6307b18b0905b182c0c00d9d6be1e6176b367d8334087dd366d36ad80304cd05de00f34fdadcc6b7a0db8e522d4ed11fc6490d5c94480d90cb36566339c7a1deb796cf9b19ed27ef4187a1c3dc6e7f8a0f583fa0e5a1f1d2a5b215b215bf1473d252c11160a4b2cf7d01fe844fa03602c35126309b740eba41da8f3008c638dfe463f401e237f2c8f05380537919b08b00c1bcc0603fabff43abd0e60d77097b8eb8078b5f827f178a0cd5bd541350a608bf597f46f810e1bbb1fefbe17e870df7d9cfb044017adb9a555013c296f0d7f00402fa417d10b018491c7e4314095e8afeaff022e8b335e66bc04ea938af38bf301e3d19d4b772e05a2cdcf0c3c3310981d3daf6c5e196031c5ccc5cc05d01fd4e7e87300fa0d5d4157009889cdd80ce02ec927f900b9493e928f00f98b64900c805c209fc967801c23d1241a2034154a8502cc2936954d058c1b98242609e0aa3907ce019029649d659d018956922af900b4f5538d560d02908612a4d0bff146f046f1e602ddde748de93664f4ed7577d72e5b47e53a3b593a0d70f2f9382ceff7bc5ff3f6dba7561eab3c5e79acc7431e57c9d57295b247ec0e7639bb038b0c9c619181c14bc319c3067d0778b0156c2d7b1de02de55de41d02c0410b15403a139ad00055493da662016e11cee3324027d2f3e83980385d922ad90c18071b8f1aaf01dc685584ba1560a7737d3916107c11c8f8f5007f0f7f1b6f3e8066282003785134680e681adb9ad19a097c93274993a44090b23d6bb07a432fa017004953bf4cf93205c8892c3c55780ae826f2a2bd6880341337e20660177663374012c857f21500870c64008832ada045a6851c0531c400ccc0071f00d33e33883d6546990118db9e7d714bd9d5ec6a80379fb796b706107c1224099201a397a1afa123c025722bb92d88e5dfe4dfe43f064ac77fbf574a6ca65726542eae388c495a0fad42ebc0592bff525e555e222014a1082d5ecf337435b81bbaaab7184e192e1a4e619131c79864cc467f76246bce4e0498c9cc3c663e605c6fcc30a603948ecaa57200c2b6a78f1881f9580090389cc42993817480c84b182cec0c30d779bff25c01ae856be3ee00082107891f403fa512a82600ee1881c9003b919dc14e0378c38455c22a40e4c8bc645e0296b3bb85740b019ebfa8a8a9a8017a3ed32ed52e05840b9d182706e8a2f199ea3315d08b0d1e060f803ca35aa816804c25892411403d9ad10cc0dca4689e89429321cc4ca1480f238c007ce00e7700bf620aa60060a0820a4020d1100d8070b8c015607772e3b8b100e54fbda5de03942da5a2ec58bde6947aad660425ca1afbe56456ddbbb4f811f1479ef479acd478ab8bd419bed3a9606a103568e225e512e562e5e2ba793c558baa45d5d278563d4a3d513d0a3030861683919cc64018118808ae84b3e4be032d8b5b335a3f01d41eea3d950a70af50894a8097463fa39f01dccfdc31ee18c0b970ee9c3bc0f971a3b87100a5a7bde86e00998461180c706a78c31dc017ae9e5303b886477808f00278bd793d81a664e526e52660ffa403a70f9c067a3a063e0f7c0ea83e0fd83c603350a5b8b4ffd27e607d98db5ab7b580f7988e8a8e0a4037bf31b13111a0c57413dd0470953883330004a652051f16b000fe75e711bffd5c406893211cdbabaddc642cc552809e4b5da5ae02a403f1225e8031c598664c038c0f8c85c64240ff5d57a22b0224e9925d923f00ba3bdd8d9ec615d63ca915d4bc40d79659cd435a7a160e19fcf3e0b8909ff7859dca39d5ed5457e2e2d1db3dcda3f776cab8c9986bcc7dbd916a6c696c6e6ca938dfd2d2829616403f523f4c3f8a44102969250264f08a782a9e0aa8d2540da91a02f06b455f455f01fe5b5e3c2f1e505d537d527d028cd38c1b8c1b00b29dda47ed0370cf541a988315580e40846e0800882bfaa21f4052493da903b874e8a003046281adc016c85b93a7cbd301eefddd5fb9bf02d67f5c7b68ed21e0d7ce9b266e9a08ac1e174d455340e5f1f7a7de9f02aaeec469e3b4806086599a591ac065b07bd83d0079d8eeb1e421c926d900b9678af90f481ec90348344927e900e248192903301acbb11ca0d3e95aba1668756dfba1ed07a0e17e03dbc0020246602db006b4255a4bad02d09aebe6ebe60116832d7c2c7a035c2c77928bc79b8abf2aca2afe02987ca69a29280b52fbabbbabdd81f059c315e153f9c3b836ae8d6bdb9b381993d9c9ec9b59bcea75d553abd7159736fedab8a7f1d7c6659ab9da10cd5cc5597a2bf58a5e8709322f598e6c124a8a5796a84b54c0778be2f3c5e781ec9b5ff11580e863fb0ab3fbe2eeaedd5d01c171c16dc16d80ed80eee80ee00d16611100c6146305a6d8cb470c6200ca8a0c27c3015db57e817e01d0eb5dafd05ea140ff07fd77f7df0de8566b5f695f01da430d2e0d6e806cb8f37ae7f580e7bd952b56ae008c252d6f5a9200249a4ea27fb49fc4498e49c12d5c39570e406af274212c6109806f9a090ec49ed803dc42442212203eed453fa3936196611690fb3d7f68fe50a0a0b588296200ea0fb2816c020406c1104130a07053142be4803a4a755d9d4422ca33cb3f957fc2328397a18bc13327c478ddb8c41803b83d73efedf68a79986b958b5c2beaeefdd5f7d7de5fcba979edb7de55e60d0b1d367958687e7073a9f266736920ccb7590c30dfc9beb389b4d960134b214f9d9f949f0490a9542e9507046a0207040e00a4e5d2f5d2f500739f79cc3c06b80496c7f200b29c0490000047f11eef017483339c01184c31b80d0d68006081421402109914138138c401da2b9a024d01400e51e3a98980c05eb443b40130f254629510f00ddd7a7eeb79809e4575a25c00b645fd459d059079b480160270c3755c07c0924c920940060104008c2612101000e648442240b9b4871a7603bb91dd08583bdb286c14c0c0c31d4677180dd067a973d439e0f6ebbb57ee5e056cd6da7cb1c904cc2f99e79b8fc3bd8a86b215154dd4d74ad7aa7595aedc1675bd7aacbafed350bd44afd54bf0417844b84f7884cd0abb106619768173d04975529d14a0fceafd3bfbd50315c915df2a92df4cfddef8bdd7f746807dc0ec60a3b81cc504858b6210d048376e6e5c0f9465950595f507141b2d575aae04f4fefa15fa1500d78f5bca2d0508453a914e00d98b2778029064d24c9a016e1e779e3b0fe02358b0007946da481b408eb6d7fb49a4291d3c4b72492e404da67fa6770198863bb808a8cc55aeaa89806ab07abce639a02953962b27012dc5f53debcf02c679cc16e647808888399101641f7943de0224ca947eee69bf024642c812b20420d9444ff400b94cde92b700ce9158120b90603293cc04183b26880902f4d57aa15e08708d249c8c00721fe71dcdfb1de872a6cbf62e4700fa02d59bbec83dc85b97ff206f2d507bb336bff6666e5c464ec6b58c9c9c49d99bb3fb646f06ea03eb7bd40772270c470c470c4780c4e989d313a703bcefcad2f4ef4a8067c50be259c58a8b734a3a17e76c8217eb15eec551f9828ffc2d8277e865b3dbc6d2e626cc63a6c7fac5fa027dfbf47ddef739407a512a4a05902c6246cc00442216b1007ab6af28e1d39e85087f13de15de05383de7c7f901462fa3c2a80010d35e5483ca946da42219a900358f5a46cd05d40e6a677528a05ba49bafbf0758b95a592ade02948cfe4cff06b40a5b7ab74c03ea8b1ad0d003b0df6bf7c1ee3d800bb886ab006784104280fcd53e23c808ea05f5026093993c260f2099a650a56c770cb8b66745ec75f635fb1a90b84aa5522990f553568fac5e806ab5ea8dea39e03bb5bb97ef4c4069d1b4432965f764abb3f3b30d349a9a9b0a9a9a9f84865a852e09b532f696fbc935723fda9c7f927f807f92395823ac11d6fc930800a094de4a89d21ba82fabcfac2f4b1a5931a46259c590ecdd556baa5f54ad21cbd86d5c1f7617b7d8f380e76ccf0d40e6fb4f3f7dfa11f87cf1b3c5670b40b240bc5cbc1ce012b9afdc5780b0c49938039c90b3e42c01fe0b7e19bf0c28e40ac7168e052a7d2ac32bc301de2cde6ade6a002deda180449227e40940dc4937d20d6037b247d823806182618ef13260956455a8d80eb4a6b7f46ab1022a12d20ea4ed0504de82118236c0a6cefa9ecd9f80a69f264cbb1b20a5144bb502643d0ee277805adc5e6c4b1ef36ecdbb3580eebcee83ee03401da06fd1b700bc4515aa00a2279d4967004550430d503c3a940e05e2fac797c57f07fa8ee8bbb4ef2a80efc57fcc77c6d7dce379977223e87505e685fb0bcc80c6dd8dbf34eebe7dbbfa68f586eaa340ddcabaf9752b39cb7aaa1ef5144056915564d57f32804fa94fbd4f291de452e92a71a934b4366c6dd8d5b0f542ddb7ca6f73be550086fbfadd86bfd908d951593fd92ec07689ed73dbc76023d75d3c74f130c0766147b223012a962aa00a006e1b7799bb0c08bf89cc446640ab7fdbc2b68540746c4c784c3850dcbfe44ac915403046b04bb00bc0497cc22780c4b55f4720b748136900e043a6610ec01bc20ba5870124967a47c501fa66758b9a004ad7caa4ca14a095af2e50d7029c2b97c45e00e80df4792a0a20a37008fb01582218c1007d8597c6fb08200453311578be24419020009889c647c64700af80cfe3f300e62e93cc2403d230b9542e0592eb9253933f00558faa065505011e428f148f36a0f041c180c2476c61b6fcebd16c39622a9a2a022b9a5e5c597f79c3d1f59793ab7e1bb37fe66f63a0793be9edd0b793584a334133413301d015e80a7405ff6100622db1165b4b905dafaed7d4abd1954ea56fd2a916e37c395f5f5f2e233bc43fe44888bf5bbeeb24974eae93b858dd2f7a2fdd4e322aa12ca143820698316ac6e4193380f9fcf9d5f3ab00c3105d942e0a68baad7caf7c0f643dc9cac8ca001c331d131d1301e70b4eb14eb100ef1a7f2a7f2ac0d570ad5c2b8060f4477f0006d0e0036402a66204d096a05aa74a07f83bf8d5822f00f9517f521702b0c374d09901c20aeb57d6d18076bfda437d1ea05fd0d3687740b04d785c381de01c3873ce0120fbf027ce02d44c3a968e0594279b46378d06b2fcbef4fbd20f08981ab021600360916af1c2e205d07cb5d9b9d905d895be2b785730d0cf2fe868d06f3078277af3bda3c1d7ded3e8b47fb3ea7bc7ef3fbf778c92a46e494d49dd326a0f7398b9c41c7ebc4b7e53be477e935acdfbca7bcbfbcafea1f5d176d5fa00af5d5fbbbe76fd4f06f049f749f74907d84f6c1efb897aa24dd1e66b53d8e1c440ea8961d1b78ee51ddf742c8fec34307260f6c048264fde5376441e4077ac3b502faa3b065dea6fa94b52e640b8db7e57e7dddd811e3d7a8ce8110e3c6f7c1efb3c1608ae1ff874e053c0224e51ae2807746bb413b513017ce692b82400fd495fd21780140a28006e3e37879b031005b123b6003b9be9caf803ad86b61c551020545267c97e809a4fdda47701d8cc5fc73b0be887e896ea1702b2eb72a5ec1c802fc8460100230cd003d0b6af74b9875c34170d882e094f0a4f02d56e35236b4602990d994199fd80217386ac1cb20a38283938f6e078a083c836daf62e8c3316cc289e311c3cca1752aa07ab782c8afbfc5844353eb07fc83eb07f346f42e3c4b2098de3ff5247aadfab23c9fe85410b9a170671bf2c19b4e4c69241d07eddfbd5f9eb5ee0edc0b703df0efc4f0618316fc4ba11f340e2aec41d8fbb02e7d51b563f5fbd8134471c89181a71846bee12dd25b94bf4e31adf4dddb5be9b4674f0b3f4dbe767c914cb203b2533d2eee54e1507ca7b4097ef975f98ff0dc2a5014b062f1902847c1f7c78f0ef00252711240230ae36743174016847ba0bdd054023aa510d806e3fe9718f701ee701aa861a4185035c20078e009886411808e0084ee324a09da4d1697a012499e22833006a34201d90f496444816026c081bc00601dc5bf6047b02c01432954c05d00176b003e00c37b8014c3d93c6a401a207a299a299406b526b516b1170e2ef88a88818801ec4d3f19ac02ef973719fc55b4089ae0b2e8aee72bacfddb3c23e7723c21b0e37c36f383455242e495c96b824b05e15a3ca54c5e4fb3b043b783b0493d57c191f7c19f7074fc5d3f35440ebfdd6fbadf781947d29fb52f6fda7bb22782caf81c782737270eae0e480eff7abee5fb85f85b1e7279e3f737e22a2247f49fe90fcb56253be4e1c96af4b7e23192089960cb02beee8dfb1b46300e7e2d9cbb3afa71ff9cefbc89bcb2b85ee42ccc5c317cf4048bda1fa52fd80b0ec61e3878d03a8c3d4786a0260186aa8345402543a554cb5d7df43110ad0ced4026a01d0ac6eb66ab606847785bf097f034439c2126119c0bee136739b0189abf49df46780dbcf75e23a02f40dea2a751368ce6e99d99205e0314a510c98359b8d311b03307d9825cc1280ebc8f973fe0084edd996d857724e720e68436b726b327066e1d988b3a700761e2b6419700b3fcf3d34371d14bf378fcfff8ef4027de188028eb58eeb123f33ae0bedf2cdefdbea6f7e6b29fb2bf6a9f657f2fda533a521d299542a05aa85021bd85cd89cdd5c085a67abb3d5d982f977c5ffb3d16a895aa29600d4df5414f5377882d1827182d1c891cd95ff209b4bedc649ce1f279b22d40e6a99da21e3ae2e442fd185cc38c8ff91ff8cbf85672de20bbb8b845c92cb67d7d92e4964b4f969f3748bbbd03e2671bcc7bf8057f577d5c8aad140a7fb9dd49dd4803cd9acc4ac04c0b3f6120453cdd433f5003f91afe6ab810f1f3e74fbd00db0796573cbe6162086f884f838c07de55ab81600bd11827080ebc50de3c6023c1dff77fe51a03ebebeb8be0828ee5972b8e430e0b2cf6591cb22c0586bf4347a02c228d10cd10c80779bde41ef00beb86577c8b6032eb2973a5cb206a403a477a557c0ccd83dc36fc61a50bc44dac07b87cfc501c51f8b038cec53ed33bba75a9ecfc7e68f211f9b0f3cecd8afd3ad8efd8ef6318b30cb358ba0defb94f834fb94b08135136b06d64c84d0c018f406068617fe2ffc5ff8e3bfddfe7577b4fb42f785ee0b01da8976a69d20e62de7ade52d8786b1635d183bdac5304ebfcc308ef9ce36b3d96cf3a470477b47a9a3fded549fc44efe3e89b4bb6b9b6b91ab8a3de07cc3c5e07c8d0ac3001c4410349ffa7f9afc291c62660643332220fce470b3e1e6c0c0be033d06ba03e60f2d222c2200edafdaf5daf540aa2ef54aea1520386c60ddc03ac030d530dc301cc04fd88ffd00da508b1a0096f0842740a5508fa9388019cfac63d60129dad4b1a9638141b306c50c8a01d88e4c34130d14db17171417026fe393ec931c8032ba6c5ad958a04b5c97f82e6fa10be819901be00da14ea5eda9d3a153e5c48abe95138c9fde45a79c7d17cd137de4a5adfbc83bfbfe6f9787ccdf2ecb03f794feeab9a794eab8cbede7a25d6eec3f7accfde7a13ebf1abf1abf1ae0b3dd67bbcf76ff0b0398bf307f61fe0270fbcbeda6db5f007ec456fc0821594ad692a5d0a9bdd49e6a2f7aaade5cefad3767ee307aa684d18f21f621f641f62137077a1a3c4f781aa4af9dd6396a9cd631a79d729dbb39e5d246bb57763e762fb1a6f149634d63128c79aff312f29e8047f7a43d686fa0fba36ec7ba9d00bcee794ff39e065876b3d45bea81ce86cead9d5b009c694f2371a0bd56035d7b7e0e61fb355caea47d05ae9faa93ebcc804f6b3efdfef930d0ca6f93b48a81929f8b638aa381a6f5ca74652a60fba3ed59dbb3e0bcc77bdb7987809377905d92db806a5ad9f4b5690d7bb4aaa44a5d550c79fafc8cd9e9f3a9c55982ace02cc11136262fe6554cde26fa9715bf5cf96505d5f1c2adc859176eb16315b7ace215b77058f08360b9e00750e88720f403fbe1ce873b1feee07fdcfecb133256b08215800653a96672a7c9bd277702fdfdc2f73fbf5f00d36068d03518e85ead5cab652bc77c244da48834f987d94bedf9f6d29b2e2e639cc52e637c221d321c173864b0db6c72ac1fd8e4e0a5f310973f9c0751bfd8ccb089b1998561aaabaa54d50d3095bd2b432a7b816ebed67cb5f91ac06fe117f08b0171b838443c04b0186d31d6622c20ba23ba22ba0cf082787d79fd0163b231c5f80ed0866a176a17009a739a2b9a4b0075843a439d0444cb442b45cb016bb9b5d0da029c559e558c552638fe4dde78fe65501a85e69cc69a132a972bbb2a5770a28ad315e615a7a9e62fdaec6b5fb45a519e535e9f3ca735bb7bbeece9d8f3e5f99f94dd95f9caee54460a52b253c03e317331eb64e682adf43dfa3e7d0f3ce315e35fc62b30a604a4f8a704fccf8aff6f0df06ffb691305e67dccfb9bf781a47f49ffb6fe25a8ff3aec6bafafc3a894926b25174aaeb17d693dcdd27a5981d77eaf335efbf707d806d976b10d5a9ee738cc21c771186da7a8b7fa5951cf3d5558590e5158b101763bec6edaeda0ded84eb13b693b99f4974e966e924e862dd3850967fcc0e93ae85c751d4074ab74ab75ab0076181bc20e05481ea920df00819fa0932000103e163e10c600a235a225a235006d46b7d27270ac90cd6705203a46fb52c7205cdb519ba8f561751a2f8d51e34d92952b9489ca15a47fc9bcd2aa9279482812144d2f12bc7d9bd79cd79ad7bc7cacd02074101abe34d9fd61bfc1ee0f7a624176fee3826cc6276f60deb0bc81382458245824580477fd05fd05fd05a84c7a3298a8ff37feb39f3191fb5716f46f14fddb0f357889977809a39b939b979b13d4d54dd52dd54d1059455a455a45b27d2d7a5af4b5e849e68bbe89ea44df54054dc226cb26e1ead63c459e224f7111ca6ae55265f59e81363b6cd26c768c2cb1f1b0fec1c6832eabed5027a8ed8081b2d7452f64899cc22cdf6cba590167673ed27cb2f928cc91cf35bb269f431224cbc58d92c538217c2c1c2d8c4520be611672c1324ec648c60195ca2c4d98f20b0e1832f461864c6eacd1dd08a33ba6314798d3cc11e26cf860c8317c20df5a1b5b07b636524b6a426a4b6a42f0b26a5a554dd5b49c9d65dbcb5f956ddffb7baa53caf654a75b79ed319cd5ce0a9d3569562865794371c37843c1c458fb5b8fb4f6c783b1fdc6068ced07e274d1e92fa78bc83f8dd338fdbf77f87faa40ff38b6fedf67c03ff23f16ea60e25ed3d7e9261204631082893f12f11a89a49e5e442fa217d1bbc47ee29e623f7aac459c45a2459c666e795cf9adf238b2cfeaa0d509ab8341c5b67fdadeb1fd736e918253d428b811d116432d9c2c863acd34cb925f33cb42aee4b4f407c969b888ea455f45f5100b9c046d0227803f9e37833f1ea09d6905ed0c50f3a9c5d47c805c2497c9458079c67e619e01fafdfa7bfafd78d8d6bb6d6d5b6f4c504a94a14a49ebca86bd0db71bf6260da8e85f115ad1ff7af0d75d5fe77edd157da57d3ccddb2d3a5b74b7e82c9ba47ba37ba57b835e1a6b8d95c6dad80733300333b840dcc44ddce49e98d4f3dec44c134df7ba714613dd4c1c6bd2df3f0968f9bfebf99f0f3bdb41dd33d17420b5c964309391e933a6fd274cf2d17fc966308319bd102d68410bd59b8aa022a8087e3de54039520ed47a63bc31de18afb90a2178101ab53885333865f749b143714cb1c3efbe225811a608ee1d22cf947f946776f191e8250d12bd93b7e8a8688fe8a86510af94f795572a70a483e86174103e72815c7f2e90e9661c691c691cd9d24397a07baf4ba8feaefaa6aa507dcb5fdd38a1714ae384f42d15f615fc0afbb4a9fa49fae1fa49254eedfd35bee1f7e6f7e6f796da103e11123e95a6afd657eaab0dad2842118ad838082080800d861e7ae859d393fdac2942b0cd26d69b6832005b63a2e9950aec17534031299e354516ced924efffc7f3b79814694a9878a1ed14dc6da7b8573ba5d1ed34332da62d4c1e61d5a39d3617db69276a1f80c38076d9e91225a00494c04dc537e75bf2cdbd965247a9a3d45177d3001ceb600d6b58db776e979daddbe93dbb9dbef9edec696ab767d776fad7b6d367433b5db7c11296b074304d71070d9948c693896ead821241a9a0c4fb2a2f8597ca4bf1eadbeed9ae6da6f6f6b6f7d7b1b05db637bd0bc2d6a4b00e26c55bdbb65361651abfac9d72538c979a0c2336f557f8a29dfcdb26878d374d800a93de77ff4f21c8cc44d3eb554886895213fd4d9c6032a0a9d04a369ae41526f90748208184f4821a6aa84917e4231ff9541dff0ffe49fe1ff40bde1ede5ede1e2a876aa15aa816846220823090ab34be313e37bee1d6b1f6ac356bcf6d20fea437f147102920c5a4802ca32be80aba82c4d39be89fe84dd4556e3837821b4e628c55c62a6315a7d7f3f5949ecf3c6057b3abd9d52c0f72c821e75cd18a56b4c2e4209c49719c49316c82498e33d1e468acc901b94726be32f1ab89a6d7e570a6d0cd8d30e9ef88890dffaee7ff0341f2b1b4bc546faa000000227a545874536f667477617265000078da2b2f2fd7cbcccb2e4e4e2c48d5cb2f4a070036d806581053ca5c0000000049454e44ae426082	24	24
5	Resectoriser (Ramen)	image/png	\\x89504e470d0a1a0a0000000d4948445200000018000000180806000000e0773df8000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa8640000001974455874536f667477617265005061696e742e4e45542076332e352e35498afce0000003ae49444154484bed946b4cd35718c66d99908156d4c09031081753188e31569029294ed1b9c1745c74ab722d3829c86c8592d6965e405a88b3b45a5a64b4d881b1c08a6ec6a26375e2c245452d1a01e7b6c0245b26d99c619b560dcf8e33416763a2891ffcc049de9ce4fccf797feffb9cf3fc67cc981ed30a3caa40d032dff9b37ddcddc83ae599aa4321232e77455e91ee3387dc72e48ee4807944f385f64491764323fd5dfff02782b9b8ba50c2934322233f5a94129e1cc80c4d0a080f64fabee4f3dabc592b0ad376f1ea0f4deabfea42e7600bce5f3f86ee71334e5da88350bc76d88fe1edf958482073c1ac48563c3b76b3a87739df3cc9d2fe844da6abc8375d0467df7728305aeff20c275165ee86a973371acbd26039c285ad5f8981430af48db681254e6c2305529d207e0c2fffe88f05d7638a3ab186df8ead3556289abbb0d3720ab2a62e94eabe4679eb109a7bc7613a568baa831cd415c663473b1bc6013e3e1f12a079588486d3222cc95e54ec04a050291e51698936b1be03ad83bf93b6efe0ec1f7771e2b7dbb08cde44eda51b10ecff16bbf64ba13bb90d7273166a09407a20139504d270ae18467bc97fb0324b8623f4bd00a613a4a26247a5b67f1cad233771f41707bef9f5360e8fdd42d38fff60cfd004aa2fde0057a141a73c09baca2448f76d80b869234464567e998bba5e2ed4c74ba0efe1619326712c60a9cf82ff410840ad3f3d06ddf0040c57fe8691c4decb7f413d783f7915f92655a920b3ad42ddee95d0652e869e150d85f81d94d6af4741ad0a2c751fd6293ba0b16dc10782a5369aaf87eb14845fc297f79fb3e3b0fd0718cf8e624fff55a8fb465073fc0254ad565448b6439699806c190d1b4d9e58abf742faa771d0642cc6bad24fc0e468c1d1edc4b67a196a8ee693aed860e64628a7bc121616166534365eb3db07d0dddd03abb50366730b0c060354a4f2c682787c5f1d871e21037b3f0c026fbd0f32f2e890b3df02579d822c79c2644c1abdf7ed9cd7cface1c5fe9c5ebe7c22657b9c637e302d78aa0b1a8d169a9a9a5a23140acf48cacbae29541288955c6c2d4f0767cb12489283d0961b86f3b2585cae22300103b6e22824e7bd71cb9fe12d2589dc49dc93650e8900e2f30832cf7cf4c2efd9dff5c5b96ef4d505312385d5ef2347b612abf3dffcf3d504fff6c8608ffaec8839575449af4cb6e484a28115e278d9db2d839c717922273fbcc98beeb92c3a85dee717e525a2be405df850927921342a3b31d8fd20ddd3258bac3b9beb29680f5e82f3a167fbb37b8aa2a6b73e670afc0bdef9db17bb5f6e9d0000000049454e44ae426082	24	24
6	Rechercher (Ramen)	image/png	\\x89504e470d0a1a0a0000000d4948445200000030000000300804000000fd0b310c0000000467414d410000b18f0bfc6105000000017352474200aece1ce9000000206348524d00007a26000080840000fa00000080e8000075300000ea6000003a98000017709cba513c00000002624b474400ff878fccbf000000097048597300000b1300000b1301009a9c180000000976704167000000300000003000ceee8c570000073d4944415458c3dd967f3c94d91ec74f68f7e6966adbf6756fed6a307e0d9524a5b4612d8a417e64b5a394b476133128d15d45a64b747745d29d284ab1b2a176061166233fee6a2b92a4a436c68f66981f66e679be7bf2da7dad6dbbdd99aefed9f3793df37a9ee735f3799ff33967bee720f4a76c3bd0368df8795f5b9e5a7bc6f7ac4fae03dbe8c074840226c73c03edd5caa017b02fdfae18aa90549055044fd4d0db50c16396ebb3a714fc7fe6e168a3fabf6c0bcbca45dfc20932f9d9feee7d77e31e1ce267ca2e4233d9d17967cf8d39edaf6f9f8822a7b1c3394f2f42ca6854ed81a4c2305e58cb6e5e7c112bf5ebe832d6e30be41df94fa54f4c9ea2ded7b13f882235cf1eac92e492d13792e2ef471087e124e413058a02d9f9d1dc07697987f696648efe07061b854b8448a0aafd3eb44afd7c449d249b88e494458a53146ce2386490e944ba225d764c9a359a3d78aa91159bf6555f33086be53a52d5ecfd510d3a6b5fdf771e22395ce6c81169aae2109908586422c152b06487244982d4fecca68498e41343b741741cfea25005700eb167357e57055ffe7822b4ffe068dc588c622f190dd1b007a2c968225ab15716238a1dd8df93c28dfe27bb54fe4020a10b914c79c02d74dde396384b1c95702b82bf5b142adb490493c1b0635cf88e0896ef948608c27a77b7c59fd855d0d4004f8ac7349f296b5f83f2a7769de6c1fefaaced5dcc81cfc401f22d843f4c10e9afd822db2adad61774875919959b5227fb91df6bf94859c05dd4f9c1a38e22884ce304de0b1c64487ce53e840f6c1897cfb83610de322fb167bfd72ddfcaa08ce086ae6b7023bc15352907e843fd6bba8527051111d58177370e794adce56ea41bb8021d9cc1116c61252c552c9218f30dda0c0b4d63576e766eace44175f675f55ae5000234f2490779ec514cd095ad1d5e8374b193dc96c4a6600a86a0073a40010ab1404ce153da758a0ca2cc5d6c79b90d505c51acf9ad32f67790088903da21f35edc36cea6168787167c431145a10ddad85817a8a0ff5ca4be943a4ceda6728de2cd5dd65ccd68829cfaa3338e2b0b90fab7435e772823ce368b768dd2a32d5c20a7e0beebe31118030d4cf04593190b8c7b8c6a68c9169e367559d7e1282f66fa41e5221a4512b7bb6397fac3b76eb44a31b9aaf75047a02ba362731a0e6911988d6bb16cb17061af296ff191e57ef62d457590521cf476ac7280674868d6d5cf931d8d755fbddfec3b83fbd4617da9116982cd9780052c034bb024978d598c98f72ea95b9a6a1de2dad67409129301319503f091605617af192a0bddec9996e74c6f1af18d45a672333ccd966005abc01aac8955d295c2e50f97575bb16cd277b40d9e92c7fac42bfb3fb88978a83dae116e3e8cdfbc7975fad2ef17f52e149a492d142bb0f91abc4cedc04e6e2b5933bcbad3fa924ddcdacafc6b90dcb64b3b42f952d1825a16d5f6b442533ec3e91fd6c5cb6e9b0f588cae18b356d8901f810338128e3207b17d9f5dabdd19878cd0e6a779108dbbbf4d790017dd502b8be7c03d41d981c08fd33eacb2ba6735682db219b3973b91cee042b8c8d6099d1e38d53a1d6354367080c58fb74c406754a9a779286f3ebb9a03dd8f2fec8b72cab1fbdee6beed80bdc871cc59ee4aba13ee12d77efa4de7f37ea5e557882390a7a8caae9c5ba90ae0308a430996876f5f86cefe2b6987bd4f3bf21c3b9d9e3a0b5da5eb159e0a8f11b74ef78b61971bb8442a94c27db8a6a8caa99c5baf0a220871d0ee0f137f3807add21fea4b13f2fdb8eeadf447f42137f1fa21efa610ee998a9f2e000bd2b0bd1c7a30a2a484b167ddfb7455104751182d36ff2b7109344a9b3aebb83539b519356cde37b50d5503a56406c11c3ea02886abf0781c91039f935b0a19f336298f70c00797c0e9bb7cf794b386ff4d7e03978083af22c886a4b1c88e4096efea90a2636409463c8126bc170542181954e037cf1ff92a0fb1c5b3e1a7b57dc517ccd0bc888aa8e6889610cef6d44d1ededa2bd53e451eefefbc90891127b1f927782ffa02c23182f1f7cdaa9e3216a379c856c355d353cb43cb71da1235cb5fde6f406e0b02eac3f056b10e3c61236cf905f17c1493d228688e8671b629ae2276e0f20784ef64000c90aeb17e050d57c11711af11d4cb9a0ed243ba546af9cb1093161446e8fd77c42404a5fd0ac46406a547e5bef9a0b86f3e28ee9b0f8af347c4e7058c371b1493fcecb48f16637210064847f7c5510443a864935700f2fedd37a72035a48e34d0d497eaad57485ddb70e2a2fd14b6e25aeb9704686082bd1a36998666a09968367a076bce0b7af7959afd9e855ef544843f78b1709727f45e036962ebbfa10ff0dce9e268a9bf93feb80c5e21bdd91fe9d6d17019b481b5b01e3c9ed9d0b1eb94df0053d1743417db539121324634643241a6e35af83f449be5a47bc5189fd8acc06ec42e69e6bbd87302401d073413bd87e6e3054ec1a3783e0e5545d1325fc034cc36cd3465bc331f27a231312435fcf8367e39036961d0ac71cd565933f1af9f7ffe153b4dc59e2faca25fd7d164481d7be1feff0c26805eef0c18dee20000002574455874646174653a63726561746500323030392d30392d31335431353a31333a30382b30323a30300c33a5fd0000002574455874646174653a6d6f6469667900323030392d30392d31335431353a31333a30382b30323a30307d6e1d410000000049454e44ae426082	24	24
7	Supprimer (Ramen)	image/png	\\x89504e470d0a1a0a0000000d4948445200000018000000180803000000d7a9cdca00000300504c5445ffffff000000c8c7b26b6a586a6a58434337545445adad965b5b4bfdfdfd84846f85856e71715eecececb8b8b8b1af9689898949493cf6f6f6f5f5f5e4e4e4cfcfcfc8c8c8b7b7a1afafafaaa890a3a18a6564564e4e41fefdf7fafafafbfaf3f9f9f9f7f7f7f3f3f3ebebebeaeaeae8e8e8e6e6e6e5e5e5e3e2d3dddddde0dec9d4d2bac7c5acc0bea3b8b69cb6b59bb5b39aafad94a19f8897978a93927d8e8c78807f6d7575756d6c5d6d6c5c68685662625160604f5b5b5b5a5a4a57564751514347474745443b4242374141353f3f343d3d32fefdf6fcfcfcfdfcf5fbfbfbfbfbf4fcfbf1fbfaf0f8f8f8f8f7edf7f6edf4f4f4f4f3ecf1f1f1f2f0e6f2f0e4f1f0dfeeeeeeedece4ecead9e9e8dce5e5dee5e4dce3e1d3e3e1d2e2e0d0e1e0d1e2e0cbe2dfcbdcdcdcdedbc6d8d8d8d7d7d7d9d8cad8d7d0d6d6d6d9d7c5dad7c1d8d7c6d8d6cad5d5d5d4d4d4d3d3d3d5d4c5d1d1d1d0d0d0d3d1c1d2d0c0d1cfbfd0cfbecdcdcdcfcec1cecdbdcbcbb5cac9c0c9c9b5c6c6c6c9c7b8c7c6bbc5c5c5c9c7aec6c4b5c2c2c2c4c3b4c3c2aec2c1b1c2c1acc1c0b3bebebec0bfaebcbcbcbdbcb3bebca6babababdbbaabdbba1bbb9aebbb8a8bab7a3bab7a2b9b89db8b7a1b9b79db6b4adb7b5a0b5b4a5b6b49eb3b19eb3b198afaf9db0af96acacacadad9fabababaeab9bacaaa0adac93abab99a8a8a8acaa92aaa895a5a5a5a8a68fa7a68ea5a38f9f9d879b9b9b9a988399988297968598968196958695937e94927d92907c908e80908f7a8f8d798c8c7f8c8b778b89768786738484848585748383737f7e707e7c6b7d7d687c7b687c7a6a7c7a697b7b657878787a796c7a7a657a796876767678776677766576756475746474746073726171715d7170606f6e5e6e6d5d6d6d5a6868686767676969576666546161505f5f4f605e515e5d505d5c4c5c5b4e59584c5858495757485656475555465453455352465050505150454e4d404d4d3f4c4b4147453b44443844433a4141363e3e3e3e3e333c3c3c37372d35352c34342b35332c3232292b2b2b29272223221d1e1e1a24a0d1230000000174524e530040e6d866000001d64944415478da63608080c58c60b090011548987f13f0534dedbfcd682e8110ad3bc0c8f8646a4c50847f48e7436946c65b8d10713ec6351375a52c8fbf77fa74bd5edf62deda5d8c7c60094649ed6cad25db9dfefdfafbffd5b21d6dfc2b4d18c112b659da8991254b771e79fc41fa82599f81be8111448231de47232eac30bd6a96de02a36933f4740cf741252467ca7bfa46256868a5e8e83625954e3e710d2ab1c9b03723da5b56d65d3e2034b67bdbf91b9650898b2652735a2b736b1a264c596fbad7f4acf403888418a3c09649ede56539cdfcfcfc1bcdaebc79cd2806f10823db973f12eb24e7ae92dabfdbe21c23a31b23d4e78c57eded5c1d1d196d4181f5fbdd7757b8c4198e83d6872e391c6671b166fbfae2a7035c82fbd16666e3d36ff71c73b6b17393f9c10691e0e464e4e6e8609ebde8a5f156671babcf2cac2c8c1e9c40093945a0843833131333133b1b170f2b484249c88b9341481928319db91659428457989341451328c18eaaa34253599141ad88f124aa51f7197b8ad58519444419efa248083e63e413551362e02dd8c0687fd46af9fc9bd540893b2ecf3f320a74e5f12a3004ab67ae06fa58f0a9cce57b32828240e68a165111a0e50a4abc2ae162028c50708a2f2d3f5935508e01005ac98c940c2fc24d0000000049454e44ae426082	24	24
8	A traiter (Signalement)	image/png	\\x89504e470d0a1a0a0000000d49484452000000300000003008060000005702f9870000000467414d410000b18f0bfc6105000000017352474200aece1ce9000000206348524d00007a26000080840000fa00000080e8000075300000ea6000003a98000017709cba513c00000006624b474400ff00ff00ffa0bda793000000097048597300000dd700000dd70142289b780000000976704167000000300000003000ceee8c5700000c6d4944415468deed9a775454671e86af65d1c49ae326261a35168a2651c11a1b16440413a326464dd6bec668d61e0b4a132bd205c1a10808388028481194deab05a41795320c65980233946178f7fbae918d278e9ae4243b7fe49ef39c0bdf5ceeef79bf76e730c3307f1f2a72c41c1ec8a0299c29769933b8c2537f54c51503a59471160e2fb09fdaa7d0414775023cbd6ac43cf6361821bcfdfd0d69fc812a699c320e564963f7150843ffb5a7c0fed37e95ee0b5423402d7735537b6dd5d28ee4231dc8b104b24fbe92cee4c3ad82906f8fdc3fa3a556c159a02201b8ab0d3a920ec991650a64be9ecea483ad829beb8ccbdd168eaef0583ceacfa6cc75eeb07ceb89bd8a1c5f32756bafada4187424ee9323e3389061fc46c8930eb449effe504da8fa93a916476e4bacf659ae517dd5f02501fc3fa71874c4ff478ef42340dae137845c9bfed7d099b0b7b38ebb5a9ff09200be8614838eb8dd72a4fe04a41e52317e4267dc8ff23aff2f96117e1da0dc5e9729b5d33510dedc2d97451d8534ea884a419da85b1971a4ae3d8720e8cb6f44b7bf371645ef3a56c7fdce87cfddae680cde8dc6eb2a0671e273ffada08ed455747ba731715fc734fbe9d64a42be968843d64824215fc9c8cf2067158575933d73fd5a42dc794ca3753f9ec05a8df00f9ec0b6bf40e83004aa0c75645d8933752701d49e36dbf627f2fd78cd766f0b848e43a1ca5047d695385377a6c9e6adf266fb01447e004fe8305820ba380caa0c75a4aed499ba3302db01052287c175049ec871a840ecfc2e5419eac8ba1267eace08ec07658a2e0ead23f0c44ec3046297e15069882375a5cec43d8b69767ce72e69e4137812e7770512d70fa0d21047ea4a9da93b23747a375072e9bd7a02afc565b8a0e5f248a834c491ba5267e21ec4885d3ef06a71fda0bec5f57d5eebe5118256b7515069882375a5ced49d69e18ce6b4723ee4b77246f2a49c5102a9fb47f823c8584643468a49299c6767fa3bdbee3ee60fdd9f3a5257ea2c21ee4cabc77827a9fb183e81472e10c83cc6e177430a8839e3c1779f852a9f95781cb81da5a1c75016bc074f7d56a3c66d2e042e13484f8e21d78ffd5d35a8e333d7317ceacec8bcb4acc90b75e4863c99e73881cc73027e0b6d2ce320e468a1c27b0d8aee38a3323f1dbc9a6a343536412892a0b95988c67a3e6acaf35196720dc5be5b51eb34898ccc58b45df96df55847ea4a9dbd346d98f6ab9f98b679a9f3c88d08ea82362f0dbc29ed047ad3a76eba7818e9848ab262340984104b24686969416b6b2b8b542a854c2683acad0d52593b1a1b1b509c128c7c174334bb8c65eff3c675a9237525cec4dd9ce9f4d7feb1c367626dbbb7268fd0dceead85374313524f4d14b87d897b49e1a8a9ad8340d00ca19004108b21f945081ae097d030add2363c29cd43266713ea1cc7b1f77bc3bacdd4953a13f7bd8c3c70d6ba4edf4f6a48036d14b6fb4cc4eb20d791ded0c2039715c8488a46750d8ff46a230920e809d03302d2e72320fd559056a90c4f1f9721c1713df817c7a2e3eaa437a92da4aed4b92b60e606a6ebfa3c23b9ffd42ad2401b851d573fc6ebe824854a9de72021cc17958f9f80cfe7f7041089446c8086e606e4566623a72293908582aa7c885bc4ff93ff797ab5108af3b211777a01246e1ae8f47d4d6de2485da933715fc1286e2ed2efe24e7b4c1a789d7e53449dbe93f14afc2643e0f609c25c0ee0615e3e6a6a6a5e08c08e80488cc77595f04bf6864fa2277c13af202423184dcd8d445afa42881632d584e4faf86017e49c1c4f6a7cfa9afa5344d4953a13f7654c77a8fe6245e0ccf22eae0eafeb9ab6b8d36f2a5e85dc6f0ab26c1722f2d675949757bc10a0a9a9a92744456d39bc12dce01ee70a8fd8cb084ae5a24150cf4eade7d38b9ee95a118b25282f2d41b0f93208389a20824aeb5347ea4a9d89fb12a63bcc684177d067258a8019349558eeaf0d65903f468bd71404596f456a5a3a2a2b2b515d5dcd06686868e809d14c16736955092ec738c139da012ed18ef04bf406bfb18e157ebec09f07a0d3ae816cb9c197cd71ffcc5828b83aca1d882375a5cec45d9741c4ca19dd3774f349439d22709644ce9d0e652802a6e389eb4c785db440eebdfb3d01eaeaeac027fb3ca5bea11e8d4d8d287a5208c7281bd8459c877dc4055c8975436d7d2d2b2b128b7a762a7aa6234677b0988860449b4fc12b1d882375edbeb1e011719fc9207add4484afc841a87e9de2e6124957f04228a33b58170f1c17e10ac7110f1e3c44454505aaabaa51f2a408d7b3b808c8f04560863fae6772e19be285f3b72c712ed4125621a7e0106e8d9b194108cf0e4544f62d421812f3e2c973a3f1e70002a4a524e1d6597d7404ce57ea401da92bc256e412f78f19c46d1b813bdf25935ff88ac8352d5d612ba10c45f81748b45f090fce2512e0015903e5a87a5a85ec924c98861cc5d1a0fd38167800c7022807611c7008c7b98770827b18a6014761c63d068b80133815608a338116e0dcbe045e432d84e4494da75e7a5a1a82add6a235d8105de14a1c88237525cea988db3e8a41cadea148dc7d17093fd42b62b6b576ddd9046528ee6cc46d870d70b9741199999928282840596919eede8bc2faab2bb1d2430f9fbb2d86a1eb421838cfc752c7395862371b8b6d6743cf760e96daccc5329b05586eb3102b6c9660a7c7161456148057cb4315998a09098908b0de0471e83a524b89037124ae7ce21c8b947def30483f3618e9c691483f5eaf483e28ed4ad883aec4bd2f4591b807b14edfc2d1ce0a515151484f4fc783fb0f109c12884597676016797f33cb711266da136c2762bab516a65b6961da394de89cd180ce690d685b6a60aab93a269b8cc3f20bbac8cecf44694929f2f2f210111e8620dbcd6889de496abdc481b85147ea4a9c6f53770659e683907b2e14f72ed42b324fb675a59b4219dd19a6c8f5dc0cbbf316080909456a6a2a72737391762f956c95ae70bd7b918513e30ccb10137c663db9477eb1f56cd8875f805bb40b38d197c08972c6b5045f149516a1a8a808f74947dcb81e809b761bd19e6cacd4813a5257e27c8bba33c83935000fecaee3a1434357f6d97679a625e499a75e8a22eb342a827f848dc53e5ce306202929095959596cef151614a2a8b008c545c5282b2943447a18e6594f657b7daaa53a56d82f46eea31c3ca97c82c784278f294f515656c64ec5acac6c7873ec1169bb0af20c650e96a08ed49538df20ee0399c63893fe8a5c2befae1c2b517b9a85bc2dc50c3225b4a59a4370e71038273783c3e1202626869d46f7efdfc7a3478f5891c2c242941497202c2d1473cf4f65a7cc14f30930b25d84ecbc2c76e7a2d02d989e8b8b8bd90e8827f3dfd16c07b25c57a13dcdfce5f509d491ba12e7ab4d71a66fd17f8ff649f2d8b5bff0fa415e61d0be9682c0bdadafa230704f8bbfe59a36ebb3e6b871f326525252909d9d8d870f1fbe182035149f9d9df26cbe9b8e87e185852f04a0949494b0c173727210c8f5c399edb3e569ae1b5a0b83f62baf4f1ca96bb2e7ae03d49d797bc87b7db4274fd2d1d79d6e46705dba60ba3bc143197af3a7bbaf5d3a39c8ec3f6b446e1c5744dfb9c38e0295a03d4943d000e1a9b730ef8c0e74ccb5a06da281cfadf57a02d0ed97cad36be9e8dd8d8985adc9ceee2d8b86672e9d3fed55f5dda92375a5ce0386bcd7979935438719afaef9f6d8f1ea1ae32768e84e50d730241829835c66345153dde8a7f53a67ce99ed17fbfafa222e2e0e191919ec8266d70319859c8739f0b9eb09f7a8cb2c81f1d750585c88d2d25276d1d29ea7f28989497073b2c291af349296688ff866dc044da357d437a48eac2b719e314d9b61b4b4b49ed38bd097a046e8f72a3e1c3751cddc905133f961f911abd3266d7efefe888d8ded19092a969f9fcf2e6a3a1a25c5a5ec9906a3e274bad1b0f1f109e4a9ee04938d330b8f2e66a633c396f7794d6db59f1d7b3df7fedd87f18649cc91d523de3abe6399d9798bc3122faf2b888c8c44727232fb90a341eeddbbc786a14f6d0afd99dd76c91bc1c8c8dbb8ec780e669b66e51ed5eb3def8b4f873311a77bffb59f6c5aaf1fc9b8ae565333d9327fcb89833b4a1cecacbbfdc968444444906915cf86a1cf8a54f21621252595ed71fada552f37d89cd8d166b6e1e36b2797321afbd60e615ce7ff9f3e9eddae3b88f97e02d3eb1b031df55d1b5758981eda916775da4ce6e2ec084f7737f8787bc1c7cb035eee9770c9f694e29cf14efee1cd7a817bf4ffb9ca549719747cb18a7cd2bfe4a33e8cd148a6d726bdd1ef6f5d33cf60f7e69507776f5b7be5d0aef511c7b61b049ed8bce0dcfeafb5b76d5cf4e1543dadbefdb7ce1fa8dadfbd8007c30ceac3f49e3590e93ba737d37b0c691bf7f757527e7dfc171f020125f4c37e360000002574455874646174653a63726561746500323030392d30392d31335431353a31343a35332b30323a3030a408e41a0000002574455874646174653a6d6f6469667900323030392d30392d31335431353a31343a35332b30323a3030d5555ca60000000049454e44ae426082	24	24
9	Programmer (Signalement)	image/png	\\x89504e470d0a1a0a0000000d49484452000000180000001808020000006f15aaaf000000097048597300000b1200000b1201d2dd7efc000004e24944415478daad55fd4f535718e65ff187c5f8c36216c6c89455902f8539fcc0af512a2229327590b8b86431319bba257331baf9455b90af425128ad5015c1aa8850fa25225528628582746de9d72d6defbdbdefbb736e99ecc765d9c9734fdee7cd7b9ff39cf79cdc9b06806490991721504a9f24002f50880520a40a8454c1dff5027e783d0dffa791965a81e1f0c22c9e9ac69165224f5d183c70d221dc7081b82cccc7f0ec0c5e9ac5d70c5d9fa0611ecf3be98b299ac68b4a9e184827a06c061be70813c873793ab1ef49b8cac6f39409f665dcefc062331abdab166a5fc36e3b2ead90d7212950219a9d0ae2213b564ee3d519f4c6c11bc7b30e41f622297f0ef30ccd0cbe47e904ee32a1ce4d287a56b0f6251eb0e06c0839b171695c923aaa1b8103a3707402cb4c28b5e2d7661ad438b0428ccbcd283561951d2bcc2823b10508adb40081d408f7dd548138a296be3309e55641fe1c8fbec49a49383a89d52f406e03321f2372e320b5e1611b9659516ac72ab29e0d6536383681925ea1dd29acf5a86e883d380c474c7898607475ae24200647f09757a8224761c72b4e54cee2493b10fa9b43287f2ae474c73ba638ea8813854e3c8aef35826c082b9e22995341f910563ec59241da41329a6656db5c3f4537e167f8a25e56d219553b12a9ad51a1e3c658e943287b8cc5fd78f031ee3362f103943dc19d03b8ed3e5e71a0ee1dfe60c1f637a875e12933e8e6f0c604bfcbc06eee60da26e36b8e6a1e448bef827c089d213c3e8ce7ede80c63d15d342ea2f62d5e7f85561ffe68c5878b38e6c5d366b0fab17b86fb5297c86c09b74cc4a8102b9e9afc6e789b5e383c08e35eac36c299311a14eac1e0c2b629504cc24b223406430b48f2a7470442f5d389c25bb1f486e5a67166cd51556fa84807bbfb30af1b76f6e28e3b90a785520316f6c0761d14e92925c9821e31d0437e0f646b123bbaa21beb7d4df68828243a3aa20f6477f247fa69178f3f142edb6832ab23e98e806509eeb928fddd0e0c47eff1af165af6c69f90b484365ef3345ac3a2104f8b0e75f972d489dd5aeeec3057dac31dea23015fd0c97dff88af1be48ef5534a92a79ff03f0df3d23becb967c9bafb4c6e7360c3a5059539b4e64876db9bd3162fe9626b1f703bbbd8fd3aae76802fd4b0d5f7b84a0327eba59424bfe9e7be1de0f66ad9da41be42c7e4362dafbfe8568e05d784a41a4f664354da43fb2fef8b5f34d1abf18922ba1449dadef30627bd721747132b2cd914fc3c4ccffbad2f9671ddf3d185778ad1e59410dd7059ebdc266530bf25b2e56638af3992dbcc64df8c14b432394d4c761353d211ddd3192d5233bb3434d8d61629bdb5b2bdd92fb9b1b8ee9cb3fe99f7832328d3f833aef9bf6a0df64db17bd4a11a7dc430c5665c0b28ccf1eba658fad5c01665305b159428835f28835b9401892a94f9c77bc995b97517feac3789c7cfd26603e9c246657cffed909f47993e7266688504e98ac0c812ffd8cd67a802dbd5a182b655e4b7060bd5e19c46cf265570bd22d138ce912f5f1a2f6eadd7f24ed2164befc20d6afcac0b3fbd8d1bda71730f7eaca120c1e7da7fa09b22538b799a44e38063c6eda38e92f433024b8b0b72f56c96c25bd0e0cd55f908f21b7c5b95be3c150509b6a66611628137abde5bddee9a77bd893111ea68f52f01e8f32cba675f2fb89c0baee97f012729f6791640fce750a1d4972125f71f06a47e15887f01ea616f0a8a6afe100000000049454e44ae426082	24	24
11	Reprogrammer (Signalement)	image/png	\\x89504e470d0a1a0a0000000d49484452000000180000001808020000006f15aaaf000000097048597300000b1200000b1201d2dd7efc0000054f4944415478daad55496c5b65107e12b412127040a8e2c0be890307da2215caa5082155e2822a556a4b557101424b92264d9aa66a28a96849abb4083504489ac5b1e3a4766cc749bd248e9dc5eb8b97788b773b7ecff152ef59bcbee5e7b793520b559c188d46f3cf1b7dfa66defcf323f4232129a88f85ac6aedf1093e4d1315531104fc4f8240308899d9ca73cca13a2eda22449b27d1a649b4416068141877fcead1d43ca9834ea3c0d000e30298a96f145a7a54be9d6a10b2cacd198af5690201b718acb3686c1ce0cc75ff12e657d1381be0a3658cebf29900ce0038eb6140e1f7a3549009c2d3a542f6ec848124480882401848cc110c0fa0984df77b126d8a6bdb93ba26ad8aa154b112e8c5a4ae25aceb902a1fa4740d495db351fd97423511553765cdb74af964030f0211106417c81e0c0f6bdd23a6871c5b866d49dfb765fa35913e4d78cc9a1ab766d8e664cf12ceb557e20368b45f1d19b3a6c5ee4c364f9c9b3091e51245835da0552c32a07229a385401138b781bf0866fd19a937edca016f01d837c8094bc45f029e0258c036458ea87dab142240ae4cd6f34c44b95ccb2832a876c9b1add50c694a946c1952ec4a3c70c4cda992354318e365be25e5cb03d71630c4409f52ffddd02163d44d02f0036f85f817a3218d7bd2fe70d19f9ef324e7fd299e2934610c29bc49b93736e35aef16b3efccfc71537cb75b3250cf6cede4bdcb549d58728fd77155146cf63f8c2aa5a99dda480ecfd39e0d6a2d47cffb52724f626d9bb02442bfcada7b65a7e69d9d22eb51f1ea9169db27cbc146cef24797b97b9a399d8002144dd402b934e16d3c4779b2e4da36a5f02694812d6b3cd8b7d83e869e9bb41ee1db3e601a9f1fd23fc532ee195b796544bf6f48fbea4ffcaf690290b540836ab7d41537e019cd5a4a87a5a5f6b8d084df919d1e31ee67afbe766b61ef55f10b3766f677cf7edec6fdf0aa0ce9455f1ad19caee730a9da395aad365b13ca86368a9e74de9fcd194325b616ed961fe463af0f38f79e65bf7865e2a4cc217144f2bd92b96fb9c8a0fe8b683a5ecf77413e546d8feea95caba9621180340136681acb82ded9b13609d2ef45ce8b91fec52e98b64917f02cc9d5a9db05070cf8942b623d3522cc6cc6088a7cfcfb87341ea125bce80ccb6c61b97d5d6a8e0d2a949739973a0497dac6af0d2fcc0f2e7649ad1e9129ccd13804a8ad6feee7fbea8bbf49eb44c61e3ce67b5cdab0d6c333e2b3664c64c225264c800605e89a488f8b8d61b975f347ceb52fefec13eacd32735a6a4acc58223704672cfe3fa7b5c7c694171d819547770d8bf42b9dd86609fa74752df8625977380d005520d21acf70d7d4e10ecec712f380d0c0672e31c6b46d1ced71b5f378170f6129da83a1400588ae32823d32e2995826174a6e473339bd37aaf7265c61fff5a9a33df20302f34191ed0453f71943f329437b848d1e666adfba29415a460fba838e62a1f8a8476b11e6b26f4abf36bbec13a15e09b43aaf14c5f82a75c7c49b7daae7eea148bf0ee19a119e15e15a109609b92d43be1f78f62ca3a39c873b9340c85d46e1db8ad59195e8bc3f2df3a6e4fef4a43d2ab4c5458e40fb7467ebf4fb7751e497b9a7cfb0de38c978e7e4c8db5f31dfeb105de8d3f04f8fce13a57265b1ed94164fa5f93a7bfdf06ceba8bc8535776154de5ad1b9aad55f610d5d11bc7cee3e52776fb889a13e3fac6862c079d7b5b1358c453b5d59e21088a26069f95c2e1e0eb9cd7a8fc5e0b118abb6e25423cb0e93f5faf8b16f869e995f64056c1618f158f4f093dbbc1c5f0fc2b986ebbab2b321236808922a96891241d62a8c144a903b11c0dc0bfaa958225626c842a9bc93096db972f36b5e11fabf6577249e9cb913ff1b41fa6c45bb6f789c0000000049454e44ae426082	24	24
12	Requalifier (Signalement)	image/png	\\x89504e470d0a1a0a0000000d49484452000000180000001808020000006f15aaaf000000097048597300000b1200000b1201d2dd7efc000004844944415478daad55db6fdb6414f71368a0499378013421818478428227d078e40524c43fc07f80100221248628bc0c6da00dc134da755a1bb68e5eb6b6b934cdcd89edd8b193d4497c496c2776523bb61b2f59db641d6d974b57ce92aee910d384c4d1d171fcf9cbeffccee53b1ff2e091eced3d78aaecf5e51f8bfb7d41f6ff274106a8dbdbdbaa568e53349d4cffbb322926b582624436c7b55a77b777768e32028b0ca8d61c8717f28dc63abc763a9d6eb7d7e9f4c01e2aacc11f9462894ea64cdb59d5cd5e6f0f3060ff90113c6cdb16f305d35a8b61710c278978022728b04794824f34932e48b2a46a6a45af37d6f71fec0f190d7e9996258879dd306ecebb6f2d7816dcbe79b717ec43f5f8dcdea545cfd2dcad05c09224d9746a55a7269534b5ac438cfb7d5e07409665e738deb4d79c3a78dad868b6d6379b60379acdfa9d75e776e3cec666adde686d6dadb059df72683914f187a3119216256990a94740a69dcdf1866935d6d7e56249c84ba224e725b9202b15ddb06b4e41960dcbd2cae5aab5c624d32b6c2e8ac767e6dd7132d167740864596c96d3560dc3b4d1188e13641423dc3eff8de959224117b5321a8de6382ecd6624a5b80a29304d40cf71622084f620ed8740a66dae64b29aae835b8a49e50401349e482e7afd24cd00a935c7b11d08b1a1552a557bad62184ea3d1ee76c268acdd6e1f09cdb2c05ba9bf294ac46324452553d138198ee1249d2c952b311c8326eb9362e3f0915db11ca7b9b5150c47a15d8e8466dad06fb2aae99645320c4e512114a553698ca4321cafe906412598f40a24a76f5978859df5cde67230d2ed761e2b3fb46fa1a83d744e10244dcfccce72a2180806a1038be5d5308a096281e3448ecf170a721c4b1ad5fada9dc65220dced76e1143e6264f7814a6ab556cb178baa6148a59220cb4ab9acea86665403e1085f10212222418982eaf25e4273ded6ddde522004a11dcd9199605282a294f4557f208062d0def160281446d17436276be5e0728226a5650fb5783392f09b5f5df97864f18df9e4f8a22fd0ebf6868c4c138a95e46505fc4771022749269d8600b13899158452451f9dbef8cbd4f99faf9efde9ea8f1727c63f1bfb7034face0ff3ef5d5b988083b2b7d73bcc910d07899315ad6a0a4a315f529399aca2eb5c418278e5b2f9e91faf8f926f9e8bbc702e72e26cf8f86fd82b9edc2917fde2afa1536a2dfb58f96186243981538a8b1e8fd7bf148844fcc180dbe7a3a078bcf2edc25b74f5fd1becf11b99637f669ebb9679668c415cecb1cbccb3b3c92f87a71f80a0e551a87c4e08c588080eadc4a03815c120489660842fe64e7acbaf8eb208e8188b5c66912b2ce2e291f30432439e1e02398e8362f8efe3ae89eb339353b3aea9d9c9eb0fad6b6a0e56ae4cce7d7ef5ed33cbaf8db85ffecef3d288fbe469eff39738e40c8e5c58fa40d34b07830d807677776fd7ebc21344ec4b96e773bc90e1b27c46fb7efaa3af3d27c6bd236aa5f8d818190cc6bffab2fd04d9e9dbad7bad7b1bdd0bde4fbe997e379f575a5bcd83313218944fbf40861749af7dbf23aaa9829a6ddf6ff77addc1ed821ccecaff2407eef787c3ff6f0140ac524a4541250000000049454e44ae426082	24	24
13	Rejeter (Signalement)	image/png	\\x89504e470d0a1a0a0000000d49484452000000180000001808020000006f15aaaf000000097048597300000b1200000b1201d2dd7efc0000040a4944415478daad557d6c5355147ff11ff50f1315838aa41b1b94c56d30155d70f84537d4b65bbb954869b762b7b13137856d0c81211f81953006715d98212a21b0f90153086e26262a31994a4c30332a0898988d055d3bd7f796d6be8f7bcef5befb5e85cc6dfee3c9c97df79d73de39bffb3bf7de27d0190411f90848344a3436b2b96e6576ee9a2202fd9f649a44261600bd7a5cc4c1d338d08517ce6262d2344e076a4644c056c4d27d7306dabdf49d7a68f3e00fe7797e8df274ff95c828c89e8c94e14bd8b317c3d5f86e13765693e33bc9c5cf91273322674b84a945c1d888b6d707213feda8c403010c6fc09d6ed81fc08931bd148b990591b1782084cd495f27befe3c6d5b8bdd4db43784ed417af065dceec0cf4e720689892885eb5f885829a6aa0c5d8dd85a8c1dd5f4db7ebc74817e1cc6908fee2a85b777f07a5369126e85a343263a9730f80936dae83627f4bd697ac76fe03e3feef64053115cfc92c519c0712a22fe0e9c453623871bf0b567a1b9889e3bcaacba4646e9be7574ab13373da71dd9ac076b1aef2e4c8f88350b46af418b83b6bc880d4fd333dd260b9151dce3c3e655d85c087bfce4eb0154e4e911f1438030d84f9a1cb47639dd588895cbe8a94e33d1d808dd568a1b0ae8261bbeb28278b3e0fbaf78f74cb2049adac76c0beab3e321fac25cdcb812eb9ec2401e9e0aebdcb31a63d7718b9b56e563fd33b4ae00dd69e4643bdf6e265302dedaace80dad6605fa72707d3efb86fa7369d76613f2c8355a5b4083cbf45c35cb319807afda702282c656f80791d102f9e82ecd318f563e0efe25e05f4afcb964dda3d0d502ef1d821d6b604d1629cf632eac58c2564d9c0faabd87303e695c0c82b1df515331f95762eb6ae2b260c552b23647f3e6a8be5cd5b3506bb4c3813acdfbb0e6cd56757b36f87268e011705be4dd01756890b74e138cc349feb81e6b2e4b781693b24cd563953dd6e4eac549a74579a35cc7af2ae4dcb1a463becc8c658b148f55f358f1a5acf8aab9b1c013108b3234026a0a4ba49ceffb355b98b4cf4fba32e2c5e98992050977667ce51ca5e7b0411119be927065307b9cb9744d974b3325fb43d127ef543fedd5394255658fe40707ff7cec36d16e119d19a23d4d72a44bce05a2edfe786b39c849c66272a0472c7a40625ee662ca629ce96271c664c11df05198778d231a3ffb16140ad47d172db99796ccd1d5759faec5f7d0aa5c5a9f4f3df3a8f36ed3c803904d9cb76b3641fae27d1d11f0e689d1c84f273a46b6bb62c145529555aae4a3a18134a9c2220517f2d79497eb6f5bec97bb5b2549e28878fb1545f971f8f7a1fe0f2fb7375c6d5b7f657fcdd59b5acbf5a645f786584ced77fda7877efe05b808fc901a470665591e17a5c884188d89919955f7f2185551f4f3c04548fd7666fccfcc26a97b99c9df646f74f33b2d8d560000000049454e44ae426082	24	24
14	Service fait (Signalement)	image/png	\\x89504e470d0a1a0a0000000d4948445200000018000000180806000000e0773df80000001974455874536f6674776172650041646f626520496d616765526561647971c9653c000004484944415478dab4556b681c5514feee9d9dd967b3cdcb206a6ad4222a86161a6c12c416c4164a0b22e2037f2896fef597820f50c45f62a12255ff0a3ed02286d682ad2052ab82a52d1454026d4322cdc664379b4db23bb3735f9e3b934c374dd2f48f173e66b88fef9cef9c73cf65c61830c6b0de3878997bb4fc18fdf6111e246409e7095346e32c61566bc0cbc7d01238daa3a3b3963bb51ef18ba3bc48c46f4a85433028121138e7e08e032905ac4f8c2304c39786e16d7f1e132204d29b57f2b0b514bcf097b39748bf20d28ef66227387360b42197ec89188c338241a55ab62c21adbda6153e740bc067f7a8f5153c7bc97945081c4ebb59275f2840925796dc9816af222386d4006d852e481d7ab5f9da119a7d58d670b0956f8581a7ce3b0748e6914d85225cc74318446e449e9b56d92d3fcc6164c8c3e6e26d2857a65fa68d13b4f2eeaa101df8c3b9031aa3994c2e9fcbe46154ec79ac759d44312ce582c2456a949198ab55edfe478fef54675784a8e9e33d38c86f4ae7114a5c8ff9cdc6524e58a4929470a2e31e8246f811ad6c4f14ecbde076c8054c757676b976e32d912f8d6fb695a2ef33976e27729b78a05c9e01f330f4e34ef13bb78b7e0dfbc86b572806a10c0495e4ad6099dc8eaffb4b946c13a91792c1afe2e924c97e03bbdc8c83502d797e0bde7fbfa3b46a4ee738c4bc86e365294c8de1c40059ec4d191742b0b844960c9c7a6432faee3fd787503713a2e5f9d6f164a99714b098035481dabfd3ce4721a2c8a4855db4d2552cbf95e4c4c0581296b5c8f74ff5c25fd4a85774b4c78649712a994481c1bc0915d22a2e3b27bfba37fd3438b966a8f65c23cf173442228f849381a6d4a034d41305cd06467d2522ef43daa05c865d57efda300fbbffe945a3469ecfc49e0b19ab5c0c9a96e76a62a0318e33aa4009b261b2a6cb06cd26c3f0d89675c987c7b7d8ea4363c644e7425b813a86ef0a0433ecb7c4c0bfaf8b9f29426373613df1a43ea5a8120c06aeac363234761f911b225771ccd5f5dcf94a4265983f77421d4b0cd0a8d57fd5471b998092c3a81a62238d92a2f0196c1fbf3b211f18db8a855a08bfac92a29016f44f4750e53534fed65fd547d4e88dedbaabfd58fa386b67839d4e174cd324fd26d5e380675994405d37905515fdb7de179662a8b259e8408f2fbc13ee13e7f49f1177eb7be0dccf877287bdcf59167dddd96e28ba341b5e3a3acae982cdca0abd66ba167c2c0e8523ea5b5bfdab0c581b7c1b7fdc7bcb7d9f15597f7bb11dae74a17d2ac1d0c45e2f77518ffa4e86906398ae4c030126c5a7e25579528dd8ba597e70d67ad15cd6c576a4de705f620ff0e76d87cde6b2c8667370ddb8f92a0aba1f04a82f2e5a85d24c9893f203f18919d5bf78a7338df089003733b09cfc5e3cc4fbd973a9ddec5e368836b695ae65476c812ed1a2b9826be682f94e9d3667d4459abdcc4f656474d7f66c6c205143e8217413daa226130f4bb440a8104af82113244f9dc58d0afecff19f000300d4b8615569fb5ad00000000049454e44ae426082	24	24
15	Commentaire (Signalement)	image/png	\\x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af40000000467414d410000d904dcb2da020000067849444154789cc5964d6c13e919c7fff365c7c4cd879d8f0d64edb80e34c28ba304a9212840d4224e143801074a94037bd86dc3a16aa54891b85184a05237d96aa52a3d80842a558a90e0c20a11407ce4404c886cc7de86754c242731ac89673cb6c733f33e3d9044d9acd776aa7efca5f734efbccfef79de79fef300ff6709956edcbf7f7ff7e9d3a74ff03ccfcbb29cd7342df79f00102bdd78ead4a9c1919191dfacaeaee2eddbb7c9783cfe4d241299999999090483c1d94824f26d3a9d7ebf5d00aecc73e1ead5abbf773a9d1f777575fdcaed767f6c1806044180244910840f05cce572482693cbf178fc9f4b4b4b51c69856ec6c228224495c2010088d8e8e7e590960c3ecec6c82d654281448370cca9b26657339ca66b394cbe5289fcf53a150a04a35313111d8c8b00c80e3dcb973bfdeb56b57fdb70b0b48c932e464126c6e0e92d3094e92408c8188c01883aeeb6517c771304d7387cbe56a0d854221be5c09789e474ed3109d9a82944c627e64047a3e0fb1ba1a2002c771db5a8c31ecdcb9b3766868e8f3c6c6c676bebfbfffc8f1e3c77f590a8288505d5707737c1c5a4b0b2c7d7d0063955c6151711c877038fc5d241259168f1e3d3a32343474f4c68d1b7f49241219599697c7c6c6c600e8ebc1ab2c16581a1ab03a30008769c2aaeb802080e3ca7dc3c5835b2c1684c3e198aeeb09f1d2a54b5763b198e7e2c58b9f757474e0fefdfba1e6e6e6b6f1f1f13f2d2c2ca419631045113fefea02e338f01fee10cc34ffed0a00c0ececec1c005920a2e5603098aaadad3db067cf1efbdebd7b1d8661d89a9b9bdb88a8aabfbfff176eb7bb5e5614643319e83c0fa4d3e02509102af6b10d0982005555313636762b168b3d1100e88cb185a74f9fbe4ea5529eb6b6b65dbdbdbd1fd5d4d4d8dfbd7b57b76fdf3e9fd3e9b43dbe7f1f862461fe8b2f509d4ea3c6ef07781edc5a592b5d9224219148d0b56bd7461545f9663d853c11c55ebd7af52a140ad99d4ee7de9e9e9ec6eeee6e573e9fb728b99c24be7f0ff7d75f63657e1e6dc3c3b055558118db761788a2886030981a1d1dfd3380e4e61aea0096161717679e3c79a2582c169fcfe7abf3783c92aa2848a82ad2990cd29f7c829ffa7cb08a15bbf8868808a228e2d9b367b1898989af0064b65e220390521425383939199365d9dbd0d0d0e4f178d0e870a0aeb3133ff3fb515d550522da56e0cd002f5fbe5cbc7dfbf6df00e48b19110158d175fdef77efdefd5296653c7ffe1c055d87c36e874514c1711c789e2f5beeadc1d7b5b97d4b3961ceeff74bbdbdbdf07abd989e9e46341a85aeeb30d75a5092a492596f5dac887995bcc8aeae2ebf2008f07abdb0d96c98999981aaaab05aad989a9ac2891327e072b960180668cd963707dc0a534ca50044bfdfbf6ffde0a6a6261c3a7408939393181c1c84c3e1402814c2c0c0000e1c3800c6d80f322c0652b16c365bebf4f4f4db542a4544448661906118a4280a5dbe7c994451a41d3b76d0912347e8d6ad5b4444649a26699a469aa6513e9fa7dcda2f5b555552559532990c1111ddbc793300a0ae2440676767ffd2d2124b2693df03304d938888eeddbb47bb77ef2600d4dada4a57ae5c21555549d775d2346d23f83a4026932145518888e8faf5ebcf00d49404387bf6ec6fb3d92c2d2f2f7f0f6033c49b376f687070900090cfe7a34c26438cb18dec5555ddd8af691a99a6498f1f3fd65a5a5afe00c002941848ce9f3fffe9c18307bb73b91cec763b00fca0bdeaeaea70f2e449f87c3ed4d6d6429224343737c36ab5823106c330208a220cc300630c8140c03873e6cc578944e2af004ace8f96870f1f4e9ba6b95101d3348baecde3daa3478fe8ce9d3b140e87299fcf532a9522455128954a51381ca6e1e1e159007bb0695efc311f70a8aa5a158fc7cb7eb68c3198a6099ee771f8f0e18d8e2022e8ba8e6c368bb9b939489204c3300200e6f1c1ec4aea2782201c6b6a6abafce2c58bd5724326638c4cd3245dd7c9300c22225a5d5da568344a0f1e3ca04824424444c78e1dfbddd6403fe60319d3341f2493c99542a1f06939dacdf66b9a26d2e9345ebf7e8d743a8d8e8e0eb4b4b4409665168d46e72a0520000680950b172efcc36eb7b7b3623ebaf92051e4ebebeb6bdc6e77437b7b7b436767674d5f5f1fac562b00607171f1bb783c3e5f29c0bade8742a13fe2836994bb371e4015805a9ee73f72b95c6eafd7ebf1f97c9e9e9e9eb6582c1601b0b2f5a5ed4f95e525009000d800d801d40368029006300b40fb6f0314d37ab7112ae880ffa9fe054d115d3c36c248200000000049454e44ae426082	24	24
16	A requalifier	image/png	\\x89504e470d0a1a0a0000000d4948445200000020000000200806000000737a7af40000000467414d410000b18e7cfb51930000018369434350696363000078daad924d4b02511486df991037561b89960359b4b0189420a98db90841621217162dd2711c0dd3619c2ca19fd04268536dfafa032dfa5805b68edc08421f04413f2090da844ce7ce2d5c599b5eb8cc735f66ceb9ef990b88e729c3288800d68b96199f9f93924bcb92fb1e6eb8e028a5968db0a2c4d0531f2d08ecd99c60b52e1e1f34a91a7d5f68acc66e5e932ff85d1e931a028297d8ab731e679ce63ccb78d3322c6285b19a4b658869c16f26e211e21af180cef988719af319e38aaab36febc47231932f12bf114f67b4b20a88ac97ae1a26bd23b23a3e969f1fad44b5422340df4ed74bef0157d7c0f06dd7f31d028333c065a3ebb5179d990843cd723618702cc14367723ddb767b1470ef029d9a6d7f1edb76e7847a3c01f53575c3ac7ccf451083c05f7b9e8deff93f7008bd98e7772403a72d20b10dc4ee80fd03602c4b395600c5437e086270ea67f15939ea2fb34ba298a56cbea0e19f65695b4e9e48c9a89a793d674961ba519a5f8a16d549bf1490e510be00977272543a41994d00000006624b474400ff00ff00ffa0bda793000000097048597300000b1300000b1301009a9c18000000097670416700000020000000200087fa9c9d0000065e4944415458c3ed967950534718c017c50ea3d656ad17b5a576b42a476e48222a2888284501a51e280884db030a5e241515085645548e00411101e5d670a8201a6e258804c56b544405a18278d216857cdd1703031228b6fda7337e33bfd9f7befdaef7edbe9d45e8937c92ff8b8c61ae412a1367abd0b71c9960127ece70694229c72a59b2dd3259e26b9e50e6ba409067c2e4c54f1ecbb61baa61c9fbef124f5eec89d0676415835fd3757e4abbb2675d616db56345d36bc7aa169963752b38485bc1beea99cc4ed2f4fb6af183db166957c30d82b358eaf33d5567d8eefd77c9993b4ea0194e87465ac49778d917d7d571aa9e819df439acb9fa1c6caeb6824da502fc4ce8d6563d07dbca16585950f7dbe2844b81346fe138a3c8221c69f4c727d7f74f4114afe871d66957840ee58ded36152db0e272f3a05855de02ab4a1b3bcd53ab4eebf112be3389294668a4dee093d3bc8fa06976fb47e2358eb62b7b22b32e6e8265858db0bca8513e5a1660c40d6025ae978f16e22760a598efb2595ed404d6854fc02ca93293e61d3391bd3b7570c9a7aff2978fa642b1e7ea8b0fdb2df3eb6169dee36eacf3ea8077b91e126f37c39907ad20baff0cc2aa9bc0e1621d2cc97dd4cbd6e2fc63b0ccad93190b8b82c7506d86693b870ca2f541a710cbefa4b695e846ed923375609659fb9eac5a3015dd8780b247d0f6b6037a8a4c0670e7591b78e4d7c2226c43d876f9fd98fd00ccd26eb4cee26718cd1314a0af67dbf79f5c6b5d10c2f1d0822831df5c74074c526ec3c21e1825dd8403971e42fbbb4eb8d7f2062a1b5e40735b7b772167ef368369f28d5e3e048bd26ec3fcc8a244f5594e9f915c0ef65f00c5331ae978848f5f18575eb520f13acc8fab06a31e18c64ac127e716f02fde038b4429981cab026eee1d686b7fdf919ac69760162fede36774fc1a181d91d433b61d9fc9d89e30c06fb72b0d317726cf318e95bc3288aa008348491fe609ca614e4439cc1548403f42028ec95278f1c75b7901a5b52d601c85e7223ff4ad80794249073be0d4ea39072ff45f80419818b1034fd91b0aca64fa2125a01f52fc0125ddcc3a500c8bc24be16c4da33c39b12c81676f023bb80894f9ce0d2b85594159bbad0a5f224dfb3d7d934f70e522dc26c40a38b579764801b082f2311794c2e4e783c901319cbdd68037a00cde75ca20a9fc0118eec5734afdf2413f580ceca0ac08628f6973949c90639d5c91614419d2db99ba85bd270f74779e01bd5dca61f8e5c0be9cebd08993bfede884b8e2bb60c03f078c7e7c8858eca03c60058a0444015a9c7dca97801d988574b927392cff1c19832782fe60efc8840b35f5f2d657dc7b0a86fe3940e78a409797a9dc07cfb102ce00de630116e75b9026674f3f27a04f1c3e0563e731fd4ebf616c4b07fa56e5b0b81970f4e24da8b8db0421595218c8b60bb67f76a72ef7842ddb5f84bef5f2505e00d93d0c91dc42d5757d536ae85b5280e69d04749fde74e9cc0244e014910f8bfd45721dcda7af6db73d8e851337523d6348d44dc2010e22ce7e6250a1fb1c0f616c3e0934cf784c422f289be2c174673a94de6a80d7f8f72bb9d9000bfdd2e5fa0f6d09a83886def65460ed484b9fba8ca7a6ed7c70e0a398b2211a51d60be874eff87aeac638a0ae8fed05c9e328d80567c32bc509f8b2ed4f58bb3f5baeffd096808663b07764bca27bc79a33792948d3813f70014417d44d6d875037087fa16d3cd641718b018a9bb01bb2ab10667bc5c1d17352a8a97b0ab1b952f93ba1ef69d785ded66460fa26454f5bc155d37edfe1bf1792cb61a4e314329aba5e9844758f01b273646f9c0440778d82399e4781ee162d7fef6d2390a3fb7302b07c53c424d7500deafaa8c1df0726192f4714770122b91e9e4c758f4aa5ba46759039e140720ceb858e43581f1d09ebc89c08d0f58a07e6b6a4028a87408bb935114d5deefbd197a221c4869cbe8a379eec1ccaa7ba4436537060927d2890d61d520ad92114687829f4bc125e31bc8e456bda064c216228627d940cc58c229a81f94675c4a8ef358ced576aade167901d431b294e11ef8862288e183c5271db71e24e9abbb099ec7c3877ea928d4e6a6326fd40f82a628c52c4fca8af1f8e1987d1202e4ac4fe54551bc1f84ac7d0628aa9cb96e9d6dc702d9bc0135a6bf92767aef48b9c6abe913b816e6a3d6ce497c4e54f53e1a3a18831fc9f74a1ab10558c1a6684e24bbe50405c75c72a18dd43ffb9c2564de13b047d9201e42f7482ee7bd9071a6d0000002574455874646174653a63726561746500323030392d30392d31335431353a34353a32342b30323a3030f5ff14f10000002574455874646174653a6d6f6469667900323030392d30392d31335431353a34353a32342b30323a303084a2ac4d0000000049454e44ae426082	24	24
17	A faire terrain	image/png	\\x89504e470d0a1a0a0000000d4948445200000018000000180806000000e0773df80000001974455874536f6674776172650041646f626520496d616765526561647971c9653c000004c54944415478daac55796c145518ffcdd1dd29dd83ceb66c0f685aaea22dc5628462b046c418e3152146a3a0490513ff1123092121e108126362c010242191c644fe305662824853111b099710b094505a2985c25ecdcededdd99ddb37b34b69170ad5f825dfcc9bef7bf37edffd283c84dadadaeac8ebc9fce7c5f6f6f69bf817641806a80729766f79998fa5995f06025ccb78f982aaec9f3379e5950fb7760a5305a0cdc704614f0b357447fceddcd54ccbac59b3607279793932990cce5ecd2ced1dcc9e302eb530e30f29e4f14417a26ede2b7f70fa4abc99e7790882809e9e1e5cbb7a1e4b16ca98592682e89ab6ec97d74d354c6ca1c01748bc2b0832542981784ab164dfee6ac68a65e5d67afbd69318f4e96f93e581ff04a064464b373cc361e3a6562447159ce915504213b7d39a190fbc5e4f61e7f19473aa1e5056a6a97bb96effa4eee0f3355c5bcdb2a7f23bf23a9d8090e5e0c9f3e80a390f5f4a2cbc4ea48f13ce10ee237c905499ffbe241722f245ccd1eacae22c1472a0789775728c0135a3a13b3e573d17ae5fadaaeae6929292d7388e7b4b96e51d8a22df58b366cd86477a50c3db4a8faeaf3dd0e86457518b163160f251d434ec39221867e36eaaa9a909e1701899d40829130336ae1cc5c5c5181e1e3677aeeae8e8f869520f6e47e5f8737b6f6c0b0bca65dc0c0059dde2de8b21fc1eb451f3e6cdc3c0c0006edd1ac28bad06de5fc5c1efbf0d9fcf0787c30145ca6e9be0c17dcdb1a97ebeaee15559d13fe51e9b5f0597cb92effa358cf3b16920e1808d51b0fd232f9aeb8bad13fa86246cfd3a0449e3904ea7cded0ddddddd7da607ece7d90624830a289aaab219d8b83b437dacb0601727aab054aa844bb55b00a77cc3e0bd33303c3488ef76cc455d953de79d99e9ca22ec68f3a06dd7d82459914f3cd860506154495f490cf99258d3284d7783a1191c41109d5a00cb07592413c09d108d2cf9aee745d4951691a4eb132aaca1c26e59ef76bb9148249e25d27d1680df2f7929168738ce5ee67438111b35bd26354fbba0d23a3aaa624867491ba40d783c1edc8e6472961b945922e49dc3b873dd6f01b84848c9bb66acd12250bf52627a5919ef424a921fd02a0ec8ac06511460b3d9d0db9fc25fc72ea0b9b599fccde400a42cbeef1a924551b4699ab957e4c700c286ba949fc3236d67269f8a1e121e2963596896f4e66302ba1a92c0f4524b9f194961df1f51b6ba7a36e2f1b83918a36300a16b72674411d682c1b487b5bcba40455f5f1fb2d92cce8c1a88f6fbc13f319dc45fc3a913d78c604ca4653a884824029a42b7f1d9d36682cc40c2bc546a1f34974caa7615d9fc4945ae70b28daa6cac5de2e5ec3b5b3c7316af5c6c27dd65cd275cbc647c71212aecbd1c8f8dcaba2fa9e86f925fa3935e3805441b2f79cb741bbd87d68c77c6c2b6bc11544b7d6efde36950b742f9841b22746cd20ce300d339a23e12c078cf6bd746e47d51515f675e3ca64986a260349540c9a20ae8a28254bf80525347002492f0643205decdae677e16bea10a6fa0b116cfd7b8b8dab9ac98c119d4d64edc1008209494ae3858781de59e1970bbeee95229e8422449ff9074b38ff2607fbf1878a3923a3e5bea7fa150574161a1d9320805723ccef15311e350ebdd69fa300f0891b68519eccaa9de31c865e36f72f6f0a400ff17fd23c000a8615050c7a640900000000049454e44ae426082	24	24
18	A faire bureau	image/png	\\x89504e470d0a1a0a0000000d4948445200000018000000180806000000e0773df80000001974455874536f6674776172650041646f626520496d616765526561647971c9653c0000032c4944415478da9c56df4b145114fe665ad75dc54c57a46825d012a21fa42b4b462fa22bf427f4d09fd04310153d889499d2fab08fbd44143d44100415e5aa2452d416811442423fb6ad08dc485bd76d7fcded9c3b33dbccceaa5b070e77f6cef9beefccb9e71e564195265e0485fe002887638ab91f8bc584dfef473c1e476f6faf62c3085125f96c408827e40bc7847c9eed91c8b9b93961b5999919512ea06e4a3e19104813aed6072c17f4352320a201d1dada6a8bf5f97c0efc8602e25eb7c0af22e06a0256889c9f59c4bd0d486be85c3c6e8b2f168bd50b883b5d9439016a89fcb7067c5b02ead372159f96f4fd35dabfdb5d2a87a669d509881b87f4cc6b9a6439f08508777a11cd5c94abc28229f2da666095d65b5deb1ea843405c3d28902272b7857c07912b2308854272e5df729f933044d46bdd1505ec6d15d92f5020d2adcdb21d914c02bbea30d9322ac94d8b46a3184c9e07e26b404b0b2543792eff00b628504ebe51ac5df4f7c7f83e9dbcd142dee6c564db180606061c994d4d4d6130710e486474911a43442591336f159b8018da4b27049d1c06b99fc83bc72b92db4416cf52b90c111789fc4c1a19c38d0b0b79559cead40fd44335cf52ea5fa9b63e0f1eef19437f7fbfcc623de7f71cc7f1129736ce8ecf30ade5f443f6b848990e2d27f456a4e047073627b78a70bc14613cf3781bf5af6181dbef562fc1439b1af578b3170fba46ab26b78a3cecbe2cf19247cde2f952feba59caede4dc22a148242232998cc866b3ffec8c63bcc945decee2541f7c371cc160108aa2380ed3f571046afaa5310fa81fea7b50d83de488633c77b10debb868156ea4faf9a97e25f995461332f90ca243387095b036019e2515affc4ace6c3d66926b795cb980f9ac9607b188295402ade4692cf034cde37e1d5daed582edbd15b3f92c32003c7a4d20134b27e2bebe3eeaf342e99d19b79ed94a944aa5401d01b7db6d3f0fcedeb0faf0915239ad96cbe5247ec32f989e9ebe99482464b0cd2863879791338ef11b7e41381c1e362ece89868686d2fed1b58223b3f9f979db9733f9c4c4c470694c53bbdba6a9c5dac93bcaf62a0dfbd765bfdf8b57573ed87602a7a154fdd7e23fed8f000300481569938e4ac0e30000000049454e44ae426082	24	24
\.


--
-- Data for Name: workflow_prerequisite; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_prerequisite (id_prerequisite, id_action, prerequisite_type) FROM stdin;
\.


--
-- Data for Name: workflow_prerequisite_duration_cf; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_prerequisite_duration_cf (id_prerequisite, duration) FROM stdin;
\.


--
-- Data for Name: workflow_resource_history; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_resource_history (id_history, id_resource, resource_type, id_workflow, id_action, creation_date, user_access_code) FROM stdin;
\.


--
-- Data for Name: workflow_resource_workflow; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_resource_workflow (id_resource, resource_type, id_state, id_workflow, id_external_parent, is_associated_workgroups) FROM stdin;
\.


--
-- Data for Name: workflow_resource_workgroup; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_resource_workgroup (id_resource, resource_type, id_workflow, workgroup_key) FROM stdin;
\.


--
-- Data for Name: workflow_state; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_state (id_state, name, description, id_workflow, is_initial_state, is_required_workgroup_assigned, id_icon, display_order) FROM stdin;
7	Nouveau	Nouveau signalement à analyser	2	0	0	\N	0
8	A traiter	Signalement analysé comme nécessitant un traitement	2	0	0	\N	0
9	Service programmé	Signalement dont le traitement est programmé	2	0	0	\N	0
10	Service fait	Signalement traité	2	0	0	\N	0
11	Rejeté	Signalement rejeté	2	0	0	\N	0
12	Archivé	Signalement archivé	2	0	0	\N	0
13	Etat initial	Etat fictif pour l'initalisation du workflow	2	1	0	\N	0
15	A requalifier	Signalement à requalifier	2	0	0	\N	0
16	A faire terrain	A faire terrain	2	0	0	17	4
17	A faire bureau	A faire bureau	2	0	0	18	3
18	Transféré à un tiers	Cette anomalie est en cours de traitement par un tiers externe	2	0	0	11	10
19	Vérification prestataire	Vérification de la présence d'un prestataire lié à cette tâche	2	0	0	\N	15
20	Echec d'envoi par WS	Echec de l'evoi du signalement au prestataire par WS	2	0	0	\N	16
21	Service programmé tiers	Le service est programmé par le tiers	2	0	0	\N	11
22	Sous surveillance	Mise en surveillance d'une anomalie	2	0	0	\N	7
\.


--
-- Data for Name: workflow_task; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_task (id_task, task_type_key, id_action, display_order) FROM stdin;
\.


--
-- Data for Name: workflow_task_assignment_cf; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_task_assignment_cf (id_task, title, is_multiple_owner, is_notify, message, subject, is_use_user_name) FROM stdin;
\.


--
-- Data for Name: workflow_task_comment_config; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_task_comment_config (id_task, title, is_mandatory, is_richtext) FROM stdin;
\.


--
-- Data for Name: workflow_task_comment_value; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_task_comment_value (id_history, id_task, comment_value) FROM stdin;
\.


--
-- Data for Name: workflow_task_notification_cf; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_task_notification_cf (id_task, id_mailing_list, sender_name, subject, message) FROM stdin;
\.


--
-- Data for Name: workflow_task_notify_gru_cf; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_task_notify_gru_cf (id_task, id_spring_provider, marker_provider_ids, demand_status, crm_status_id, set_onglet, message_guichet, status_text_guichet, sender_name_guichet, subject_guichet, demand_max_step_guichet, demand_user_current_step_guichet, is_active_onglet_guichet, status_text_agent, message_agent, is_active_onglet_agent, subject_email, message_email, sender_name_email, recipients_cc_email, recipients_cci_email, is_active_onglet_email, message_sms, billing_account_sms, billing_group_sms, is_active_onglet_sms, id_mailing_list_broadcast, email_broadcast, sender_name_broadcast, subject_broadcast, message_broadcast, recipients_cc_broadcast, recipients_cci_broadcast, is_active_onglet_broadcast) FROM stdin;
\.


--
-- Data for Name: workflow_task_notify_gru_history; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_task_notify_gru_history (id_history, id_task, crm_status_id, message_guichet, status_text_guichet, sender_name_guichet, subject_guichet, demand_max_step_guichet, demand_user_current_step_guichet, is_active_onglet_guichet, status_text_agent, message_agent, is_active_onglet_agent, subject_email, message_email, sender_name_email, recipients_cc_email, recipients_cci_email, is_active_onglet_email, message_sms, billing_account_sms, billing_group_sms, is_active_onglet_sms, id_mailing_list_broadcast, email_broadcast, sender_name_broadcast, subject_broadcast, message_broadcast, recipients_cc_broadcast, recipients_cci_broadcast, is_active_onglet_broadcast) FROM stdin;
\.


--
-- Data for Name: workflow_workflow; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_workflow (id_workflow, name, description, creation_date, is_enabled, workgroup_key) FROM stdin;
2	Signalements	Gestions des signalements d'anomalie	2012-03-20 13:55:10.625	1	all
\.


--
-- Data for Name: workflow_workgroup_cf; Type: TABLE DATA; Schema: public; Owner: postgres_app
--

COPY workflow_workgroup_cf (id_task, workgroup_key, id_mailing_list) FROM stdin;
\.


SET search_path = topology, pg_catalog;

--
-- Data for Name: topology; Type: TABLE DATA; Schema: topology; Owner: postgres_app
--

COPY topology (id, name, srid, "precision", hasz) FROM stdin;
\.


--
-- Data for Name: layer; Type: TABLE DATA; Schema: topology; Owner: postgres_app
--

COPY layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
\.


SET search_path = public, pg_catalog;

--
-- Name: core_admin_dashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_dashboard
    ADD CONSTRAINT core_admin_dashboard_pkey PRIMARY KEY (dashboard_name);


--
-- Name: core_admin_mailinglist_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_mailinglist_filter
    ADD CONSTRAINT core_admin_mailinglist_filter_pkey PRIMARY KEY (id_mailinglist, workgroup, role);


--
-- Name: core_admin_mailinglist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_mailinglist
    ADD CONSTRAINT core_admin_mailinglist_pkey PRIMARY KEY (id_mailinglist);


--
-- Name: core_admin_right_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_right
    ADD CONSTRAINT core_admin_right_pkey PRIMARY KEY (id_right);


--
-- Name: core_admin_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_role
    ADD CONSTRAINT core_admin_role_pkey PRIMARY KEY (role_key);


--
-- Name: core_admin_role_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_role_resource
    ADD CONSTRAINT core_admin_role_resource_pkey PRIMARY KEY (rbac_id);


--
-- Name: core_admin_user_anonymize_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_user_anonymize_field
    ADD CONSTRAINT core_admin_user_anonymize_field_pkey PRIMARY KEY (field_name);


--
-- Name: core_admin_user_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_user_field
    ADD CONSTRAINT core_admin_user_field_pkey PRIMARY KEY (id_user_field);


--
-- Name: core_admin_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_user
    ADD CONSTRAINT core_admin_user_pkey PRIMARY KEY (id_user);


--
-- Name: core_admin_user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_user_preferences
    ADD CONSTRAINT core_admin_user_preferences_pkey PRIMARY KEY (id_user, pref_key);


--
-- Name: core_admin_workgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_workgroup
    ADD CONSTRAINT core_admin_workgroup_pkey PRIMARY KEY (workgroup_key);


--
-- Name: core_admin_workgroup_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_admin_workgroup_user
    ADD CONSTRAINT core_admin_workgroup_user_pkey PRIMARY KEY (workgroup_key, id_user);


--
-- Name: core_attribute_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_attribute_field
    ADD CONSTRAINT core_attribute_field_pkey PRIMARY KEY (id_field);


--
-- Name: core_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_attribute
    ADD CONSTRAINT core_attribute_pkey PRIMARY KEY (id_attribute);


--
-- Name: core_dashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_dashboard
    ADD CONSTRAINT core_dashboard_pkey PRIMARY KEY (dashboard_name);


--
-- Name: core_datastore_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_datastore
    ADD CONSTRAINT core_datastore_pkey PRIMARY KEY (entity_key);


--
-- Name: core_feature_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_feature_group
    ADD CONSTRAINT core_feature_group_pkey PRIMARY KEY (id_feature_group);


--
-- Name: core_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_file
    ADD CONSTRAINT core_file_pkey PRIMARY KEY (id_file);


--
-- Name: core_id_generator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_id_generator
    ADD CONSTRAINT core_id_generator_pkey PRIMARY KEY (class_name);


--
-- Name: core_indexer_action_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_indexer_action
    ADD CONSTRAINT core_indexer_action_pkey PRIMARY KEY (id_action);


--
-- Name: core_level_right_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_level_right
    ADD CONSTRAINT core_level_right_pkey PRIMARY KEY (id_level);


--
-- Name: core_mail_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_mail_item
    ADD CONSTRAINT core_mail_item_pkey PRIMARY KEY (id_mail_queue);


--
-- Name: core_mail_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_mail_queue
    ADD CONSTRAINT core_mail_queue_pkey PRIMARY KEY (id_mail_queue);


--
-- Name: core_mode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_mode
    ADD CONSTRAINT core_mode_pkey PRIMARY KEY (id_mode);


--
-- Name: core_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_page
    ADD CONSTRAINT core_page_pkey PRIMARY KEY (id_page);


--
-- Name: core_page_template_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_page_template
    ADD CONSTRAINT core_page_template_pkey PRIMARY KEY (id_template);


--
-- Name: core_physical_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_physical_file
    ADD CONSTRAINT core_physical_file_pkey PRIMARY KEY (id_physical_file);


--
-- Name: core_portal_component_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_portal_component
    ADD CONSTRAINT core_portal_component_pkey PRIMARY KEY (id_portal_component);


--
-- Name: core_portlet_alias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_portlet_alias
    ADD CONSTRAINT core_portlet_alias_pkey PRIMARY KEY (id_portlet, id_alias);


--
-- Name: core_portlet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_portlet
    ADD CONSTRAINT core_portlet_pkey PRIMARY KEY (id_portlet);


--
-- Name: core_portlet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_portlet_type
    ADD CONSTRAINT core_portlet_type_pkey PRIMARY KEY (id_portlet_type);


--
-- Name: core_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_role
    ADD CONSTRAINT core_role_pkey PRIMARY KEY (role);


--
-- Name: core_search_parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_search_parameter
    ADD CONSTRAINT core_search_parameter_pkey PRIMARY KEY (parameter_key);


--
-- Name: core_style_mode_stylesheet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_style_mode_stylesheet
    ADD CONSTRAINT core_style_mode_stylesheet_pkey PRIMARY KEY (id_style, id_mode, id_stylesheet);


--
-- Name: core_style_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_style
    ADD CONSTRAINT core_style_pkey PRIMARY KEY (id_style);


--
-- Name: core_stylesheet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_stylesheet
    ADD CONSTRAINT core_stylesheet_pkey PRIMARY KEY (id_stylesheet);


--
-- Name: core_template_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_template
    ADD CONSTRAINT core_template_pkey PRIMARY KEY (template_name);


--
-- Name: core_text_editor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_text_editor
    ADD CONSTRAINT core_text_editor_pkey PRIMARY KEY (editor_name, backoffice);


--
-- Name: core_user_password_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_user_password_history
    ADD CONSTRAINT core_user_password_history_pkey PRIMARY KEY (id_user, date_password_change);


--
-- Name: core_user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_user_preferences
    ADD CONSTRAINT core_user_preferences_pkey PRIMARY KEY (id_user, pref_key);


--
-- Name: core_user_right_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_user_right
    ADD CONSTRAINT core_user_right_pkey PRIMARY KEY (id_right, id_user);


--
-- Name: core_user_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_user_role
    ADD CONSTRAINT core_user_role_pkey PRIMARY KEY (role_key, id_user);


--
-- Name: core_xsl_export_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY core_xsl_export
    ADD CONSTRAINT core_xsl_export_pkey PRIMARY KEY (id_xsl_export);


--
-- Name: export_signalement_type_signalement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY export_signalement_type_signalement
    ADD CONSTRAINT export_signalement_type_signalement_pkey PRIMARY KEY (id_type_signalement);


--
-- Name: export_unittree_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY export_unittree_unit
    ADD CONSTRAINT export_unittree_unit_pkey PRIMARY KEY (id_unit);


--
-- Name: formengine_formengine_parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY formengine_formengine_parameter
    ADD CONSTRAINT formengine_formengine_parameter_pkey PRIMARY KEY (parameter_key);


--
-- Name: formengine_group_notice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY formengine_group_notice
    ADD CONSTRAINT formengine_group_notice_pkey PRIMARY KEY (id_group_notice);


--
-- Name: formengine_id_generator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY formengine_id_generator
    ADD CONSTRAINT formengine_id_generator_pkey PRIMARY KEY (id_form);


--
-- Name: formengine_notice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY formengine_notice
    ADD CONSTRAINT formengine_notice_pkey PRIMARY KEY (id_notice);


--
-- Name: formengine_signalement_right_column_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY formengine_signalement_right_column
    ADD CONSTRAINT formengine_signalement_right_column_pkey PRIMARY KEY (id_right_column);


--
-- Name: formengine_stylesheet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY formengine_stylesheet
    ADD CONSTRAINT formengine_stylesheet_pkey PRIMARY KEY (id_stylesheet);


--
-- Name: id_message_pk; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow_notifuser_multi_contents_config
    ADD CONSTRAINT id_message_pk PRIMARY KEY (id_message);


--
-- Name: id_workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow
    ADD CONSTRAINT id_workflow_pkey PRIMARY KEY (id_workflow);


--
-- Name: import_sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY import_sector
    ADD CONSTRAINT import_sector_pkey PRIMARY KEY (id_sector);


--
-- Name: mylutece_attribute_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY mylutece_attribute_field
    ADD CONSTRAINT mylutece_attribute_field_pkey PRIMARY KEY (id_field);


--
-- Name: mylutece_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY mylutece_attribute
    ADD CONSTRAINT mylutece_attribute_pkey PRIMARY KEY (id_attribute);


--
-- Name: mylutece_user_anonymize_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY mylutece_user_anonymize_field
    ADD CONSTRAINT mylutece_user_anonymize_field_pkey PRIMARY KEY (field_name);


--
-- Name: mylutece_user_field_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY mylutece_user_field
    ADD CONSTRAINT mylutece_user_field_pkey PRIMARY KEY (id_user_field);


--
-- Name: observation_rejet_signalement_pk; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_observation_rejet_signalement
    ADD CONSTRAINT observation_rejet_signalement_pk PRIMARY KEY (id_observation_rejet_signalement);


--
-- Name: pk_domaine_arrondissement; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_domaine_arrondissement
    ADD CONSTRAINT pk_domaine_arrondissement PRIMARY KEY (fk_id_domaine_fonctionnel, fk_id_arrondissement);


--
-- Name: pk_domaine_fonctionnel; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_domaine_fonctionnel
    ADD CONSTRAINT pk_domaine_fonctionnel PRIMARY KEY (id_domaine_fonctionnel);


--
-- Name: pk_domaine_quartier; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_domaine_conseil_quartier
    ADD CONSTRAINT pk_domaine_quartier PRIMARY KEY (fk_id_domaine_fonctionnel, fk_id_quartier);


--
-- Name: pk_domaine_type_signalement; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_domaine_type_signalement
    ADD CONSTRAINT pk_domaine_type_signalement PRIMARY KEY (fk_id_domaine_fonctionnel, fk_id_type_signalement);


--
-- Name: pk_domaine_type_unit; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_domaine_unit
    ADD CONSTRAINT pk_domaine_type_unit PRIMARY KEY (fk_id_domaine_fonctionnel, fk_id_unit);


--
-- Name: pk_signalement_id_unit; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_unit
    ADD CONSTRAINT pk_signalement_id_unit PRIMARY KEY (fk_id_unit);


--
-- Name: profile_action_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_action
    ADD CONSTRAINT profile_action_pkey PRIMARY KEY (id_action);


--
-- Name: profile_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_profile
    ADD CONSTRAINT profile_profile_pkey PRIMARY KEY (profile_key);


--
-- Name: profile_right_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_right
    ADD CONSTRAINT profile_right_pkey PRIMARY KEY (profile_key, id_right);


--
-- Name: profile_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_role
    ADD CONSTRAINT profile_role_pkey PRIMARY KEY (profile_key, role_key);


--
-- Name: profile_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_user
    ADD CONSTRAINT profile_user_pkey PRIMARY KEY (profile_key, id_user);


--
-- Name: profile_view_action_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_view_action
    ADD CONSTRAINT profile_view_action_pkey PRIMARY KEY (id_action);


--
-- Name: profile_view_dashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_view_dashboard
    ADD CONSTRAINT profile_view_dashboard_pkey PRIMARY KEY (view_key, dashboard_name);


--
-- Name: profile_view_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_view
    ADD CONSTRAINT profile_view_pkey PRIMARY KEY (view_key);


--
-- Name: profile_view_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_view_profile
    ADD CONSTRAINT profile_view_profile_pkey PRIMARY KEY (view_key, profile_key);


--
-- Name: profile_workgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY profile_workgroup
    ADD CONSTRAINT profile_workgroup_pkey PRIMARY KEY (profile_key, workgroup_key);


--
-- Name: signalement_adresse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_adresse
    ADD CONSTRAINT signalement_adresse_pkey PRIMARY KEY (id_adresse);


--
-- Name: signalement_arrondissement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_arrondissement
    ADD CONSTRAINT signalement_arrondissement_pkey PRIMARY KEY (id_arrondissement);


--
-- Name: signalement_conseil_quartier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_conseil_quartier
    ADD CONSTRAINT signalement_conseil_quartier_pkey PRIMARY KEY (id_consqrt);


--
-- Name: signalement_dashboard_period_pk; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_dashboard_period
    ADD CONSTRAINT signalement_dashboard_period_pk PRIMARY KEY (id_period);


--
-- Name: signalement_dashboard_user_preferences_pk; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_dashboard_user_preferences
    ADD CONSTRAINT signalement_dashboard_user_preferences_pk PRIMARY KEY (fk_id_user, fk_id_state);


--
-- Name: signalement_message_creation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_message_creation
    ADD CONSTRAINT signalement_message_creation_pkey PRIMARY KEY (id_message);


--
-- Name: signalement_numero_signalement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_numero_signalement
    ADD CONSTRAINT signalement_numero_signalement_pkey PRIMARY KEY (id_signalement_numero_signalement);


--
-- Name: signalement_observation_rejet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_observation_rejet
    ADD CONSTRAINT signalement_observation_rejet_pkey PRIMARY KEY (id_observation_rejet);


--
-- Name: signalement_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_photo
    ADD CONSTRAINT signalement_photo_pkey PRIMARY KEY (id_photo);


--
-- Name: signalement_priorite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_priorite
    ADD CONSTRAINT signalement_priorite_pkey PRIMARY KEY (id_priorite);


--
-- Name: signalement_signalement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_signalement
    ADD CONSTRAINT signalement_signalement_pkey PRIMARY KEY (id_signalement);


--
-- Name: signalement_signaleur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_signaleur
    ADD CONSTRAINT signalement_signaleur_pkey PRIMARY KEY (id_signaleur);


--
-- Name: signalement_type_signalement_alias_pk; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_type_signalement_alias
    ADD CONSTRAINT signalement_type_signalement_alias_pk PRIMARY KEY (fk_id_type_signalement);


--
-- Name: signalement_type_signalement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_type_signalement
    ADD CONSTRAINT signalement_type_signalement_pkey PRIMARY KEY (id_type_signalement);


--
-- Name: signalement_type_signalement_version_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_type_signalement_version
    ADD CONSTRAINT signalement_type_signalement_version_pkey PRIMARY KEY (version);


--
-- Name: signalement_workflow_notification_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow_notification_config
    ADD CONSTRAINT signalement_workflow_notification_config_pkey PRIMARY KEY (id_task);


--
-- Name: signalement_workflow_notification_config_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow_notification_config_unit
    ADD CONSTRAINT signalement_workflow_notification_config_unit_pkey PRIMARY KEY (id_task, id_unit);


--
-- Name: signalement_workflow_notification_user_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow_notification_user_config
    ADD CONSTRAINT signalement_workflow_notification_user_config_pkey PRIMARY KEY (id_task);


--
-- Name: signalement_workflow_notification_user_value_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow_notification_user_value
    ADD CONSTRAINT signalement_workflow_notification_user_value_pkey PRIMARY KEY (id_history, id_task);


--
-- Name: signalement_workflow_notifuser_3contents_value_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow_notifuser_multi_contents_value
    ADD CONSTRAINT signalement_workflow_notifuser_3contents_value_pkey PRIMARY KEY (id_history, id_task);


--
-- Name: signalement_workflow_rac_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow_rac_unit
    ADD CONSTRAINT signalement_workflow_rac_unit_pkey PRIMARY KEY (id_config_unit);


--
-- Name: signalement_workflow_webservice_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow_webservice_config
    ADD CONSTRAINT signalement_workflow_webservice_config_pkey PRIMARY KEY (id_task);


--
-- Name: signalement_workflow_webservice_value_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_workflow_webservice_value
    ADD CONSTRAINT signalement_workflow_webservice_value_pkey PRIMARY KEY (id_history, id_task);


--
-- Name: suivi_pk; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY signalement_suivi
    ADD CONSTRAINT suivi_pk PRIMARY KEY (id_suivi);


--
-- Name: unittree_action_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY unittree_action
    ADD CONSTRAINT unittree_action_pkey PRIMARY KEY (id_action);


--
-- Name: unittree_sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY unittree_sector
    ADD CONSTRAINT unittree_sector_pkey PRIMARY KEY (id_sector);


--
-- Name: unittree_unit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY unittree_unit
    ADD CONSTRAINT unittree_unit_pkey PRIMARY KEY (id_unit);


--
-- Name: unittree_unit_sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY unittree_unit_sector
    ADD CONSTRAINT unittree_unit_sector_pkey PRIMARY KEY (id_unit, id_sector);


--
-- Name: unittree_unit_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY unittree_unit_user
    ADD CONSTRAINT unittree_unit_user_pkey PRIMARY KEY (id_unit, id_user);


--
-- Name: user_guid_pk; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY sira_user
    ADD CONSTRAINT user_guid_pk PRIMARY KEY (id_sira_user);


--
-- Name: workflow_action_action_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_action_action
    ADD CONSTRAINT workflow_action_action_pkey PRIMARY KEY (id_action, id_linked_action);


--
-- Name: workflow_action_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_action
    ADD CONSTRAINT workflow_action_pkey PRIMARY KEY (id_action);


--
-- Name: workflow_assignment_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_assignment_history
    ADD CONSTRAINT workflow_assignment_history_pkey PRIMARY KEY (id_history, id_task, workgroup_key);


--
-- Name: workflow_icon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_icon
    ADD CONSTRAINT workflow_icon_pkey PRIMARY KEY (id_icon);


--
-- Name: workflow_prerequisite_duration_cf_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_prerequisite_duration_cf
    ADD CONSTRAINT workflow_prerequisite_duration_cf_pkey PRIMARY KEY (id_prerequisite);


--
-- Name: workflow_prerequisite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_prerequisite
    ADD CONSTRAINT workflow_prerequisite_pkey PRIMARY KEY (id_prerequisite);


--
-- Name: workflow_resource_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_resource_history
    ADD CONSTRAINT workflow_resource_history_pkey PRIMARY KEY (id_history);


--
-- Name: workflow_resource_workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_resource_workflow
    ADD CONSTRAINT workflow_resource_workflow_pkey PRIMARY KEY (id_resource, resource_type, id_workflow);


--
-- Name: workflow_state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_state
    ADD CONSTRAINT workflow_state_pkey PRIMARY KEY (id_state);


--
-- Name: workflow_task_assignment_cf_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_task_assignment_cf
    ADD CONSTRAINT workflow_task_assignment_cf_pkey PRIMARY KEY (id_task);


--
-- Name: workflow_task_comment_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_task_comment_config
    ADD CONSTRAINT workflow_task_comment_config_pkey PRIMARY KEY (id_task);


--
-- Name: workflow_task_comment_value_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_task_comment_value
    ADD CONSTRAINT workflow_task_comment_value_pkey PRIMARY KEY (id_history, id_task);


--
-- Name: workflow_task_notification_cf_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_task_notification_cf
    ADD CONSTRAINT workflow_task_notification_cf_pkey PRIMARY KEY (id_task);


--
-- Name: workflow_task_notify_gru_cf_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_task_notify_gru_cf
    ADD CONSTRAINT workflow_task_notify_gru_cf_pkey PRIMARY KEY (id_task);


--
-- Name: workflow_task_notify_gru_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_task_notify_gru_history
    ADD CONSTRAINT workflow_task_notify_gru_history_pkey PRIMARY KEY (id_history, id_task);


--
-- Name: workflow_task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_task
    ADD CONSTRAINT workflow_task_pkey PRIMARY KEY (id_task);


--
-- Name: workflow_workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_workflow
    ADD CONSTRAINT workflow_workflow_pkey PRIMARY KEY (id_workflow);


--
-- Name: workflow_workgroup_cf_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres_app; Tablespace: 
--

ALTER TABLE ONLY workflow_workgroup_cf
    ADD CONSTRAINT workflow_workgroup_cf_pkey PRIMARY KEY (id_task, workgroup_key);


--
-- Name: action_id_icon_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX action_id_icon_fk ON workflow_action USING btree (id_icon);


--
-- Name: action_id_state_after_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX action_id_state_after_fk ON workflow_action USING btree (id_state_after);


--
-- Name: action_id_state_before_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX action_id_state_before_fk ON workflow_action USING btree (id_state_before);


--
-- Name: action_id_workflow_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX action_id_workflow_fk ON workflow_action USING btree (id_workflow);


--
-- Name: assignment_id_history_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX assignment_id_history_fk ON workflow_assignment_history USING btree (id_history);


--
-- Name: assignment_id_task_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX assignment_id_task_fk ON workflow_assignment_history USING btree (id_task);


--
-- Name: comment_value_id_history_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX comment_value_id_history_fk ON workflow_task_comment_value USING btree (id_history);


--
-- Name: comment_value_id_task_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX comment_value_id_task_fk ON workflow_task_comment_value USING btree (id_task);


--
-- Name: core_admin_user_field_idx_file; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX core_admin_user_field_idx_file ON core_admin_user_field USING btree (id_file);


--
-- Name: history_id_action_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX history_id_action_fk ON workflow_resource_history USING btree (id_action);


--
-- Name: history_id_workflow_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX history_id_workflow_fk ON workflow_resource_history USING btree (id_workflow);


--
-- Name: idx_numero_signalement; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE UNIQUE INDEX idx_numero_signalement ON signalement_numero_signalement USING btree (mois, annee);


--
-- Name: import_sector_geom_gist; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX import_sector_geom_gist ON import_sector USING gist (geom);


--
-- Name: index_admin_user_preferences; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_admin_user_preferences ON core_admin_user_preferences USING btree (id_user);


--
-- Name: index_childpage; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_childpage ON core_page USING btree (id_parent, page_order);


--
-- Name: index_connections_log; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_connections_log ON core_connections_log USING btree (ip_address, date_login);


--
-- Name: index_page; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_page ON core_page USING btree (id_template, id_parent);


--
-- Name: index_portlet; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_portlet ON core_portlet USING btree (id_page, id_portlet_type, id_style);


--
-- Name: index_right; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_right ON core_admin_right USING btree (level_right, admin_url);


--
-- Name: index_style; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_style ON core_style USING btree (id_portlet_type);


--
-- Name: index_style_mode_stylesheet; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_style_mode_stylesheet ON core_style_mode_stylesheet USING btree (id_stylesheet, id_mode);


--
-- Name: index_user_preferences; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_user_preferences ON core_user_preferences USING btree (id_user);


--
-- Name: index_user_right; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX index_user_right ON core_user_right USING btree (id_user);


--
-- Name: is_locked_core_mail_queue; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX is_locked_core_mail_queue ON core_mail_queue USING btree (is_locked);


--
-- Name: signalement_adresse_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX signalement_adresse_fk ON signalement_adresse USING btree (fk_id_signalement);


--
-- Name: signalement_conseil_quartier_geom_idx; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX signalement_conseil_quartier_geom_idx ON signalement_conseil_quartier USING gist (geom);


--
-- Name: signalement_photo_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX signalement_photo_fk ON signalement_photo USING btree (fk_id_signalement);


--
-- Name: signalement_signaleur_sign_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX signalement_signaleur_sign_fk ON signalement_signaleur USING btree (fk_id_signalement);


--
-- Name: task_id_action_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX task_id_action_fk ON workflow_task USING btree (id_action);


--
-- Name: unittree_sector_geom_gist; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX unittree_sector_geom_gist ON unittree_sector USING gist (geom);


--
-- Name: workflow_resource_workflow_id_resource_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX workflow_resource_workflow_id_resource_fk ON workflow_resource_workflow USING btree (id_resource);


--
-- Name: workflow_resource_workflow_id_workflow_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX workflow_resource_workflow_id_workflow_fk ON workflow_resource_workflow USING btree (id_workflow);


--
-- Name: workflow_resource_workflow_resource_type_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX workflow_resource_workflow_resource_type_fk ON workflow_resource_workflow USING btree (resource_type);


--
-- Name: workflow_resource_workgroup_id_resource_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX workflow_resource_workgroup_id_resource_fk ON workflow_resource_workgroup USING btree (id_resource);


--
-- Name: workflow_resource_workgroup_id_workflow_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX workflow_resource_workgroup_id_workflow_fk ON workflow_resource_workgroup USING btree (id_workflow);


--
-- Name: workflow_resource_workgroup_resource_type_fk; Type: INDEX; Schema: public; Owner: postgres_app; Tablespace: 
--

CREATE INDEX workflow_resource_workgroup_resource_type_fk ON workflow_resource_workgroup USING btree (resource_type);


--
-- Name: fk_action_id_icon; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_action
    ADD CONSTRAINT fk_action_id_icon FOREIGN KEY (id_icon) REFERENCES workflow_icon(id_icon) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_action_id_state_after; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_action
    ADD CONSTRAINT fk_action_id_state_after FOREIGN KEY (id_state_after) REFERENCES workflow_state(id_state) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_action_id_state_before; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_action
    ADD CONSTRAINT fk_action_id_state_before FOREIGN KEY (id_state_before) REFERENCES workflow_state(id_state) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_action_id_workflow; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_action
    ADD CONSTRAINT fk_action_id_workflow FOREIGN KEY (id_workflow) REFERENCES workflow_workflow(id_workflow) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_arrondissement; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_domaine_arrondissement
    ADD CONSTRAINT fk_arrondissement FOREIGN KEY (fk_id_arrondissement) REFERENCES signalement_arrondissement(id_arrondissement);


--
-- Name: fk_assignment_id_history; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_assignment_history
    ADD CONSTRAINT fk_assignment_id_history FOREIGN KEY (id_history) REFERENCES workflow_resource_history(id_history) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_assignment_id_task; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_assignment_history
    ADD CONSTRAINT fk_assignment_id_task FOREIGN KEY (id_task) REFERENCES workflow_task(id_task) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_comment_value_id_history; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_task_comment_value
    ADD CONSTRAINT fk_comment_value_id_history FOREIGN KEY (id_history) REFERENCES workflow_resource_history(id_history) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_comment_value_id_task; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_task_comment_value
    ADD CONSTRAINT fk_comment_value_id_task FOREIGN KEY (id_task) REFERENCES workflow_task(id_task) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_document_id_state; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_resource_workflow
    ADD CONSTRAINT fk_document_id_state FOREIGN KEY (id_state) REFERENCES workflow_state(id_state) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_document_id_workflow; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_resource_workflow
    ADD CONSTRAINT fk_document_id_workflow FOREIGN KEY (id_workflow) REFERENCES workflow_workflow(id_workflow) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_domaine; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_domaine_type_signalement
    ADD CONSTRAINT fk_domaine FOREIGN KEY (fk_id_domaine_fonctionnel) REFERENCES signalement_domaine_fonctionnel(id_domaine_fonctionnel) ON DELETE CASCADE;


--
-- Name: fk_domaine; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_domaine_conseil_quartier
    ADD CONSTRAINT fk_domaine FOREIGN KEY (fk_id_domaine_fonctionnel) REFERENCES signalement_domaine_fonctionnel(id_domaine_fonctionnel);


--
-- Name: fk_domaine; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_domaine_arrondissement
    ADD CONSTRAINT fk_domaine FOREIGN KEY (fk_id_domaine_fonctionnel) REFERENCES signalement_domaine_fonctionnel(id_domaine_fonctionnel) ON DELETE CASCADE;


--
-- Name: fk_domaine; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_domaine_unit
    ADD CONSTRAINT fk_domaine FOREIGN KEY (fk_id_domaine_fonctionnel) REFERENCES signalement_domaine_fonctionnel(id_domaine_fonctionnel) ON DELETE CASCADE;


--
-- Name: fk_export_id_type_signalement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY export_signalement_type_signalement
    ADD CONSTRAINT fk_export_id_type_signalement_fkey FOREIGN KEY (fk_id_type_signalement) REFERENCES export_signalement_type_signalement(id_type_signalement);


--
-- Name: fk_history_id_action; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_resource_history
    ADD CONSTRAINT fk_history_id_action FOREIGN KEY (id_action) REFERENCES workflow_action(id_action) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_history_id_workflow; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_resource_history
    ADD CONSTRAINT fk_history_id_workflow FOREIGN KEY (id_workflow) REFERENCES workflow_workflow(id_workflow) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_id_arrondissement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_signalement
    ADD CONSTRAINT fk_id_arrondissement_fkey FOREIGN KEY (fk_id_arrondissement) REFERENCES signalement_arrondissement(id_arrondissement);


--
-- Name: fk_id_history; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_workflow_webservice_value
    ADD CONSTRAINT fk_id_history FOREIGN KEY (id_history) REFERENCES workflow_resource_history(id_history) ON DELETE CASCADE;


--
-- Name: fk_id_priorite_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_signalement
    ADD CONSTRAINT fk_id_priorite_fkey FOREIGN KEY (fk_id_priorite) REFERENCES signalement_priorite(id_priorite);


--
-- Name: fk_id_sector; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY unittree_unit_sector
    ADD CONSTRAINT fk_id_sector FOREIGN KEY (id_sector) REFERENCES unittree_sector(id_sector);


--
-- Name: fk_id_sector_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_signalement
    ADD CONSTRAINT fk_id_sector_fkey FOREIGN KEY (fk_id_sector) REFERENCES unittree_sector(id_sector);


--
-- Name: fk_id_signalement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_adresse
    ADD CONSTRAINT fk_id_signalement_fkey FOREIGN KEY (fk_id_signalement) REFERENCES signalement_signalement(id_signalement) ON DELETE CASCADE;


--
-- Name: fk_id_signalement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_photo
    ADD CONSTRAINT fk_id_signalement_fkey FOREIGN KEY (fk_id_signalement) REFERENCES signalement_signalement(id_signalement) ON DELETE CASCADE;


--
-- Name: fk_id_signalement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_signaleur
    ADD CONSTRAINT fk_id_signalement_fkey FOREIGN KEY (fk_id_signalement) REFERENCES signalement_signalement(id_signalement) ON DELETE CASCADE;


--
-- Name: fk_id_type_signalement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_type_signalement
    ADD CONSTRAINT fk_id_type_signalement_fkey FOREIGN KEY (fk_id_type_signalement) REFERENCES signalement_type_signalement(id_type_signalement);


--
-- Name: fk_id_type_signalement_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_signalement
    ADD CONSTRAINT fk_id_type_signalement_fkey FOREIGN KEY (fk_id_type_signalement) REFERENCES signalement_type_signalement(id_type_signalement);


--
-- Name: fk_id_unit; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY unittree_unit_user
    ADD CONSTRAINT fk_id_unit FOREIGN KEY (id_unit) REFERENCES unittree_unit(id_unit);


--
-- Name: fk_id_unit; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY unittree_unit_sector
    ADD CONSTRAINT fk_id_unit FOREIGN KEY (id_unit) REFERENCES unittree_unit(id_unit);


--
-- Name: fk_id_unit; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_domaine_unit
    ADD CONSTRAINT fk_id_unit FOREIGN KEY (fk_id_unit) REFERENCES unittree_unit(id_unit);


--
-- Name: fk_notification_user_id_task; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_workflow_notification_user_value
    ADD CONSTRAINT fk_notification_user_id_task FOREIGN KEY (id_task) REFERENCES workflow_task(id_task) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_notification_user_id_task; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_workflow_notifuser_multi_contents_value
    ADD CONSTRAINT fk_notification_user_id_task FOREIGN KEY (id_task) REFERENCES workflow_task(id_task) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_notification_user_value_id_history; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_workflow_notification_user_value
    ADD CONSTRAINT fk_notification_user_value_id_history FOREIGN KEY (id_history) REFERENCES workflow_resource_history(id_history) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_notifuser_3contents_value_id_history; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_workflow_notifuser_multi_contents_value
    ADD CONSTRAINT fk_notifuser_3contents_value_id_history FOREIGN KEY (id_history) REFERENCES workflow_resource_history(id_history) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_quartier; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_domaine_conseil_quartier
    ADD CONSTRAINT fk_quartier FOREIGN KEY (fk_id_quartier) REFERENCES signalement_conseil_quartier(id_consqrt);


--
-- Name: fk_signalement_id_unit; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_unit
    ADD CONSTRAINT fk_signalement_id_unit FOREIGN KEY (fk_id_unit) REFERENCES unittree_unit(id_unit) ON DELETE CASCADE;


--
-- Name: fk_signalement_rac_id_task; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_workflow_rac_unit
    ADD CONSTRAINT fk_signalement_rac_id_task FOREIGN KEY (id_task) REFERENCES workflow_task(id_task) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_signalement_type_alias; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_type_signalement_alias
    ADD CONSTRAINT fk_signalement_type_alias FOREIGN KEY (fk_id_type_signalement) REFERENCES signalement_type_signalement(id_type_signalement) ON DELETE CASCADE;


--
-- Name: fk_state_id_workflow; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_state
    ADD CONSTRAINT fk_state_id_workflow FOREIGN KEY (id_workflow) REFERENCES workflow_workflow(id_workflow) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_task_id_action; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY workflow_task
    ADD CONSTRAINT fk_task_id_action FOREIGN KEY (id_action) REFERENCES workflow_action(id_action) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: fk_type_signalement; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_domaine_type_signalement
    ADD CONSTRAINT fk_type_signalement FOREIGN KEY (fk_id_type_signalement) REFERENCES signalement_type_signalement(id_type_signalement);


--
-- Name: id_signalement_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_requalification
    ADD CONSTRAINT id_signalement_fk FOREIGN KEY (id_signalement) REFERENCES signalement_signalement(id_signalement) ON DELETE CASCADE;


--
-- Name: observation_rejet_rejet_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_observation_rejet_signalement
    ADD CONSTRAINT observation_rejet_rejet_fk FOREIGN KEY (fk_id_observation_rejet) REFERENCES signalement_observation_rejet(id_observation_rejet);


--
-- Name: observation_rejet_signalement_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_observation_rejet_signalement
    ADD CONSTRAINT observation_rejet_signalement_fk FOREIGN KEY (fk_id_signalement) REFERENCES signalement_signalement(id_signalement) ON DELETE CASCADE;


--
-- Name: signalement_dashboard_state_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_dashboard_user_preferences
    ADD CONSTRAINT signalement_dashboard_state_fk FOREIGN KEY (fk_id_state) REFERENCES workflow_state(id_state);


--
-- Name: signalement_dashboard_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_dashboard_user_preferences
    ADD CONSTRAINT signalement_dashboard_user_fk FOREIGN KEY (fk_id_user) REFERENCES core_admin_user(id_user) ON DELETE CASCADE;


--
-- Name: signalement_workflow_notification_user_config_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_workflow_notification_user_config
    ADD CONSTRAINT signalement_workflow_notification_user_config_fkey FOREIGN KEY (id_message) REFERENCES signalement_message_creation(id_message);


--
-- Name: signalement_workflow_notifuser_multi_contents_config_message_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_workflow_notifuser_multi_contents_task
    ADD CONSTRAINT signalement_workflow_notifuser_multi_contents_config_message_fk FOREIGN KEY (id_message) REFERENCES signalement_workflow_notifuser_multi_contents_config(id_message);


--
-- Name: suivi_signalement_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres_app
--

ALTER TABLE ONLY signalement_suivi
    ADD CONSTRAINT suivi_signalement_fk FOREIGN KEY (fk_id_signalement) REFERENCES signalement_signalement(id_signalement) ON DELETE CASCADE;


--
-- Name: v_signalement_type_signalement_with_parents_links; Type: MATERIALIZED VIEW DATA; Schema: public; Owner: postgres_app
--

REFRESH MATERIALIZED VIEW v_signalement_type_signalement_with_parents_links;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres_app
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres_app;
GRANT ALL ON SCHEMA public TO postgres_app;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

