

def rotate_array(array)
array[1..-1] + [array[0]]
end

def rotate_right(number,n)
all_digits = number.to_s.chars
all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
all_digits.join.to_i
end

def max_rotation(number)
rotations = number.to_s.chars.size
new_number = number
loop do
break if rotations == 1
new_number = rotate_right(new_number,rotations)
rotations -=1
end
new_number
end



p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845