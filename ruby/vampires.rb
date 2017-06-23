#What is your name? Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.
puts "How many employees are we processing"
  numb_employees = gets.to_i
 employee = 0
until numb_employees == employee
  employee += 1
puts "What is Your Name"
  user_name = gets.chomp
puts "Hello #{user_name}, How old are you?"
  age = gets.to_i
puts "You are #{age}, What year were you born?"
  birth_year = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic_bread = gets.chomp
puts "Would you like to enroll in the company’s health insurance?"
  health_insurance = gets.chomp
puts "Please list any allergies, when finished type done."
#list allergies, when user is done listing type "Done" loop will end,

  total_allergies = 1
  output = "unknown"
until  total_allergies == 0
  allergies = gets.chomp
  total_allergies += 1
  if allergies == "sunshine"
    output = "probably a vampire"
    total_allergies = 0
  end
  if allergies == "done"
  total_allergies = 0
end
end




if health_insurance == "yes"
    vamp_health_correct = true
else
    vamp_health_correct = false
end

if garlic_bread == "yes"
    vamp_garlic_correct = true
else
    vamp_garlic_correct = false
end
current_year = 2017
actual_age = current_year - birth_year

if actual_age == age
  vamp_actual_age = true
else
  vamp_actual_age = false
end

if output == "unknown"

  if vamp_actual_age && (vamp_garlic_correct || vamp_health_correct)
    #if true and yes(true) and yes (true)
      output = "Probably not a Vampire"
  end

  if
    !vamp_actual_age && (!vamp_garlic_correct || !vamp_health_correct)
    #if age false and no or no
      output = "Probably a Vampire"
  end

  if
    !vamp_actual_age && !vamp_garlic_correct && !vamp_health_correct
    #if age false and no and no
    output = "Almost certainly a Vampire"
  end

  if user_name == "Drake Cula" || user_name ==  "Tu Fang"
    output = "Definitely a Vampire"
  end

  if output == "unknown"
    output = "Results Inconclusive"
  end
end
puts "#{output}"
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."





  #if the age != year of birth Ask again
#We want to find out age, However if Age does NOT equal the birth year, then we ask again.
#Our company cafeteria serves garlic bread. Should we order some for you? Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.
#Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.