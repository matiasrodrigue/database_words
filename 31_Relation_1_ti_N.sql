create table Profesion_users(
id_profesion int not null primary key,
nombre_profesion varchar(45),
dni int,
foreign key(dni) references documentos_de_identidad(dni) 
);

create table medico_veterinario(
id_medico_vet int not null primary key,
name_medico_vet varchar(45)
);

alter table profesion_users
add id_medico_vet int;


/*A partir de aqui esta la relacion de 1 a N*/

alter table profesion_users -- altero la tabla
add constraint vet_medico_fk -- Invento un constraint para poder crear la foreign key.. el ADD es de agregar un nuevo campo en este caso una FK
foreign key(id_medico_vet) references medico_veterinario(id_medico_vet); -- informacion de cual y de donde viene la FK