# Employee Reviews

##Intro
Use this program to add employee information (name, email address, phone number, salary), add them to specific departments, and look up their reviews. If employees have positive reviews/deserve a raise (or if they are terrible employees), we use regex to single them out. Salaries can also be raised for an entire department.

###How it's done:
#### *Part One*
This is an exercise in TDD. First, we were asked to make sure that employee information can be created and stored (I thought it an array would serve this purpose), that an employee can be added to a department, and that the total salary per department could be calculated. 

##### Example test:
```ruby
def test_add_employee_to_dept_5
    name = Employee.new(name:"Hermione")
    dept = Department.new("Department of Magical Law Enforcement")
    assert dept.add_employee(name)
    assert_equal [name], dept.employees
  end
  ```
#### *Part Two*
After creating new employees and assigning them to departments, we are now able to raise salaries for entire departments.


#### *Part Three*
We were then asked to assign employee reviews and to use the text to determine whether an employee performed satisfactorily or not, and give raises to *deserving* individuals.

##### Isolating positive/negative words from reviews and counting them (from employee.rb):
```ruby
  def gets_more_money_question
    @positive_words = %r/(success?full?y)|(pleasure)|(happy)|(value?d)|(impressed)|(great)/x
    @negative_words = %r/(interrupt)|(disagreement)|(concerns)|(fewer+projects)|(takes+longer)|(dwell)/x
    words = @reviews.join
    @lets_count_words = words.split.count
    @lets_count_sad_words = words.scan(/#{@negative_words}/).count
    @lets_count_happy_words = words.scan(/#{@positive_words}/).count

    if @lets_count_happy_words > @lets_count_sad_words
      return true
    else false
    end
  end
```
<sub><sup>A note on estimations:
I was wrong. My original estimate of six and a half hours to complete this project was really closer to eight. Live and learn. :bow:</sub></sup>
