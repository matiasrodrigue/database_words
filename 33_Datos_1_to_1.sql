use my_table;

Select * from dueños_de_mascotas;

insert into dueños_de_mascotas(id_mascota, nombre_mascota, color_mascota)
values (1, "Cassius", "Negro"),
 (2, "Milo", "Marron"),
 (3, "Pancho", "Negro y Blanco");

Select * from documentos_de_identidad;

insert into documentos_de_identidad(dni, nome, sobrenome)
values (34417196, "Matias", "Rodriguez"),
 (35564789, "Carlitos", "Zurdo"),
 (20456321, "Maria", "Zabala");
 
 
 
 update documentos_de_identidad set id_mascota = 3 where dni = 20456321;
  update documentos_de_identidad set id_mascota = 2 where dni = 35564789;
   update documentos_de_identidad set id_mascota = 1 where dni = 34417196;
   
   alter table documentos_de_identidad -- altero la tabla
add constraint id_mascota_fk -- Invento un constraint para poder crear la foreign key.. el ADD es de agregar un nuevo campo en este caso una FK
foreign key(id_mascota) references dueños_de_mascotas(id_mascota); -- informacion de cual y de donde viene la FK