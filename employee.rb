
class Employee
  attr_reader :name, :email, :phone, :salary, :reviews, :review_text

  def initialize(name:, email: "", phone: "", salary: 0, review_text: "")
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @reviews = []
    @review_text = review_text
  end

  def give_review(text)
    @reviews << text
  end
end
