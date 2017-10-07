CREATE OR REPLACE PACKAGE test_betwnstr
AS
  -- %suite(Between string)
  -- %test(should be correct in normal case)
  PROCEDURE normal_case;
  -- %test(should be correct with zero start value)
  PROCEDURE zero_start_value;
  -- %test(should be correct with way big end value)
  PROCEDURE way_big_end_value;
  -- %test(should be correct with NULL string)
  PROCEDURE null_string;
END;
/