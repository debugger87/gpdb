-- start_ignore
SET gp_create_table_random_default_distribution=off;
-- end_ignore
--
-- CREATE GROUP
--
CREATE GROUP resync_group1 WITH SUPERUSER CREATEDB  INHERIT LOGIN CONNECTION LIMIT  1 ENCRYPTED PASSWORD 'passwd';
CREATE GROUP resync_group2 WITH SUPERUSER CREATEDB  INHERIT LOGIN CONNECTION LIMIT  1 ENCRYPTED PASSWORD 'passwd';
CREATE GROUP resync_group3 WITH SUPERUSER CREATEDB  INHERIT LOGIN CONNECTION LIMIT  1 ENCRYPTED PASSWORD 'passwd';
--
--
--DROP GROUP
--
--
DROP GROUP sync1_group6;
DROP GROUP ck_sync1_group5;
DROP GROUP ct_group3;
DROP GROUP resync_group1;
--
