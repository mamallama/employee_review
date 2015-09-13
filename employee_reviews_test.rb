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
end
