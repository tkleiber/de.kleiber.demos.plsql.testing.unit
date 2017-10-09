CREATE OR REPLACE PACKAGE BODY                                                                                                                                     test_award_bonus
AS
  FUNCTION get_salary (vId IN employees.employee_id%TYPE) 
  RETURN employees.salary%TYPE IS
    vSalary employees.salary%TYPE;
  BEGIN
    SELECT salary 
    INTO vSalary
    FROM employees
    WHERE employee_id = vId;
    RETURN vSalary;
  END;

  PROCEDURE employee_id_1001 IS
  BEGIN
    award_bonus(1001, 5000);
    ut.expect( get_salary( 1001 ) ).to_equal(9400);
  END;

  PROCEDURE employee_id_1002 IS
  BEGIN
    award_bonus(1002, 2000);
    ut.expect( get_salary( 1002 ) ).to_equal(6500);
  END;

  PROCEDURE employee_id_1003 IS
  BEGIN
    award_bonus(1003, 4000);
    ut.expect( get_salary( 1003 ) ).to_equal(6200);
  END;

  PROCEDURE employee_id_1004 IS   
    vSqlcode integer :=0;
  BEGIN
    award_bonus(1004, 10000);
    EXCEPTION 
      WHEN OTHERS THEN 
        vSqlcode := SQLCODE;
         ut.expect( vSqlcode ).to_equal(-20001);
  END;

END;
/