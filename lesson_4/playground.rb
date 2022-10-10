# puts "pick a number between 1 and 100!"

# win = gets.chomp.to_s



# lose = rand(1..100).to_s



# puts lose

# def won_game(won, lost)
#   if won > lost
#     (won == 'win') ? lost : won
#     puts "you W!"
#   elsif lost > won
#     (lost == 'lost') ? won : lost
#     puts "you L!"
#   elsif won == lost
#   puts "it's a tie, try again!"
#   end
# end


# won_game(win, lose)

# puts "win: " + win.to_s
# puts "lose: " + lose.to_s


# def substrings(str)
#   result = []
#   starting_index = 0;

#   while (starting_index <= str.length - 2)
#     num_chars = 2
#     while (num_chars <= str.length - starting_index)
#       substring = str.slice(starting_index, num_chars)
#       result << substring
#       num_chars += 1
#     end
#     starting_index += 1
#   end
#   result
# end

# def is_palindrome?(str)
#   str == str.reverse
# end

# def palindrome_substrings(str)
#   result = []
#   substrings_arr = substrings(str)
#   substrings_arr.each do |substring|
#     result << substring if is_palindrome?(substring)
#   end
#   result
# end

# p palindrome_substrings("supercalifragilisticexpialidocious"); # ["ili"]
# p palindrome_substrings("abcddcbA");   # ["bcddcb", "cddc", "dd"]
# p palindrome_substrings("palindrome"); # []
# p palindrome_substrings("noon"); 







# PROBLEM :

# Given an unknown targeted Integer between a certain range. write a method that returns the integer 
# closest to the target based on user input and computer input. Only accept integers as input, and do
# not accept any negative values. If user is outside the range scope ask for another number in the
# correct range.


# Test Cases:
# range(1..50)
# EXAMPLE: winning_guess(user_input, computer_input, target value)

# winning_guess(8, 25, 34) #=> computer wins
# winning_guess(17, 45, 18) #=> user wins
# winning_guess( 23, 23, 28) #=>  results in tie
# winning_guess(-1, 25, 25) #=> error


# Input: integer
# Output: integer

# Explicit requirements:
# Must be integer of value greater than zero
# If user is outside the range throw an error
# And ask for a number within the range

# Implicit requirements:
# Ask the user for an initial number
# Use a loop to catch errors and retry 
# Should catch non-integer errors, and negative value errors


def winning_guess(user_input, computer_input)

end


def closer(user_input, computer_input, range)
range = rand(1..50) # => unknown integer
user_input = user_input
computer_input = computer_input



p "the user input in #{user_input}"
p "the comp input is #{computer_input}"
p "our target number is #{range}"
end

# # TEST CASES

closer( 17, 32, 22) # L
# closer(45, 16) # W
# closer(15, 15) # E
# closer( 137, 32) # W
# closer(45, 106) # L
# closer(150, 15) # W
# closer( 17, 32) # L
# closer(495, 16) # W
# closer(15, 195) # L


# winning_guess(37, 7) #=> user wins
# p ''
# winning_guess(17, 45) #=> comp wins
# p ''
# winning_guess( 23, 23) #=>  results in tie
# p ''
# winning_guess(2, 25) #=> error