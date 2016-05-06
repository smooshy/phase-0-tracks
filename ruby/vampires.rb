# Questionaire for new hires

puts "What is your full name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "We love garlic bread here. Should we order some for you?"
garlic = gets.chomp

puts "Would you like to enroll in the company's health coverage?"
health_insurance = gets.chomp


if age == (2016 - birth_year)
  age = true
else
  age = false
end

if health_insurance == "yes" || health_insurance == "Yes" || health_insurance == "y" || health_insurance == "Y"
	health_insurance = "y"
else
	health_insurance = "n"
end
