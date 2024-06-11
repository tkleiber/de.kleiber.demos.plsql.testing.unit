CREATE OR REPLACE PACKAGE body test_tdd
AS
  PROCEDURE non_existent_object IS
  BEGIN
    ut.fail('not implemented');
  END;
END;
/