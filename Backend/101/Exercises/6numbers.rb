array = []
puts "Enter the 1st number:"
first = gets.chomp.to_i
array << first
puts "Enter the 2nd number:"
array << gets.chomp.to_i
puts "Enter the 3rd number:"
array << gets.chomp.to_i
puts "Enter the 4th number:"
array << gets.chomp.to_i
puts "Enter the last number:"
last = gets.chomp.to_i
if array.include?(last) 
  puts "yes"
else
  puts "no"
end


