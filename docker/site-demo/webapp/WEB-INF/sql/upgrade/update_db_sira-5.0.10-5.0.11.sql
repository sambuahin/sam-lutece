
delete from core_datastore where entity_key in ('portal.site.site_property.logo_url',
                                                'sitelabels.site_property.footer.paris',
                                                'sitelabels.site_property.footer.mentions.legales',
                                                'sitelabels.site_property.footer.contact');
INSERT INTO core_datastore VALUES ('portal.site.site_property.logo_url', 'images/logo-header-icon.png');
INSERT INTO core_datastore(entity_key,entity_value) VALUES ('sitelabels.site_property.footer.paris', 'Mairie de paris');
INSERT INTO core_datastore(entity_key,entity_value) VALUES ('sitelabels.site_property.footer.mentions.legales', 'Mensions legales');
INSERT INTO core_datastore(entity_key,entity_value) VALUES ('sitelabels.site_property.footer.contact', 'Contact');

delete from core_dashboard where dashboard_name = 'DISCONNECTION_SCRIPT';

drop TABLE if EXISTS mylutece_attribute;
create table mylutece_attribute
(
  id_attribute integer default 0 not null
    constraint mylutece_attribute_pkey
    primary key,
  type_class_name varchar(255) default NULL::character varying,
  title text,
  help_message text,
  is_mandatory smallint default 0,
  is_shown_in_search smallint default 0,
  attribute_position integer default 0,
  plugin_name varchar(255) default NULL::character varying,
  anonymize smallint
)
;

drop TABLE if EXISTS mylutece_attribute_field;
create table mylutece_attribute_field
(
  id_field integer default 0 not null
    constraint mylutece_attribute_field_pkey
    primary key,
  id_attribute integer,
  title varchar(255) default NULL::character varying,
  default_value text,
  is_default_value smallint default 0,
  height integer,
  width integer,
  max_size_enter integer,
  is_multiple smallint default 0,
  field_position integer
)
;

drop TABLE if EXISTS mylutece_user_field;
create table mylutece_user_field
(
  id_user_field integer default 0 not null
    constraint mylutece_user_field_pkey
    primary key,
  id_user integer,
  id_attribute integer,
  id_field integer,
  user_field_value text
)
;

drop TABLE if EXISTS mylutece_user_anonymize_field;
create table mylutece_user_anonymize_field
(
  field_name varchar(100) not null
    constraint mylutece_user_anonymize_field_pkey
    primary key,
  anonymize smallint not null
)
;

drop TABLE if EXISTS mylutece_connections_log;
create table mylutece_connections_log
(
  ip_address varchar(63) default NULL::character varying,
  date_login timestamp default now() not null,
  login_status integer
)
;

