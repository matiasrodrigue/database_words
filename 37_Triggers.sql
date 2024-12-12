-- eventos que ocurren automaticamente ante un evento en una tabla concreta

CREATE TABLE `my_table`.`email_historico` (
  `email_historico_id` INT NOT NULL AUTO_INCREMENT,
  `id_mascota` INT NOT NULL,
  `mail_dueño_mascota` VARCHAR(45) NULL,
  PRIMARY KEY (`email_historico_id`),
  UNIQUE INDEX `email_historico_id_UNIQUE` (`email_historico_id` ASC) VISIBLE);


  --Creacion de tabla para mail historico repo del trigger


delimiter 
create trigger tg_new_email
after update on dueños_de_mascotas
for each row
begin
if old.mail_dueño_mascota <> new.mail_dueño_mascota then
insert into email_historico (id_mascota, mail_dueño_mascota)
value(old.id_mascota, old.mail_dueño_mascota);
end if;
end;
delimiter;


-- remplazo mi mail y guardo el anterior en la nueva tabla