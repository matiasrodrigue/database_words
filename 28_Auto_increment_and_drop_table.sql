
create table contactos_3(
num_contacto int primary key auto_increment, -- crece incrementalmente el num_contacto aunque deberia ser ID
nombre_contacto varchar(25),
edad_contacto int,
check (edad_contacto >= 18) -- restringe que la edad de los contactos sea igual o mayor a 18 años
);

drop table contactos_3; -- Borro la tabla