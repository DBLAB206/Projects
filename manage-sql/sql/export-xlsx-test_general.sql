set colsep ,
set pagesize 0
set trimspool on
set headsep off
set linesize 500
set numw 500

spool D:/test_general.xlsx

select * from general;

spool off

-- Reference
-- https://ajh322.tistory.com/112