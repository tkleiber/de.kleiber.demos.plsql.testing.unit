-- whenever sqlerror exit sql.sqlcode
whenever sqlerror exit failure rollback
whenever oserror  exit failure rollback
set serveroutput on size unlimited

PROMPT Branch: &1

BEGIN
  ut.run();
END;
/

exit 0;