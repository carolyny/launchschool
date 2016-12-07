

def merge(array1, array2)
  result = []
  index1 = 0
  index2 = 0
  loop do
  if (index1 < array1.size) && (index2 < array2.size)
    if array1[index1]<=array2[index2]
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





p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
#p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
#p merge([], [1, 4, 5]) #== [1, 4, 5]
#p merge([1, 4, 5], [])# == [1, 4, 5]
p merge([1,7], [5,9])