CREATE OR REPLACE PACKAGE test_betwnstr
AS
  -- %suite(Between string function)
  -- %test(Returns substring from start position to end position)
  PROCEDURE basic_usage;
  -- %test(Returns substring when start position is zero)
  PROCEDURE zero_start_position;
END;
/