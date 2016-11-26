
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
number_string=""

loop do
number_string =number_string.prepend(DIGITS[number.divmod(10)[1]])
number = number.divmod(10)[0]
break if number < 0 || number == 0
end

number_string
end

def signed_integer_to_string(number)


if number <0
  number_string = integer_to_string(number*-1)
  number_string.prepend('-')
elsif number>0
number_string = integer_to_string(number)
number_string.prepend('+')
else
  number_string = "0"
end
number_string  

end





puts signed_integer_to_string(123) == '+123'
puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == "-123"
puts signed_integer_to_string(0) == "0"