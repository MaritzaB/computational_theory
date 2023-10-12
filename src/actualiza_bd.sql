
-- ACTUALIZACION DE BASE DE DATOS ORIGINAL
-------------------------------------------------------
-- 01 ACTUALIZA TABLA ORIGINAL CON CATALOGO DE MUNICIPIOS

alter table denue_inegi_09_ drop column municipio;

-- Sustituye el valor con los datos de la nueva tabla
update denue_inegi_09_ di  
	set clave_municipio = m.id_municipio
	from municipios m
	where di.clave_municipio = m.municipio;
	
-- Cambia el tipo de datos de esa columna
alter table denue_inegi_09_ alter column clave_municipio type int using clave_municipio::int;

-------------------------------------------------------
-- 02 ACTUALIZA TABLA ORIGINAL CON CATALOGO DE ACTIVIDADES

alter table denue_inegi_09_ drop column nombre_actividad;

-- Sustituye el valor con los datos de la nueva tabla
update denue_inegi_09_ di 
	set codigo_actividad = a.id_actividad 
	from actividades a
	where cast(di.codigo_actividad as integer) = a.id_actividad;
	
-- Cambia el tipo de datos de esa columna
alter table denue_inegi_09_ alter column codigo_actividad type int using codigo_actividad::int;

-------------------------------------------------------
-- 03 ACTUALIZA TABLA ORIGINAL CON CATALOGO DE VIALIDADES

update denue_inegi_09_ di 
	set 
		tipo_vialidad = v.id_vialidad
	from tipos_vialidades v
	where  
		di.tipo_vialidad  = v.tipo_vialidad;
	
update denue_inegi_09_ di 
	set 
		tipo_v_e_1 = v.id_vialidad
	from tipos_vialidades v
	where  
		di.tipo_v_e_1 = v.tipo_vialidad;
		
update denue_inegi_09_ di 
	set 
		tipo_v_e_2 = v.id_vialidad
	from tipos_vialidades v
	where  
		di.tipo_v_e_2 = v.tipo_vialidad;
		
update denue_inegi_09_ di 
	set 
		tipo_v_e_3 = v.id_vialidad
	from tipos_vialidades v
	where  
		di.tipo_v_e_3 = v.tipo_vialidad;
	
-- Cambia el tipo de datos de esa columna
alter table denue_inegi_09_ alter column tipo_vialidad type int using tipo_vialidad::int;
alter table denue_inegi_09_ alter column tipo_v_e_1 type int using tipo_v_e_1::int;
alter table denue_inegi_09_ alter column tipo_v_e_2 type int using tipo_v_e_2::int;
alter table denue_inegi_09_ alter column tipo_v_e_3 type int using tipo_v_e_3::int;

-------------------------------------------------------
-- 04 ACTUALIZA TABLA ORIGINAL CON CATALOGO DE ASENTAMIENTOS
update denue_inegi_09_ di 
	set 
		tipo_asentamiento  = ta.id_asentamiento 
	from tipos_asentamientos ta
	where 
		ta.tipo_asentamiento = di.tipo_asentamiento;

alter table denue_inegi_09_ alter column tipo_asentamiento type int using tipo_asentamiento::int;

-------------------------------------------------------
-- 05 ACTUALIZA TABLA ORIGINAL CON CATALOGO DE TIPOS CENTROS COMERCIALES

update denue_inegi_09_ di 
	set 
		tipo_centro_comercial  = tcc.id_centros_comerciales
	from tipos_centros_comerciales  tcc
	where 
		tcc.tipo_centro_comercial = di.tipo_centro_comercial;

alter table denue_inegi_09_ alter column tipo_centro_comercial type int using tipo_centro_comercial::int;

-------------------------------------------------------
-- 06 ACTUALIZA TABLA ORIGINAL CON CATALOGO DE CODIGOS POSTALES

update denue_inegi_09_ di 
	set 
		codigo_actividad  = cp.id_codigo_postal
	from codigos_postales cp
	where 
		cp.codigo_postal = di.codigo_postal;

alter table denue_inegi_09_ alter column codigo_postal type int using codigo_postal::int;

-------------------------------------------------------
-- 07 ACTUALIZA TABLA ORIGINAL CON CATALOGO DE DATOS DE CONTACTO
alter table denue_inegi_09_ drop column telefono;
alter table denue_inegi_09_ drop column correo_electronico;
alter table denue_inegi_09_ drop column pagina_web;
