def merge(array1, array2)
  result = []
  index1 = 0
  index2 = 0
  loop do
  if (index1 < array1.size) && (index2 < array2.size)
    if array1[index1] <= array2[index2]
      result << array1[index1]
      index1+=1
    else
      result << array2[index2]
      index2+=1
    end
  elsif index1 >= array1.size
    result << array2[index2..-1]
    index2 = array2.size
  elsif index2 >= array2.size
  result << array1[index1..-1]
  index1 = array1.size
  else
    
  end
  break if index1>= array1.size && index2 >= array2.size
end

result.flatten

end



def mergesort(array)

  return array if array.size == 1 # Base Case (when to stop)
  
  subarray1 = array[0..array.size/2-1]  # Working towards Base Case
  subarray2 = array[(array.size/2)..-1]
  merge(mergesort(subarray1),mergesort(subarray2)) #recursive call (calling ourselves)

end

p mergesort([9,5,7,1])
p mergesort([6, 2, 7, 1, 4]) #== [1, 2, 4, 6, 7]
p mergesort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) 