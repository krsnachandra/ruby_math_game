class Question

  attr_accessor :ans

  def initialize
    num1 = 1 + rand(20)
    num2 = 1 + rand(20)
    @ans = num1 + num2
    puts "What is #{num1} + #{num2}?"
  end
end