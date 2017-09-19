CREATE OR REPLACE PACKAGE body test_betwnstr
AS
  PROCEDURE basic_usage
  IS
  BEGIN
    ut.expect( betwnstr( '1234567', 2, 5 ) ).to_equal('2345');
  END;
  PROCEDURE zero_start_position
  IS
  BEGIN
    ut.expect( betwnstr( '1234567', 0, 5 ) ).to_equal('12345');
  END;
END;
/