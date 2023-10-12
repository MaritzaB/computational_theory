-- 03 CATALOGO DE VIALIDADES

create table if not exists tipos_vialidades(
	id_vialidad serial primary key,
	tipo_vialidad varchar(25) not null
);

insert into tipos_vialidades(tipo_vialidad)
select
	distinct tipo_vialidad 
from denue_inegi_09_ di
where tipo_vialidad is not null 
order by tipo_vialidad;
