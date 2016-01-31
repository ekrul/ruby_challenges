love_question = "I love you so much! Do you still love me too? Yes or no?"
puts love_question
answer = gets.chomp.downcase

if (answer != "yes" || answer != "no")
  puts "Hm? Seems like I need to repeat my question. Do you still love me too? Yes or no?"
  answer = gets.chomp.downcase
else
end

while (answer == "yes")
  puts love_question
  answer = gets.chomp.downcase
end

while (answer == "no")
  puts "Oh! You just broke my heart!\n" + ("I'm going to cry all night!\n" * 10) +"Okay. I'm done now."
  answer = gets.chomp.downcase
end
