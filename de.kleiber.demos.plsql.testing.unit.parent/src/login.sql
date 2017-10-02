-- whenever sqlerror exit sql.sqlcode
whenever sqlerror exit failure rollback
whenever oserror  exit failure rollback
set serveroutput on size unlimited
PROMPT init via login script
set timing on