def name
  puts "What is your name?"
  user_input = gets.chomp
  puts "Our block is about to run."
  yield (user_input)
  puts "Our block is finished running."
end


name { |user_input| puts "Your name is #{user_input}."}
