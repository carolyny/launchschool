def running_total(array)
array_total =[]
total = 0
array.each do |num|
 total += num
 array_total << total
 end
 array_total
 end
  



puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []