create table contactos_2(
num_contacto int primary key,
nombre_contacto varchar(25) default "NN", 
edad_contacto int,
Dia_alta datetime default current_timestamp, -- Si no pongo fecha me trae la fecha del momento en que se creo
check (edad_contacto >= 18) -- restringe que la edad de los contactos sea igual o mayor a 18 años
);