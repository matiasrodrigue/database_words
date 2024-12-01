use my_table;

/*inner join*/
use my_table;

select * from dueños_de_mascotas
inner join documentos_de_identidad -- Aqui traigo todos los datos de las tablas "dueños_de_mascotas" y "documentos_de_identidad" en comun
on dueños_de_mascotas.id_mascota = documentos_de_identidad.id_mascota -- juntas la informacion de dos tablas "dueños_de_mascotas" y "documentos_de_identidad"
inner join medico_veterinario
on medico_veterinario.dni= documentos_de_identidad.dni;

-- Este ejemplo solo trae nombre de mascota y nombre de dueño de mascota


select dueños_de_mascotas.nombre_mascota, documentos_de_identidad.nome from dueños_de_mascotas
inner join documentos_de_identidad -- Aqui traigo todos los datos de las tablas "dueños_de_mascotas" y "documentos_de_identidad"
on dueños_de_mascotas.id_mascota = documentos_de_identidad.id_mascota -- juntas la informacion de dos tablas "dueños_de_mascotas" y "documentos_de_identidad"
inner join medico_veterinario
on medico_veterinario.dni= documentos_de_identidad.dni;


/*left join*/

select * from dueños_de_mascotas
left join documentos_de_identidad -- Aqui traigo todos los datos de las tablas "dueños_de_mascotas" y los que no esten en comun en "documentos_de_identidad"  traigo el campo como null
on dueños_de_mascotas.id_mascota = documentos_de_identidad.id_mascota; -- juntas la informacion de dos tablas "dueños_de_mascotas" y "documentos_de_identidad"

/*Righ join*/

select * from dueños_de_mascotas
right join documentos_de_identidad -- Aqui traigo todos los datos de las tablas "dueños_de_mascotas" y los que no esten en comun en "documentos_de_identidad" en comun, priorizando la tabla de la derecha
on dueños_de_mascotas.id_mascota = documentos_de_identidad.id_mascota; -- juntas la informacion de dos tablas "dueños_de_mascotas" y "documentos_de_identidad"

/*UNION*/

select dueños_de_mascotas.id_mascota AS D_dueños_id, documentos_de_identidad.id_mascota AS D_documentos_id
from dueños_de_mascotas
left join  documentos_de_identidad
on dueños_de_mascotas.id_mascota = documentos_de_identidad.id_mascota
UNION
select dueños_de_mascotas.id_mascota AS D_dueños_id, documentos_de_identidad.id_mascota AS D_documentos_id
from dueños_de_mascotas
right join documentos_de_identidad
on dueños_de_mascotas.id_mascota = documentos_de_identidad.id_mascota;

-- Se realiza un join de ambas tablas.