def halvsies(array)
array1=[]
array2=[]
index = 0

loop do
  array1 << array[index]
  index+=1
  break if index >= array.size/2.0
end

loop do 
  break if index >= array.size
  array2 << array[index]
  index+=1
end
result = [array1,array2]
end


puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]