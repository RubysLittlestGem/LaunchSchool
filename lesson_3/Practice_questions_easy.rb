# Question 1
# What would you expect the code below to print out?

# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers


# Question 2

# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it?
# put ! before something, like !user_name
# put ! after something, like words.uniq!
# put ? before something
# put ? after something
# put !! before something, like !!user_name


# != means "not equals"
# ? : is the ternary operator for if...else
# !!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
# !<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.





# Question 3
# Replace the word "important" with "urgent" in this string:


# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.gsub!('important', "urgent")

# puts advice



# Question 4

# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:
# numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

# numbers.delete_at(1)

# p numbers

# numbers = [1, 2, 3, 4, 5]

# numbers.delete_at(1)

# p  numbers





# Question 5
# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.

# MY ORIGINAL ANSWE
# forty_two = 42
  
#   if forty_two.between?(10, 100)
#     puts "I found it"
#   else 
#     puts "It's not here!"
#   end

# LS ANSWER 

# (10..100).cover?(42)



# Question 6
# Starting with the string:

# famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.
# prependded = "Four score and "

# puts prependded + famous_words
# puts famous_words.prepend(prependded)
# puts prependded << famous_words




# Question 7
# If we build an array like this:

# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# #We will end up with this "nested" array:
# #["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Turn this into an array containing only two elements: Barney's name and Barney's number

# p flintstones.flatten!
# p flintstones

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, 
# "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# flintstones.delete_if {  |k, v| k != "Barney"}
# p flintstones.assoc("Barney")





# Practice Problems: Easy Part 2 +++++++++++++++++++++++++++++++++++++++++



# Question 1

# In this hash of people and their age
# see if "Spot" is present.
# Bonus: What are two other hash methods that would work just as well for this solution?


# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10, 'spot' => 17 }

# # returns values
# p ages.fetch('spot')
# p ages.any?(['spot', 17])
# p ages.assoc('spot')
# p ages.dig('spot')
# # returns keys
# p ages.key?('spot')
# p ages.include?('spot')
# p ages.member?('spot')


# Question 2


# Convert the string in the following ways (code will be executed on original munsters_description above):

# Copy Code
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."


# munsters_description = "The Munsters are creepy in a good way."
# p munsters_description.swapcase! #1
# p munsters_description.upcase.gsub(/[TM]/, 'T' => 't', 'M' => 'm') # also #1
# p munsters_description.capitalize! #2
# p munsters_description.downcase! #3
# p munsters_description.upcase! #4






# # Question 3

# # We have most of the Munster family in our age hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# # add ages for Marilyn and Spot to the existing hash

# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# p ages

# ages.merge!(additional_ages)

# p ages







# # Question 4

# # See if the name "Dino" appears in the string below:

# advice = "Few things in life are as important as house training your pet Dinosaur."

# p advice.include?('Dino')
# p advice.match?('Dino')



# # Question 5

# # Show an easier way to write this array:

# flintstones1 = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p flintstones1
# p flintstones





# # Question 6

# # How can we add the family pet "Dino" to our usual array:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones << 'Dino'

# p flintstones






# # Question 7
# # In the previous practice problem we added Dino to our array like this:

# # flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # flintstones << "Dino"

# # We could have used either Array#concat or 
# # Array#push to add Dino to the family.
# # How can we add multiple items to our array? (Dino and Hoppy)


# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.push("Dino", "Hoppy")
# p flintstones






# # Question 8
# # Shorten the following sentence:


# advice = "Few things in life are as important as house training your pet dinosaur."
# pref = advice.slice!("Few things in life are as important as ")
# advice.slice!(0, advice.index('house'))

# p pref
# p advice

# Bonus: Using slice, the non-destructive version of slice!, would return a new string with the same text 
# ("Few things in life are as important as ") but the advice variable would remain the same, pointing to
# the original string ("Few things in life are as important as house training your pet dinosaur.").







# # Question 9
# # Write a one-liner to count the number of lower-case 't' characters
# # in the following string:

# statement = "The Flintstones Rock!"

# count = statement.count('a-z')
# p count
# p statement







# # Question 10
# # Back in the stone age (before CSS) we used spaces to align 
# # things on the screen. If we had a table of Flintstone family 
# # members that was forty characters in width, how could we easily
# # center that title above the table with spaces?


# title = "Flintstone Family Members"

# p title.center(40)





# Practice Problems: Medium Part 1 +++++++++++++++++++++++++++++++++++++++++


# # Question 1
# # Let's do some "ASCII Art" (a stone-age form of nerd artwork from back 
# # in the days before computers had video screens).

# # For this practice problem, write a one-line program that creates the
# # following output 10 times, with the subsequent line indented 1 space 
# # to the right:


# # The Flintstones Rock!
# #  The Flintstones Rock!
# #   The Flintstones Rock!

# art = "The Flintstones Rock!"


# count = 1
# while count < 10 do
#   puts art
#   count +=1
#   art.insert(0, " ")
# end

# 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }



# # Question 2
# # The result of the following statement will be an error:

# # puts "the value of 40 + 2 is " + (40 + 2)
# # why is this and what are two possible ways to fix this?

# #no conversion of int to string

# puts "the value of 40 + 2 is " + (40 + 2).to_s

# puts "the value of 40 + 2 is #{40 + 2}"



# Question 3
# Alan wrote the following method, which was intended to show 
# all of the factors of the input number:

# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0
#   factors << number / divisor if number % divisor == 0
#   divisor -= 1
#   end
# factors
# end

# p factors(5)

# Alyssa noticed that this will fail if the input is 0, 
# or a negative number, and asked Alan to change the loop.
# How can you make this work without using begin/end/until? 
# Note that we're not looking to find the factors for 0
# or negative numbers, but we just want to handle it gracefully
# instead of raising an exception or going into an infinite loop.

# Bonus 1
# What is the purpose of the number % divisor == 0 ?

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# << operator appends while + will only change the value within the method.
# << is the better option for this task







# # Question 4
# # Alyssa was asked to write an implementation of a rolling buffer. 
# # Elements are added to the rolling buffer and if the buffer becomes full,
# # then new elements that are added will displace the oldest elements in the buffer.

# # She wrote two implementations saying, 
# # "Take your pick. Do you like << or + for modifying the buffer?". 
# # Is there a difference between the two, other than what operator 
# # she chose to use to add an element to the buffer?



# arr = [1,2,3,3,4]
# arr2 = []
# num = 3
# def rolling_buffer1(buffer, max_buffer_size, new_element) # this is the correct choice
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# p rolling_buffer1(arr, 6,num)
# p rolling_buffer2(arr, 6,num)






# # Question 5
# # Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. 
# # A user passes in two numbers, and the calculator will keep computing the sequence
# # until some limit is reached.

# # Ben coded up this implementation but complained that as soon as he ran it, he got an error.
# # Something about the limit variable. What's wrong with the code?


# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, 15)
# puts "result is #{result}"



# # Question 6
# # What is the output of the following code?

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8





# # Question 7
# # One day Spot was playing with the Munster family's 
# # home computer and he wrote a small program to mess with their demographic data:


# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }


# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end



# mess_with_demographics(munsters)


# puts munsters





# # Question 8
# # Method calls can take expressions as arguments. 
# # Suppose we define a method called rps as follows, 
# # which follows the classic rules of rock-paper-scissors game:
# # it returns the winning fist or, in the case of a tie,
# # the fist that both players played.

# def rps(fist1, fist2)
#   if fist1 == 'rock'
#     (fist2 == 'paper') ? 'paper' : 'rock'
#   elsif fist1 == 'paper'
#     (fist2 == 'scissors') ? 'scissors' : 'paper'
#   else
#     (fist2 == 'rock') ? 'rock' : 'scissors'
#   end
# end

# puts rps(rps(rps('rock','paper'), rps('rock', 'scissors')), "rock")

# paper

# The outermost call is evaluated by determining the result of 
# rps(rps("rock", "paper"), rps("rock", "scissors")) versus rock. 
# In turn that means we need to evaluate the two separate
# results of rps("rock", "paper") and rps("rock", "scissors")
# and later combine them by calling rps on their individual results.
# Those innermost expressions will return "paper" and "rock", 
# respectively. Calling rps on that input will return "paper". 
# Which finally when evaluated against "rock" will return "paper".






# # Question 9
# # Consider these two simple methods:

# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end

# # What would be the return value of the following method invocation?

# p foo
# p bar(foo)






# Practice Problems: Medium 2 ==========================================================


# # Question 1
# # Every object in Ruby has access to a method called object_id, 
# # which returns a numerical value that uniquely identifies the object. 
# # This method can be used to determine whether two variables are pointing to the same object.

# # Take a look at the following code and predict the output:


# a = "forty two"
# b = "forty two"
# c = a

# puts a.object_id
# puts b.object_id
# puts c.object_id




# # Question 2
# # Let's take a look at another example with a small difference in the code:


# a = 42
# b = 42
# c = a

# puts a.object_id
# puts b.object_id
# puts c.object_id




# # Question 3
# # Let's call a method, and pass both a string and an array as arguments and see how even though
# # they are treated in the same way by Ruby, the results can be different.
# # Study the following code and state what will be displayed...and why:


# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"





# # Question 4
# # To drive that last one home...let's turn the tables and have the 
# # string show a modified output, while the array thwarts the method's
# # efforts to modify the caller's version of it.


# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method_two(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"


# # Whether the above "coincidentally" does what we think we wanted
# # depends upon what is going on inside the method.

# # How can we change this code to make the result easier to predict
# # and easier for the next programmer to maintain? That is, 
# # the resulting method should not mutate either argument, 
# # but my_string should be set to 'pumpkinsrutabaga' and my_array
# # should be set to ['pumpkins', 'rutabaga']



# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]
  
#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"






# # Question 6
# # How could the following method be simplified without changing its return value?

# # def color_valid(color)
# #   if color == "blue" || color == "green"
# #     true
# #   else
# #     false
# #   end
# # end

# def color_valid(color)
#   color == 'blue' || color == 'green' 
# end

# puts color_valid('red')





#    Practice Problems: Hard 1 ===================================================================




# # Question 1
# # What do you expect to happen when the greeting variable is referenced
# # in the last line of the code below?

# if false
#   greeting = "hello world"
# end

# p greeting


# # greeting is nil here, and no "undefined method or local variable" exception is thrown. 
# # Typically, when you reference an uninitialized variable, Ruby will raise an exception, 
# # stating that it’s undefined. However, when you initialize a local variable within an if block,
# # even if that if block doesn’t get executed, the local variable is initialized to nil.





# #***********************************************************************
# #***********************************************************************
# # Question 2
# # What is the result of the last line in the code below?


# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# # informal_greeting << ' there' #=> destructive method


# informal_greeting = informal_greeting + ' test there' #=> non-destructive method


# puts informal_greeting  #  => "hi there"
# puts greetings[:a]

# # The output is {:a=>"hi there"}. The reason is because informal_greeting
# # is a reference to the original object. The line informal_greeting << ' there' 
# # was using the String#<< method, which modifies the object that called it. 
# # This means that the original object was changed, thereby impacting the value in greetings.
# # If instead of modifying the original object, we wanted to only modify informal_greeting
# # but not greetings, there are a couple of options:

# # we could initialize informal_greeting with a reference to a new object containing
# # the same value by informal_greeting = greetings[:a].clone.
# # we can use string concatenation, informal_greeting = informal_greeting + ' there', 
# # which returns a new String object instead of modifying the original object.




# Question 3
# In other practice problems, we have looked at how the scope of variables affects
# the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification
# of one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# $A)

# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" #=> one
# puts "two is: #{two}" #=> two
# puts "three is: #{three}" #=> three


# #B)

# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" #=> one
# puts "two is: #{two}" #=> two
# puts "three is: #{three}" #=> three



# #C)


# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end

# one = "one" 
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" #=> two
# puts "two is: #{two}" #=> three
# puts "three is: #{three}" #=> one  gsub! is destructive



# Question 4
# Ben was tasked to write a simple ruby method to determine
# if an input string is an IP address representing dot-separated numbers.
#   e.g. "10.4.5.11". He is not familiar with regular expressions.
#   Alyssa supplied Ben with a method called is_an_ip_number? 
#   that determines if a string is a numeric string between 0 and 255
#   as required for IP numbers and asked Ben to use it.


# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break unless is_an_ip_number?(word)
#   end
#   return true
# end

# Alyssa reviewed Ben's code and says "It's a good start,
# but you missed a few things. You're not returning a false condition,
# and you're not handling the case that there are more or 
# fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5"
# should be invalid)."

# Help Ben fix his code.


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  if dot_separated_words == 4 
  return true
  else
  return false
  end
end


p dot_separated_ip_address?("10.4.5.11")








