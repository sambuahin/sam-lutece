update unittree_sector set name = 'La Poste - Tout Paris'
from unittree_unit u, unittree_unit_sector us
where u.label = 'La Poste'
and us.id_unit = u.id_unit
and us.id_sector = unittree_sector.id_sector;