puts "Give me a number please!"
number = gets.to_i

def always_three(number)
  ((number +5)*2-4)/2-number
end

puts "Even after refactoring the result is always " + always_three(number).to_s
