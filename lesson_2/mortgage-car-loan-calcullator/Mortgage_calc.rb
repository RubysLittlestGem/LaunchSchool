# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following things:

# monthly interest rate
# loan duration in months
# monthly payment
# You can use the following formula:

# m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
prompt("Welcome to my Mortgage Calculator")


  prompt("Enter your Loan Amount:")
loan_amount = ''
loop do
  loan_amount = gets.chomp
  if loan_amount.empty?() || loan_amount.to_f() < 0
    prompt("Enter a valid Loan Amount")
  else  
    break
  end
end

prompt("Enter your Monthly Interest Rate: \n(you may enter a whole or fractional number)")
interest_rate = ''
loop do
interest_rate = gets.chomp
if interest_rate.empty?() || interest_rate.to_f() < 0
  prompt("Enter a valid Monthly Interest Rate")
else
  break
  end
end

prompt("Enter your Loan Term (in years):")
loan_duration = ''
loop do  
loan_duration = gets.chomp
  if loan_duration.empty?() || loan_duration.to_f() < 0
    prompt("Enter a valid Loan Term (in years)")
  else
    break
  end
end


annual_interest_rate = interest_rate.to_f() / 100
monthly_interest_rate = annual_interest_rate / 12
months = loan_duration.to_i() * 12

# m = p * (j / (1 - (1 + j)**(-n)))
monthly_payment = loan_amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-months)))


prompt("your monthly payments will be: #{monthly_payment}")

prompt("would you like to make another calculation? (y): ")
answer = Kernel.gets().chomp()

break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using my Mortgage Calculator!")
prompt("Good bye!")