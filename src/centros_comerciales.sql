-- 05 TIPOS DE CENTROS COMERCIALES

create table if not exists tipos_centros_comerciales(
	id_centros_comerciales serial primary key,
	tipo_centro_comercial varchar(50) not null
);

insert into tipos_centros_comerciales(tipo_centro_comercial)
select
	distinct tipo_centro_comercial 
from denue_inegi_09_ di
where tipo_centro_comercial is not null 
order by tipo_centro_comercial ;