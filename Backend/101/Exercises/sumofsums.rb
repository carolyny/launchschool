def sum_of_sums(array)
total_array = []
total = 0
sum=0
    array.each do |number|
    total_array << total+number
    total+=number
    end
    total_array.each do |element|
    sum +=element    
    end
sum


end



puts sum_of_sums([2, 5, 13]) == 29
puts sum_of_sums([1,5,7,3]) == 36
