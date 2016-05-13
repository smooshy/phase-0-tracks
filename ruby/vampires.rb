# General comments
# => Inconsistent use of tabs and spaces. Make sure your editor is set to insert spaces for tabs. Typical tab spacing for ruby is 2 spaces

# Questionaire for new hires
puts "How many new hires will be processed today?"
employees_processed = gets.chomp.to_i

# COMMENT Shouldn't we be starting with 0?
new_hires = 1
while new_hires <= employees_processed

# Gather employee information
	puts "What is your full name?"
		# COMMENT - It's not great practice to overwrite a variable for a different use. Might consider something
		# like the following. Notice the naming of variables is more descriptive. `is_something` as a var indicates
		# you should expect a boolean. `blah_input` is something from user input
		#
		# 	name_input = gets.chomp
		# 	is_vampire = ['Drake Cula', 'Tu Fang'].include?(name_input)
		#   or even...
		#   is_vampire = (name_input == "Drake Cula" || name_input == "Tu Fang")
	  name = gets.chomp

	  if name == "Drake Cula" || name == "Tu Fang"
	  	name = false
	  else
	  	name = true
	  end

	  puts "How old are you?"
	  age = gets.chomp.to_i
	  puts "What year were you born?"
	  birth_year = gets.chomp.to_i

	   if age == (2016 - birth_year)
	    age = true
	  else
	    age = false
	  end

	  puts "We love garlic bread here. Should we order some for you?"
	  garlic = gets.chomp

		# COMMENT - you probably haven't learned regular expressions yet, but an easier way to shorten this is:
		#
		# likes_garlic = (garlic =~ /y(es)?/i) > -1
		# =~ is the 'match' operator and takes a regular expression. Things within the `//` is the pattern. `i` at the end indicates case-insensitive.
	   if garlic == "yes" || garlic == "Yes" || garlic == "y" || garlic == "Y"
	  	garlic = true
	  else
	  	garlic = false
	  end

	  puts "Would you like to enroll in the company's health coverage?"
	  health_insurance = gets.chomp

	  if health_insurance == "yes" || health_insurance == "Yes" || health_insurance == "y" || health_insurance == "Y"
	  	health_insurance = true
	  else
	  	health_insurance = false
	  end


puts "What allergies do you have? Please type 'done' once all allergies are listed."
allergy = gets.chomp

while allergy != "done" && allergy != "sunshine"
	puts "Please list next allergy"
	allergy = gets.chomp
end


# Check employee responses to verify vampire or not.

# COMMENTS
# => No need to check `== false`. You can do `!is_vampire` if it's already boolean. Here, good naming will make it much more readable.
	   if name == false
	      puts "Definitely a vampire"
	   elsif allergy == "sunshine"
		  puts "Probably a vampire"
	  elsif age && (garlic || health_insurance)
	      puts "Probably not a vampire"
	  elsif age == false && (garlic == false || health_insurance == false)
	      puts "Probably a vampire"
	  elsif age == false && garlic == false && health_insurance == false
	      puts "Almost certainly a vampire"
	  else
	      puts "Results inconclusive"
	  end

  new_hires += 1

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end
