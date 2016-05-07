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
  return password
end
cipher = encrypt(user_input.dup)
p cipher

# Decrypt Method
def decrypt (encrypted_password)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < encrypted_password.length
    letter = encrypted_password[index]
    position = alphabet.index(letter) #magic
    encrypted_password[index] = alphabet[position-1]

    index += 1
  end
  return encrypted_password
end
plaintext = decrypt(cipher.dup)
p plaintext
