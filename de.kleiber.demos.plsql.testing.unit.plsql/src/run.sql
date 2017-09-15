PROMPT run tests for schema &1
BEGIN
  ut.run(ut_xunit_reporter());
END;
/
exit 0;