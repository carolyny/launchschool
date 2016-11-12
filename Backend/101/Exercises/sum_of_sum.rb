def sum_of_sums(array)
result_array = []
sum=0
result = 0
array.each do |number|
sum = sum+number
result_array << sum
end
result_array.each do |number|
result+=number
end
puts result.to_s
end



sum_of_sums([3, 5, 2])
#  == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3])
# == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4])
# == 4
sum_of_sums([1, 2, 3, 4, 5])
#== 35