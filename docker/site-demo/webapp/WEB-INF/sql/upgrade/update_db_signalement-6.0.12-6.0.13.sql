ALTER TABLE core_page add COLUMN display_date_update smallint default 0 NOT NULL;
ALTER TABLE core_page add COLUMN is_manual_date_update smallint default 0 NOT NULL;

CREATE SEQUENCE core_mail_queue_id_mail_queue_seq START WITH 1;

DO $$
DECLARE 
	max_core_mail_queue_id_mail_queue integer;
BEGIN
	SELECT MAX(id_mail_queue)+1 INTO max_core_mail_queue_id_mail_queue FROM core_mail_queue; 
	RAISE NOTICE 'Next  %', max_core_mail_queue_id_mail_queue;
	
	EXECUTE 'ALTER SEQUENCE core_mail_queue_id_mail_queue_seq RESTART WITH ' || max_core_mail_queue_id_mail_queue;
	ALTER TABLE core_mail_queue ALTER COLUMN id_mail_queue SET DEFAULT nextval('core_mail_queue_id_mail_queue_seq');

END $$;