-- whenever sqlerror exit sql.sqlcode
whenever sqlerror exit failure rollback
whenever oserror  exit failure rollback
set serveroutput on size unlimited

PROMPT User &1 anlegen
create user &1 identified by &2 quota unlimited on users;
grant connect, resource to &1;

exit 0;