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
end
