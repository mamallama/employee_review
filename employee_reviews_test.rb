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
  assert_equal "Marketing", Department.new("Marketing").dept
  end

  def test_create_employee #going one by one, testing for required info
    employee = Employee.new(name: "Abbey", email: "ab@mail.com", phone: "2345676", salary: 38000)
    assert_equal "Abbey", employee.name
    assert_equal "ab@mail.com", employee.email
    assert_equal "2345676", employee.phone
    assert_equal 38000, employee.salary
  end
end
