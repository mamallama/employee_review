require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require './employee_reviews'
require './department'

class EmployeeReviewsTest < Minitest::Test
  def test_classes_exist
    assert Employee
    assert Department
  end

  def test_dept_creation
    assert Department.new("New Department")
  end

  def test_department_name
  assert_equal "Auror Office", Department.new("Auror Office").dept #Decided to go with HP theme
  end

  def test_create_employee #going one by one, testing for required info
    employee = Employee.new(name: "Harry", email: "hp@mail.com", phone: "2345676", salary: 38000)
    assert_equal "Harry", employee.name
    assert_equal "hp@mail.com", employee.email
    assert_equal "2345676", employee.phone
    assert_equal 38000, employee.salary
  end

  def test_add_employee_to_dept
    name = Employee.new(name:"Hermione")
    dept = Department.new("Department of Magical Law Enforcement")
    assert dept.add_employee(name)
    assert_equal [name], dept.employees
  end

  def test_get_employee_name
    employee = Employee.new(name: "Ron")
    assert_equal "Ron", employee.name
  end

  def test_get_employee_salary
    employee = Employee.new(name: "Neville", salary: 38000)
    assert_equal 38000, employee.salary
  end

  def test_get_department_name
    dept = Department.new("Animagus Registry")
    assert_equal "Animagus Registry", dept.dept
  end

  def test_get_total_salary_in_dept
    dept = Department.new("Department of Magical Education") #new dept, employees w/salaries
    salary = Employee.new(name: "Luna", salary: 38000)
    assert dept.add_employee(salary)
    salary = Employee.new(name: "Draco", salary: 38000)
    assert dept.add_employee(salary)
    assert_equal 76000, dept.salaries_in_dept #make sure things add up, that block for sum is correct
  end

  # def test_add_employee_review_text
  #
  # end

  # def test_mark_employee_satisfatory_not
  # end
  #
  # def test_give_raise_to_individual
  # end
  #
  # def test_give_raise_to_dept_employees
  # end
end
