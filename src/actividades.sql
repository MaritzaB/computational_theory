-- 02 CATALOGO DE ACTIVIDADES

create table if not exists actividades(
	id_actividad integer not null primary key,
	nombre_actividad varchar(250) not null
);

insert into actividades(id_actividad, nombre_actividad)
select 
	distinct 
		cast(codigo_actividad as integer),
		nombre_actividad 
from denue_inegi_09_ di 
order by codigo_actividad;
