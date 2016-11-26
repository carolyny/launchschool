def count_occurrences(array)

#occurrences = {}
 # array.uniq.each do |vehicle| 
  #occurrences[vehicle] = array.count(vehicle)
  #puts "#{vehicle} => #{occurrences.fetch(vehicle)}"
  #end
  
#end
  
  
array.uniq.each do |vehicle|
  
  puts "#{vehicle} => #{array.count(vehicle)}"
end



end





vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

#Can you write a solution for this exercise that only iterates over array once? Hint: Array#fetch or Array::new will be handy.