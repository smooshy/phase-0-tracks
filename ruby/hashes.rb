# Ask designer for client name
#   -save value to key in hash
# Repeat previous steps for clients age, nmuber of children, home square footage and decor theme
# Print client information for review
# Prompt designer if changes are needed
# if changes are needed
#   - allow designer to re-enter value for a specific question and print updated client information.
#   - else end program


client_information = {}

puts "What is the client's full name?"
client_information[:name] = gets.chomp

p client_information
