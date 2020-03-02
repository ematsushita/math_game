class Question
  attr_accessor :number1, :number2, :operator, :answer, :question

  def initialize
    @number1 = number1
    @number2 = number2
    @operator = operator
    @answer = answer
    @question = question
  end


  def question
    operators = ["plus", "minus"]
    self.number1 = rand(1...20)
    self.number2 = rand(1...20)
    self.operator = operators[rand(0...1)]
    self.answer  = operator == "plus" ? number1 + number2 : number1 - number2

    self.question = "What does #{number1} #{operator} #{number2} equal?"
  end

end



