# Encrypt Method
# - Ask user for string
# - Set response to user_input
# - While user_input index is less than user_input length
#   - return user_input index and advance to next letter
# - End Encrypt
# - Print encrypted user_input to screen

# Decrypt Method
# - Set alphabet = "a..z"
# - Set alphabet to alphabet.reverse
# - Take the encrypted user_input
# - While user_input index is less than user_input length
#   - return user_input index and advance to the next letter in the alphabet.reverse
# - End Decrypt
# - Print decrypted user_input to screen


puts "Please provide your password"
  user_input = gets.chomp

# Encrypt Method
def encrypt(password)
  index = 0
  while index < password.length
    password[index] = password[index].next!
    index += 1
  end
  puts password
end
encrypt(user_input)

# Decrypt Method
