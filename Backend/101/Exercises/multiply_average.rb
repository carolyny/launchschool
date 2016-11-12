def show_multiplicative_average(array)
product = 1.to_f
array.each do |number|
 product = product * number
end

result = product / (array.size)


puts "the result is #{format('%.3f', result)}"
end



show_multiplicative_average([3, 5])
#The result is 7.500

show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667