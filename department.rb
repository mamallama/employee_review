
class Department
 attr_reader :dept, :employees
  def initialize (dept)
    @dept = dept
    @employees = [] #need array to grab info from.
  end

  def add_employee(name)
    @employees << name
  end

  def employees_in_dept
    emp.map{|emp| emp.name }
  end

  def salaries_in_dept
  @employees.reduce(0){|sum, emp| emp.salary + sum}
  end
end
