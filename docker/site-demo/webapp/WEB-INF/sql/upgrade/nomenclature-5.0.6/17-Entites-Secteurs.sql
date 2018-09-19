-- *** Nouvelles entités ***
insert into unittree_unit (id_unit,id_parent,label,description) values (1513,0,'BOLLORE','BOLLORE');
insert into unittree_unit (id_unit,id_parent,label,description) values (1514,0,'DAC','DAC');
insert into unittree_unit (id_unit,id_parent,label,description) values (1515,0,'DAE','DAE');
insert into unittree_unit (id_unit,id_parent,label,description) values (1516,0,'DJS','DJS');
insert into unittree_unit (id_unit,id_parent,label,description) values (1517,0,'DPSP','DPSP');
insert into unittree_unit (id_unit,id_parent,label,description) values (1518,0,'PRESTA_COL','PRESTA_COL');
insert into unittree_unit (id_unit,id_parent,label,description) values (1519,0,'SODETREL','SODETREL');
insert into unittree_unit (id_unit,id_parent,label,description) values (1520,0,'PRESTA_WC','PRESTA_WC');


-- *** Renommage des secteur Tout Paris utilisés pour les nouvelles entités ***
update unittree_sector set name='BOLLORE - Tout Paris' where id_sector=99033;
update unittree_sector set name='DAC - Tout Paris' where id_sector=99034;
update unittree_sector set name='DAE - Tout Paris' where id_sector=99035;
update unittree_sector set name='DJS - Tout Paris' where id_sector=99036;
update unittree_sector set name='DPSP - Tout Paris' where id_sector=99037;
update unittree_sector set name='PRESTA_COL - Tout Paris' where id_sector=99038;
update unittree_sector set name='SODETREL - Tout Paris' where id_sector=99039;
update unittree_sector set name='PRESTA_WC - Tout Paris' where id_sector=99040;
update unittree_sector set name='Subdivision horodateur - tout Paris' where id_sector=99032;


-- *** Affectation de secteur Tout Paris aux nouvelles entités ***
insert into unittree_unit_sector (id_unit,id_sector) values (1513,99033);
insert into unittree_unit_sector (id_unit,id_sector) values (1514,99034);
insert into unittree_unit_sector (id_unit,id_sector) values (1515,99035);
insert into unittree_unit_sector (id_unit,id_sector) values (1516,99036);
insert into unittree_unit_sector (id_unit,id_sector) values (1517,99037);
insert into unittree_unit_sector (id_unit,id_sector) values (1518,99038);
insert into unittree_unit_sector (id_unit,id_sector) values (1519,99039);
insert into unittree_unit_sector (id_unit,id_sector) values (1520,99040);

