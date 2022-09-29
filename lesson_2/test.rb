# def car(new_car)
#   make = make(new_car)
#   model = model(new_car)
#   [make, model]
# end

# def make(new_car)
#   new_car.split(" ")[0]
# end

# def model(new_car)
#   new_car.split(" ")[1]
# end

# make, model = car("Ford Mustang")
# make == "Ford"         # => true
# model.start_with?("M")

# puts make + ' ' + model






#  array = [1, 2, 3]

# # p(array.map) do |num|
# #   num + 1                           #  <Enumerator: [1, 2, 3]:map>
# # end                                 #  => <Enumerator: [1, 2, 3]:map>

# # p(array.map { |num| num + 1 })      # [2, 3, 4]


# mapped_array = array.map { |num| num + 1 }

# mapped_array.map { |value| p value }                    # => [2, 3, 4]

# mapped_and_tapped = mapped_array.tap { |value| p 'hello' }   # ‘hello’

# p mapped_and_tapped                                            # => [2, 3, 4]


# (1..10)                 .tap { |x| p x }   # 1..10
#  .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#  .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
#  .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]




def percentage(total, part)
  part * 1/100 * total
end
  
def monthly_payment(total, per_month)
  per_month * total.to_f
end

def payment_in_months
end

puts percentage(10, 500)
puts monthly_payment(36, 3042.19)
