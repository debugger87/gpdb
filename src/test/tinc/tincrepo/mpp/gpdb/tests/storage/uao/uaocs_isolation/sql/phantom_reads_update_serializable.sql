-- @Description Tests the basic phantom read behavior of GPDB w.r.t to updates using
-- the serializable isolation level.
-- 

1: BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
1: SELECT * FROM ao WHERE b BETWEEN 20 AND 30 ORDER BY a;
2: BEGIN;
2: UPDATE ao SET b = -1 WHERE a = 25;
2: COMMIT;
1: SELECT * FROM ao WHERE b BETWEEN 20 AND 30 ORDER BY a;
1: COMMIT;