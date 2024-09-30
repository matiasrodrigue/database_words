Select * from actor where not actor_id = 1; -- Trae todos los id menos el 1 utilizando NOR

Select * from actor where not actor_id = 1 and first_name = "JOHNNY"; -- Aqui sume la condicion AND a la formula anterior

Select * from actor where not actor_id = 1 or first_name = "PENELOPE"; -- Aqui cumple o una condicion o la otra 