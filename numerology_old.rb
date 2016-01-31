# Ask for birthdate in format DDMMYYYY
puts "What's your birthday? Enter it in the format DDMMYYYY"

# Convert user input (which is a string) to an array with each number being a different element (that's what the "" is for)
@birthdate = gets.split "" # @ creates an instance variable which can be used inside the following method

def add_numbers_and_to_string
  @birth_path_number = @birthdate[0].to_i + @birthdate[1].to_i + @birthdate[2].to_i + @birthdate[3].to_i + @birthdate[4].to_i + @birthdate[5].to_i
  @birth_path_number = @birth_path_number.to_s
  return @birth_path_number
end

add_numbers_and_to_string
# Add up the elements of the birthdate array
# Convert birth_path_number back to string
#birth_path_number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i
#birth_path_number = birth_path_number.to_s
add_numbers_and_to_string

# Split string to make array
@birth_path_number.split ""
# Add up elements of birth_path_number array
@birth_path_number = @birth_path_number[0].to_i + @birth_path_number[1].to_i + @birth_path_number[2].to_i + @birth_path_number[3].to_i + @birth_path_number[4].to_i + @birth_path_number[5].to_i

# Check if birth_path_number is still greater than 10.
# If it is, reduce further.
if (@birth_path_number > 9)
  @birth_path_number = birth_path_number.to_s
  @birth_path_number.split ""
  @birth_path_number = @birth_path_number[0].to_i + @birth_path_number[1].to_i
else

# Assign value to meaning_message depending on number
case
when @birth_path_number == 1
  meaning_message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when @birth_path_number == 2
  meaning_message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when @birth_path_number == 3
  meaning_message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when @birth_path_number == 4
  meaning_message = "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when @birth_path_number == 5
  meaning_message = "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when @birth_path_number == 6
  meaning_message = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when @birth_path_number == 7
  meaning_message = "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when @birth_path_number == 8
  meaning_message = "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when @birth_path_number == 9
  meaning_message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
end

puts "Your birthpath number is: #{@birth_path_number}. \n#{meaning_message}"

end
