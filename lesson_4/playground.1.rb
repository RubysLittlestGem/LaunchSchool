# PROBLEM :

# Given an unknown targeted Integer between a certain range. write a method that returns the integer 
# closest to the target based on user input and computer input. Only accept integers as input, and do
# not accept any negative values. If user is outside the range scope ask for another number in the
# correct range.


# Test Cases:
# range(1..50)
# EXAMPLE: winning_guess(user_input, computer_input)

# winning_guess(8, 25) #=> computer wins
# winning_guess(17, 45) #=> user wins
# winning_guess( 23, 23) #=>  results in tie
# winning_guess(-1, 25) #=> error


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




def math(input, target)
  if input > target
    user = input - target
  elsif input < target
    user = target - input
  end
  p "target from the (math method) #{target}" 
  p "input from the (math method) #{input}" 
  p "spaces from target (math method) #{user}" 
end



def closer(user_input, comp_input)
 user = 0
 comp = 0 
 target =  rand(1..50)
 math(user_input, target)
 math(comp_input, target)
  if math(user_input, target) 
    p 'winner'
  elsif math(comp_input, target) 
    p 'loser'
  end
    
   p "target: #{target}"
    p "user #{user_input}"
     p "comp #{comp_input}"
     p""
end




closer( 17, 32) # LOSS
closer(45, 16) # WIN
closer(15, 15) # TIE 
closer( 37, 32) # WIN
closer(5, 16) # LOSS
closer(50, 15) # WIN
closer( 17, 32) # LOSS
closer(45, 16) # WIN
closer(2, 5) # LOSS


 
 
  # if user_input > target
  #   user = user_input - target
  # elsif user_input < target
  #   user = target - user_input
  # end
  
  # if comp_input > target
  #   comp = comp_input - target
  # elsif comp_input < target
  #   comp = target - comp_input
  # end
  