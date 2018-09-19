CREATE OR REPLACE FUNCTION unitCalculProfondeur() RETURNS void AS
$BODY$
DECLARE
ligne record;
maligne record;
prof integer;
BEGIN
prof=0; 
FOR ligne IN  SELECT * from export_unittree_unit
    Loop
        prof=0;
        if (ligne.id_parent = -1) then 
            update export_unittree_unit set profondeur=prof where id_unit= ligne.id_unit;
        end if;
        maligne := ligne;
        
        while (maligne.id_parent is not null and maligne.id_parent != -1) loop
            
            prof = prof+1;
            
            SELECT * INTO maligne
            FROM export_unittree_unit 
            WHERE id_unit=maligne.id_parent; 
        end loop;
        
        
        if ( ligne.id_parent != -1) then 
        update export_unittree_unit set profondeur=prof where id_unit= ligne.id_unit;
        end if;
    END LOOP;
END
$BODY$
 LANGUAGE plpgsql VOLATILE
  COST 100;

CREATE OR REPLACE FUNCTION signalementCalculProfondeur() RETURNS void AS
$BODY$
DECLARE
ligne record;
maligne record;
prof integer;
BEGIN
prof=0; 
FOR ligne IN  SELECT * from export_signalement_type_signalement
    Loop
        prof=0;
        if (ligne.fk_id_type_signalement is  null) then 
            update export_signalement_type_signalement set profondeur=prof where id_type_signalement= ligne.id_type_signalement;
        end if; 
        
        maligne := ligne;
    
        while ( maligne.fk_id_type_signalement is not null) loop
            
            prof = prof+1;
            
            SELECT * INTO maligne
            FROM export_signalement_type_signalement 
            WHERE id_type_signalement=maligne.fk_id_type_signalement; 
        end loop;
        
        
        if ( ligne.fk_id_type_signalement is not null) then 
        update export_signalement_type_signalement set profondeur=prof where id_type_signalement= ligne.id_type_signalement;
        end if;
    END LOOP;
END
$BODY$
 LANGUAGE plpgsql VOLATILE
  COST 100;
