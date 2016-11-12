def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end




list = [1,2,3,4]
result = reverse!(list) 
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id
