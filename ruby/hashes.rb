# Ask designer for client name
#   -save value to key in hash
# Repeat previous steps for clients age, nmuber of children, home square footage and decor theme
# Print client information for review
# Prompt designer if changes are needed
# if changes are needed
#   - allow designer to re-enter value for a specific question and print updated client information.
#   - else end program

# Initialize hash
client_information = {}

# Questions to ascertain client information
puts "What is the client's full name?"
client_information[:name] = gets.chomp

puts "What is your age?"
client_information[:age] = gets.chomp.to_i

puts "How many children do you have?"
client_information[:children] = gets.chomp.to_i

puts "What is the square footage of your home?"
client_information[:square_ft] = gets.chomp.to_i

puts "Do you like modern decor?"
modern = gets.chomp

puts "Do you like rustic decor?"
rustic = gets.chomp

puts "Please provide the name of a secondary contact."
client_information[:second_contact] = gets.chomp

puts "What is your secondary contacts phone number?"
client_information[:second_contact_phone] = gets.chomp

# Conditionals for decor Questions
if modern == "yes" || modern == "y" || modern == "Yes" || modern == "Y"
  client_information[:modern] = true
else
  client_information[:modern] =  false
end

if rustic == "yes" || rustic == "y" || rustic == "Yes" || rustic == "Y"
  client_information[:rustic] = true
else
  client_information[:rustic] =  false
end

p client_information
