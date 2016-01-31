numbers_1_to_100 = (1..100).to_a

numbers_1_to_100.map! do |number|
  if number % 5 == 0 && number % 3 == 0 # make compound statement: done :)
    number = "FizzBuzz"
  elsif number % 3 == 0
    number = "Fizz"
  elsif number % 5 == 0
    number = "Buzz"   # stupid copy-and-past error: fixed 
  else
    number = number
  end
end

puts numbers_1_to_100
