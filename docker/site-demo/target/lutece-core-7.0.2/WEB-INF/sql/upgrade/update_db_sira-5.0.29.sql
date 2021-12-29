
-- DMR
DROP INDEX IF EXISTS idx_numero_signalement;
DROP TABLE IF EXISTS signalement_numero_signalement;
DROP SEQUENCE IF EXISTS seq_signalement_numero_signalement;

CREATE SEQUENCE seq_signalement_numero_signalement START WITH 1;

CREATE TABLE signalement_numero_signalement(
	id_signalement_numero_signalement BIGINT DEFAULT nextval('seq_signalement_numero_signalement'),
	mois VARCHAR(1),
	annee INTEGER,
	numero BIGINT,
	CONSTRAINT signalement_numero_signalement_pkey PRIMARY KEY (id_signalement_numero_signalement)
);

CREATE UNIQUE INDEX idx_numero_signalement ON signalement_numero_signalement (mois, annee);

-- Insert current month year lines
DO $$
DECLARE 
	-- Arrays starts at 1
	month_array VARCHAR(1) ARRAY := ARRAY['A','B','C','D','E','F','G','H','I','J','K','L'];

	debug_msg VARCHAR(255);
	
	int_current_month INTEGER;
	current_month VARCHAR(1);
	current_year INTEGER;
	
	today_date DATE := current_date;
	
	next_numero BIGINT;
BEGIN
	SELECT EXTRACT(MONTH FROM today_date) INTO int_current_month;
	RAISE NOTICE 'Current month %', int_current_month;

	current_month = month_array[(int_current_month)];
	RAISE NOTICE 'Current month char %', current_month;
	
	SELECT EXTRACT(YEAR FROM today_date) INTO current_year;
	RAISE NOTICE 'Current year %', current_year;

	SELECT (COALESCE(MAX(numero),0) + 1) INTO next_numero FROM signalement_signalement WHERE annee = current_year AND mois = current_month;
	debug_msg = 'Next value for Month ' || current_month || ' Year ' || current_year || ' : ' || next_numero;
	RAISE NOTICE '%', debug_msg; 
	INSERT INTO signalement_numero_signalement (mois,annee,numero) VALUES (current_month,current_year,next_numero);	
END $$;