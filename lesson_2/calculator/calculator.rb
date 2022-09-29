  require 'yaml'
  LANGUAGE = 'en'
  MESSAGES = YAML.load_file('calculator.yml')
  
  def messages(message, lang='en')
  MESSAGES[lang][message]
  end
  
  def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
  end
  
  def valid_number?(input)
  input.to_i().to_s() == input
  end
  
  
  def operation_to_message(op)
    case op
    when '1'
      prompt('add')
    when '2'
      prompt('subtract')
    when '3'
      prompt('multiply')
    when '4'
      prompt('divide')
    end
    
  end
  
  prompt('welcome')
  
    
  
  name = ''
  loop do
    name = Kernel.gets().chomp()
    
    if name.empty?()
      prompt('valid_name')
    else
      break
    end
  end
  
  
  prompt("hello-#{name}")
      
  
  
  loop do
    number1 = ''
  loop do
    prompt('first_number')
    number1 = Kernel.gets().chomp()
    
    if valid_number?(number1)
      break
    else
      prompt()
    end
  end
  
  number2 = ''
  loop do
    prompt('second_number') 
    number2 = Kernel.gets().chomp()
  
    if valid_number?(number2)
      break
    else
      prompt('valid_number')
    end
  end
  
  
  prompt('operator_prompt')
  
 
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('choose')
    end
  end
  
  prompt("#{operation_to_message(operator)} two_numbers")
  
  
  result = case operator 
          when '1'
            number1.to_i() + number2.to_i()
          when '2'
            number1.to_i() - number2.to_i()
          when '3'
            number1.to_i() * number2.to_i()
          when '4'
            number1.to_f() / number2.to_f()
  end
  
  prompt("result #{result}")
  
  prompt('perform_another')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
  end
  
  prompt('thank_you')