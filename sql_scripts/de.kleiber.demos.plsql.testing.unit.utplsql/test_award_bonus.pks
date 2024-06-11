CREATE OR REPLACE PACKAGE test_award_bonus
AS
  -- %suite(Award bonus)
  -- %test(should calculate base salary 8400 + sales amount 5000 * commission percentage 0.2 = salary 9400)
  PROCEDURE employee_id_1001;
  -- %test(should calculate base salary 6000 + sales amount 2000 * commission percentage 0.25 = salary 6500)
  PROCEDURE employee_id_1002;
  -- %test(should calculate base salary 5000 + sales amount 4000 * commission percentage 0.3 = salary 6200)
  PROCEDURE employee_id_1003;
  -- %test(should raise ORA-20001 exception if commission percentage is missing)
  PROCEDURE employee_id_1004;
END;
/