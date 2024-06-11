create or replace
PROCEDURE award_bonus (
  emp_id NUMBER, sales_amt NUMBER) AS
  commission    REAL;
  comm_missing  EXCEPTION;
  PRAGMA EXCEPTION_INIT(comm_missing, -20001);
BEGIN
  SELECT commission_pct INTO commission
    FROM employees
      WHERE employee_id = emp_id;
 
  IF commission IS NULL THEN
    RAISE comm_missing;
  ELSE
    UPDATE employees
      SET salary = salary + sales_amt*commission
        WHERE employee_id = emp_id;
  END IF;
END award_bonus;
/