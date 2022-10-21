


# # 1. Repeat Yourself


# # Write a method that takes two arguments, a string and a positive integer,
# # and prints the string as many times as the integer indicates.

# # Example:
# # repeat('Hello', 3)

# # Output:
# # Hello
# # Hello
# # Hello


# def repeat(str, int)
#   int.times { puts str}
# end

# repeat('Hello', 17)


#==========================================================================


# # 2. Odd

# # Write a method that takes one integer argument,
# # which may be positive, negative, or zero.
# # This method returns true if the number's absolute value is odd.
# # You may assume that the argument is a valid integer value.

# # Examples

# # puts is_odd?(2)    # => false
# # puts is_odd?(5)    # => true
# # puts is_odd?(-17)  # => true
# # puts is_odd?(-8)   # => false
# # puts is_odd?(0)    # => false
# # puts is_odd?(7)    # => true

# # Keep in mind that you're not allowed to use #odd? or #even? in your solution.


# def is_odd?(int)
# if int % 2 != 0
#   true
# else false
# end
# end


# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true



#============================================================================










arr = [[1], [2]]

arr[0] << [3]


p arr[0][1][0]



























