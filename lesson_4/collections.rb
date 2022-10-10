# Chaining Methods
# from RB101 Lesson 4: Collections Study stuff


# def add_three(n)
#   new_value = n + 3
#   puts new_value
#   new_value
# end


# add_three(5).times { 'this should print 8 times'}




# p "hi there".length.to_s      # returns "8" - a String


#=======================================================


#Collections

#How would you reference 'grass' from within this string?



# str = 'abcdefghi'


# p str[2]
# p str[2, 3]
# p str[2, 3][0]

# str = 'The grass is green'

# p str[4, 5]
# p str
#   str.slice(4,5)  #=> slice! is destructive

# p str




# hsh = { 'fruit' => 'apple',
#     'vegetable' => 'carrot',
#         #'fruit' => 'pear'
#         }


# p hsh['fruit']


# str = 'ghijk'
# arr = ['g', 'h', 'i', 'j', 'k']

# p str[-3]
# p arr[0]


# str = 'How do you get to Carnegie Hall?'
# arr = str.split # => ["How", "do", "you", "get", "to", "Carnegie", "Hall?"]
# p arr.join(' ') 




# arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]
# p arr

# h = arr.to_h

# p h

# a = h.to_a

# p a



# STRING COLLECTIONS

# str = "joe's favorite color is blue"
# str[0] = 'J'
# str[6] = 'F'
# str[15] = 'C'
# str[21] = 'I'
# str[24] = 'B'
# p str # => "J

# ARRAY COLLECTIONS

# arr = [1, 2, 3, 4, 5]
# arr[0] += 1 # => 2
# arr[1] += 1 # => 3
# arr[2] += 1 # => 4
# arr[3] += 1 # => 5
# arr[4] += 1 # => 6
# p arr  

# HASH COLLECTIONS

# hsh = { apple: 'Produce', carrot: 'Produce',
# pear: 'Produce', broccoli: 'Produce' }
# hsh[:apple] = 'Fruit'
# hsh [:carrot] = 'Vegetable'
# hsh [:pear] = 'Fruit'
# hsh [:broccoli] = 'Vegetable'
# p hsh # => { :apple => "Fruit", :carrot => "Produce",
# #:pear => "Produce", :broccoli => "Produce" }



# counter = 0

# loop do
#   #  number = rand(1..10)   # a random number between 1 and 10
#   puts 'Hello!'
#   counter += 1
#   break if counter == 5
#   end
#     puts 'Exiting...'


# counter = 0

# loop do
#   counter += 1
#   next if counter.odd?
#   puts counter
#   break if counter > 5
# end



# alphabet = 'a b c d efg h i j k lmnop qrs t u v wx y z'
# counter = 0

# loop do
#   break if counter == alphabet.size
#   puts alphabet[counter].split(' ')
#   counter += 1
# end




# colors = ['green', 'blue', 'purple', 'orange']
# counter = 0

# loop do
#   break if counter == colors.size
#   puts "I'm the color #{colors[counter]}!"
#   counter += 1
# end













