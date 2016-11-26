def find_dup(array)
array.each do |number|
if array.count(number)==2
return number
else
end
end


end

puts find_dup([4,5,3,3,1]) == 3