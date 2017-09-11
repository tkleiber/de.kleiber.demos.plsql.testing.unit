-- whenever sqlerror exit sql.sqlcode
whenever sqlerror exit failure rollback
whenever oserror  exit failure rollback
set serveroutput on size unlimited

PROMPT User &1 löschen
drop user &1 cascade;

exit 0;