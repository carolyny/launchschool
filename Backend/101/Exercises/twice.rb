def twice(number)
number_string = number.to_s
center = number_string.length/2
left = center.zero? ? "" : number_string[0..center-1]
right = number_string[center..-1]
if left == right
  number
else
  number*2
end


end






puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10
