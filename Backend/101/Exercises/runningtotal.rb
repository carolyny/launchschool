def running_total(array)
total_array = []
total = 0
array.each do |number|
total +=number
total_array << total
end
total_array


end



puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
