
-- Aqui creo una vista donde me muestre las mascotas cuyo id es >= 1; tambien podria hacerse con edades o cualquier consulta que sea habitual

create view v_nombre_de_macotas as
select nombre_mascota
from dueños_de_mascotas
where id_mascota >= 2;

Select * from v_nombre_de_macotas;

-- Para eliminar una view es 

Drop v_nombre_de_macotas;