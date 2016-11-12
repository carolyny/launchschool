

def rotate(number)
(number.to_s[1..-1] + number.to_s[0]).to_i
  
end

def rotate_rightmost_digits(num1, num2)
  new_rotated_number = 0
  new_rotated_number = (num1.to_s[0...num2-1] + rotate(num1.to_s[(num2-1)..-1]).to_s).to_i
end

def max_rotation(num3)
  number_of_rotations = 5
  new_number = 0
  loop do
    break if number_of_rotations == 1
    new_number = rotate_rightmost_digits(num3, number_of_rotations)
    p new_number
    number_of_rotations -=1
  end
  new_number
end

p rotate(123)

p rotate_rightmost_digits(12345,3)


p max_rotation(735291) 
# == 321579
#max_rotation(3) == 3
#max_rotation(35) == 53
#max_rotation(105) == 15 # the leading zero gets dropped
#max_rotation(8_703_529_146) == 7_321_609_845