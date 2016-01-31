#    First ask the user for their birthdate. Make sure to set their response to a variable.
puts "What's your birthday? Enter it in the format DDMMYYYY"
birthdate = gets.split('').map(&:to_i) # convert birthdate to array (with 'split') of integers (with 'map')
#    Then, determine the birth path number inside a method. The method should take the birthdate as an argument. The return value of the method should be the birth path number.
def determine_birth_path_number(birthdate)
  birth_path_number = birthdate.inject(:+)  # .inject(:+) sums up all the elements of an array
  birth_path_number_str = birth_path_number.to_s
  while (birth_path_number_str.length > 1)
    birth_path_number = birth_path_number_str.split('').map(&:to_i)
    birth_path_number = birth_path_number.inject(:+)
    birth_path_number_str = birth_path_number.to_s
  end
  return birth_path_number
end

#    Assign the return value from your first method to a variable. You’ll use this variable in step 4.
var_for_step_4 = determine_birth_path_number(birthdate)
#    Next figure out the correct message. Create another method that determines what message to display. The method should take the birth path number as an argument. The return value of the method should be the message.
def determine_right_message (var_for_step_4)
  case
  when var_for_step_4 == 1
    meaning_message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
  when var_for_step_4 == 2
    meaning_message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
  when var_for_step_4 == 3
    meaning_message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
  when var_for_step_4 == 4
    meaning_message = "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
  when var_for_step_4 == 5
    meaning_message = "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
  when var_for_step_4 == 6
    meaning_message = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
  when var_for_step_4 == 7
    meaning_message = "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
  when var_for_step_4 == 8
    meaning_message = "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
  when var_for_step_4 == 9
    meaning_message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
  end
  return meaning_message
end
#    Assign the return value from your second method to a variable. You’ll use this variable in step 6.
var_for_step_6 = determine_right_message(var_for_step_4)
#    Finally, use puts to show the birth path number and the message (the return value from your second method) to the user.
puts "Your birthpath number is: #{var_for_step_4}. \n#{var_for_step_6}"
