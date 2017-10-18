def calculator(num1,num2,op)
  case op
  when '+'
    puts %{Equals: #{num1+num2}}
  when '-'
    puts %{Equals: #{num1-num2}}
  when '*'
    puts %{Equals: #{num1*num2}}
  when '/'
    if(num2 != 0)
      puts %{Equals: #{num1/num2}}
    else
      puts 'Unvalid input'
      return
    end
  else
    i = 0
    temp = num1
    while i < num2
      num1 *= temp
      i += 1
    end
    puts %{Equals: #{num1}}
  end
end
while true
  puts %{(1) To enter new operation
  (2) To Exit
  }
  opt = gets.to_i
  case opt
  when 1
    print 'Enter first operand: '
    first_operand = gets.to_i
    print 'Enter Operation: '
    operation = gets.chomp
    print 'Enter second operand: '
    second_operand = gets.to_i
    calculator(first_operand,second_operand,operation)
  when 2
    puts 'Thank You!'
    Exit
  end
end
