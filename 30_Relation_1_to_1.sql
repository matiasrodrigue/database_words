create table Profesion_users(
id_profesion int not null primary key,
nombre_profesion varchar(45),
dni int,
foreign key(dni) references documentos_de_identidad(dni) 
);

-- Se creo una relacion entre de 1 a 1 entre la tabla Profesion_users y documentos_de_identidad