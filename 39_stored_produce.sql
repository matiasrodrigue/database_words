use my_table; -- Tabla que uso como madre, pero puede varias
use my_table;

-- Un stored procedure es una Query que se utiliza mucho
DELIMITER //
Create procedure Alls_mascotas()
begin
Select * from dueños_de_mascotas;
end;
//
DELIMITER;

-- Para llamar el sp uso call y nombre del mismo

Call Alls_mascotas;

-- Aqui va a haber un caso similar al anterior pero con parametros.

DELIMITER //

CREATE PROCEDURE Alls_id_mascotas(IN id_mascota_name INT)
BEGIN
    SELECT * FROM dueños_de_mascotas WHERE id_mascota = id_mascota_name;
END;

//
DELIMITER ;

Call Alls_id_mascotas(1);

DELIMITER //

CREATE PROCEDURE Alls_name_mascotas(IN alls_mascota_name varchar(25))
BEGIN
    SELECT * FROM dueños_de_mascotas WHERE nombre_mascota = alls_mascota_name;
END;

//
DELIMITER ;

Call Alls_name_mascotas("Cassius");

drop procedure alls_id_mascotas; -- Para borrar el sp



