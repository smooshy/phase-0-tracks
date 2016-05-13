# Own method that can take a block
#def name
#  puts "What is your name?"
#  user_input = gets.chomp
#  puts "Our block is about to run."
#  yield (user_input)
#  puts "Our block is finished running."
#end


#name { |user_input| puts "Your name is #{user_input}."}


# Release 1
# Array with .each iteration
array = [9, 'hi', 'yes', 19]

puts "Our original array:"
p array

array.each do | i |
  puts i
end

puts "Our after .each method call:"
p array

# Array with .map! iteration
array.map! do | i |
  puts i
  i.to_s
end

puts "Our after .map! method call:"
p array




# Hash with .each iteration
#hash = {seattle => 'sounders', chicago => 'fire', portland => 'timbers', vancouver => 'whitecaps'}
