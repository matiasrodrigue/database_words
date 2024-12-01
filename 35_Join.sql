use my_table;

/*inner join*/
use my_table;

select * from dueños_de_mascotas
inner join documentos_de_identidad -- Aqui traigo todos los datos de las tablas "dueños_de_mascotas" y "documentos_de_identidad"
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

-- Test

