module EmployeeFactory

  # Select employee by primary key
  def get_employee(employee_id)
    plsql.employees.first :employee_id => employee_id
  end

end
