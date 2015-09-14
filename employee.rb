
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
end
