def reverse(array)
array_new =[]


loop do
  array_new << array.pop
  break if array.size == 0
end
  
array_new



end



list = [1,2,3,4]
puts list
puts list.object_id
result = reverse(list)


puts result
puts result.object_id