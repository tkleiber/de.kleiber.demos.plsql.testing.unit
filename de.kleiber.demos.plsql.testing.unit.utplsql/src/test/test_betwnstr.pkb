CREATE OR REPLACE PACKAGE body test_betwnstr
AS
  PROCEDURE normal_case IS
  BEGIN
    ut.expect( betwnstr( 'abcdefg', 2, 5 ) ).to_equal('bcde');
  END;
  PROCEDURE zero_start_value IS
  BEGIN
    ut.expect( betwnstr( 'abcdefg', 0, 5 ) ).to_equal('abcde');
  END;
  PROCEDURE way_big_end_value IS
  BEGIN
     ut.expect( betwnstr( 'abcdefg', 5, 500 ) ).to_equal('efg');
  END;
  PROCEDURE null_string IS
  BEGIN
     ut.expect( betwnstr( NULL, 5, 500 ) ).to_equal(NULL);
  END;
END;
/