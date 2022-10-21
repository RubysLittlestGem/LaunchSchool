# # Practice Problem 1
# # How would you order this array of number
# # strings by descending numeric value?


# arr = ['10', '11', '9', '7', '8']


# # my answer

# new_arr = arr.sort do |a, b|
#   a.to_i <=> b.to_i
#   end
#   p new_arr



# #=================================================


# Practice Problem 2
# How would you order this array of hashes based
# on the year of publication of each book, from
# the earliest to the latest?


# books = [
#   {title: 'One Hundred Years of Solitude',
#   author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby',
#   author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace',
#   author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses',
#   author: 'James Joyce', published: '1922'}
# ]
# # years = []
# # sorted_years = []
# # books.map do | element|
# #   element.map do | keys |
# #   if keys[1].to_i > 0
# #     years << keys[1]
# #   sorted_years =  years.sort do | a, b|
# #       a.to_i <=> b.to_i
# #     end
# #   end
# #   end
# # end

# # p sorted_years

# p books.key[0]




















































#=========================================================================

# # Practice Problem 10
# # Given the following data structure and without modifying the original array,
# # use the map method to return a new array identical in structure to the original
# # but where the value of each integer is incremented by 1.

# # [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# arr = []
# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   incremented_hash = {}
#    hsh.each do |key, value|
#       incremented_hash[key] = value + 1
#    end
#    arr << incremented_hash
# end
# # => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]


# p arr


# # Practice Problem 11
# # Given the following data structure use a combination of methods,
# # including either the select or reject method, to return a new array
# # identical in structure to the original but containing only the integers
# # that are multiples of 3.
# # arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# # Hint
# # The Integer#% method can be used to ascertain whether or not each integer
# # is a multiple of 3. If we call % on an integer with another integer passed
# # to it as an argument it will divide the first integer by the second
# # and return the remainder. If the remainder is 0 then the first number
# # is a multiple of the second.

# # 9 % 3 # => 0
# # # 9 is a multiple of 3

# # 10 % 3 # => 1
# # # 10 is not a multiple of 3

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]


#  arr.map do | num|
#   num.select do |element|
#    return element % 3 == 0
#   end
#  end

# arr.map do |element|
#   element.select do |num|
#    num % 3 == 0
#   end
# end
# # => [[], [3], [9], [15]]







# # Practice Problem 12
# # Given the following data structure, and without using the Array#to_h method,
# # write some code that will return a hash where the key is the first item in
# # each sub array and the value is the second item.


# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# hsh = {}
# arr.each do |item|
#   hsh[item[0]] = item[1]
# end
# p hsh




# # Practice Problem 13
# # Given the following data structure, return a new array containing
# # the same sub-arrays as the original but ordered logically by only
# # taking into consideration the odd numbers they contain.



# # The sorted array should look like this:
# # [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]


# arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
# new_arr = []

# new_arr = arr.sort_by do |element|
#   element.select do |num|
#     num.odd?
#   end
# end

# p new_arr





# # Practice Problem 14
# # Given this data structure write some code to return
# # an array containing the colors of the fruits and
# # the sizes of the vegetables. The sizes should be
# # uppercase and the colors should be capitalized.


# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }



# hsh.map do |element|
#   p element
# end
# # The return value should look like this:

# # [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]










































