CREATE OR REPLACE PACKAGE test_tdd
AS
  -- %suite(test driven development)
  -- %test(should test non existent object)
  -- %disabled
  PROCEDURE non_existent_object;
END;
/