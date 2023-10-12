-- 04 TIPOS DE ASENTAMIENTOS

create table if not exists tipos_asentamientos(
	id_asentamiento serial primary key,
	tipo_asentamiento varchar(25) not null
);

insert into tipos_asentamientos(tipo_asentamiento)
select
	distinct tipo_asentamiento 
from denue_inegi_09_ di
where tipo_asentamiento  is not null 
order by tipo_asentamiento;
