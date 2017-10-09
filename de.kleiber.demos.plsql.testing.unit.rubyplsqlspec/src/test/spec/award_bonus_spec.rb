describe "Award bonus" do
  include EmployeeFactory

  [ [1001,  0.2,   8400,    5000,   9400],
    [1002,  0.25,  6000,    2000,   6500],
    [1003,  0.3,   5000,    4000,   6200]
  ].each do |employee_id, commission_pct, salary, sales_amt, result|
    it "should calculate base salary #{salary.inspect} + sales amount #{sales_amt} * commission percentage #{commission_pct} = salary #{result.inspect}" do
      plsql.award_bonus(employee_id, sales_amt)
      expect(get_employee(employee_id)[:salary]).to eq result
    end
  end

  it "should raise ORA-20001 exception if commission percentage is missing" do
    employee_id, commission_pct, salary, sales_amt = 1004, NULL, 10000, 200
    expect {
      plsql.award_bonus(employee_id, sales_amt)
    }.to raise_error(/ORA-20001/)
  end

end

