

def divide(array)
  result = []
  return[array] if array.size == 1
    sub_array1 = array[0...array.size/2]
    sub_array2 = array[array.size/2..-1]
    result = divide(sub_array2) + divide(sub_array1)
end




def merge1(array)
  
  result = []
  sub_array = []
  index = 0
  array.each do |element|
    if index == 0 || index%2==0
    sub_array = element + array[index+1]
    result << sub_array.flatten
  else
    sub_array = []
  end
  index+=1
  
  end
result
end


def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end




p divide([9, 5, 7, 1]) 
p merge1([[1], [7], [5], [9], [2], [5]])
#p divide([5, 3]) == [3, 5]
#p divide([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
#p divide(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
#p divide([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]