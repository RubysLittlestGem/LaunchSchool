# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# performs the operation on the specified arguments
# displays the result


Kernel.puts("Welcome to Calculator!")

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?") 
number2 = Kernel.gets().chomp()

Kernel.puts("What's the operation to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == "1"
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() - number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
elsif operator == "4"
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")








#WORK I DID BEFORE WATCHING THE VIDEO

# Kernel.puts("Give me a number")
# number1 = Kernel.gets().chomp().to_i()

# Kernel.puts("Give me anoither number")
# number2 = Kernel.gets().chomp().to_i()

# Kernel.puts("What type of operation would you like me to run?")
# Kernel.puts("")
# Kernel.puts("Select an option: \n1. Add \n2. Subtract \n3. Multiply \n4. Divide")
# operation = Kernel.gets().to_i()

# case operation 
# when 1
#   puts number1 + number2
# when 2
#   puts number1 - number2
# when 3
#   puts number1 * number2
# when 4
#   puts number1 / number2
# else
#  puts "ERROR: Something went wrong!"
# end
