-- RENOMBRA COLUMNAS

alter table denue_inegi_09_  rename column nom_estab to nombre_establecimiento;
alter table denue_inegi_09_  rename column raz_social to razon_social;
alter table denue_inegi_09_  rename column codigo_act to codigo_actividad;
alter table denue_inegi_09_  rename column nombre_act to nombre_actividad;
alter table denue_inegi_09_  rename column per_ocu to personas_ocupadas;
alter table denue_inegi_09_  rename column tipo_vial to tipo_vialidad;
alter table denue_inegi_09_  rename column numero_ext to numero_exterior;
alter table denue_inegi_09_  rename column letra_ext to letra_exterior;
alter table denue_inegi_09_  rename column numero_int to numero_interior;
alter table denue_inegi_09_  rename column letra_int to letra_interior;
alter table denue_inegi_09_  rename column tipo_asent to tipo_asentamiento;
alter table denue_inegi_09_  rename column nomb_asent to nombre_asentamiento;
alter table denue_inegi_09_  rename column tipocencom to tipo_centro_comercial;
alter table denue_inegi_09_  rename column nom_cencom to nombre_centro_comercial;
alter table denue_inegi_09_  rename column num_local to numero_local;
alter table denue_inegi_09_  rename column cod_postal to codigo_postal;
alter table denue_inegi_09_  rename column cve_ent to clave_entidad;
alter table denue_inegi_09_  rename column cve_mun to clave_municipio;
alter table denue_inegi_09_  rename column cve_loc to clave_localidad;
alter table denue_inegi_09_  rename column correoelec to correo_electronico;
alter table denue_inegi_09_  rename column www to pagina_web;
alter table denue_inegi_09_  rename column tipounieco to tipo_unidad_economica;
alter table denue_inegi_09_  drop column clave_entidad;
alter table denue_inegi_09_  drop column entidad;
