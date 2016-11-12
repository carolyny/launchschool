def multiply_all_pairs(array1, array2)
size = array2.size
result = []

array1.each do |number|
  index = 0
  loop do
    result << number*array2[index]
   index+=1
    break if index == size
  end
end
result.sort
end


puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]