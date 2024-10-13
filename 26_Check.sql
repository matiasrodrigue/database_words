create table contactos(
num_contacto int primary key,
nombre_contacto varchar(25),
edad_contacto int,
check (edad_contacto >= 18) -- restringe que la edad de los contactos sea igual o mayor a 18 años
);