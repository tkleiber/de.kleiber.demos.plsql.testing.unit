PROMPT run tests for schema &1
BEGIN
  ut.run('&1');
END;
/
exit 0;