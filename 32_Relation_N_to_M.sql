
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

alter table profesion_users -- altero la tabla
add constraint vet_medico_fk -- Invento un constraint para poder crear la foreign key.. el ADD es de agregar un nuevo campo en este caso una FK
foreign key(id_medico_vet) references medico_veterinario(id_medico_vet); -- informacion de cual y de donde viene la FK

create table especialidad_med(
id_especialidad int not null,
nombre_especialidad varchar(45)
);

/*Aqui se se la relacion N a M*/

create table Medico_especialidad(  -- tabla intermedia
id_medico_especialidad int not null primary key,
id_medico_vet int,
id_especialidad int,
foreign key(id_medico_vet) references medico_veterinario(id_medico_vet), -- creacion de FK
foreign key(id_especialidad) references especialidad_med(id_especialidad), -- creacion de FK
unique(id_medico_vet, id_especialidad) -- me aseguro de no se repitan los casos en que existe coincidencia
);