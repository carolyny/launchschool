def merge (array1, array2)
new_array =[]

array1.each do |element| 
new_array << element
end

array2.each do |element|
new_array << element
end

new_array.uniq


end




puts merge([1, 3, 5], [3, 6, 9])





 puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]