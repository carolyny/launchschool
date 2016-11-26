def stringy(size, start = 1)
  numbers = []
if start ==1
  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
else
size.times do |index|
    number = index.even? ? 0 : 1
    numbers << number
  end
end
  numbers.join
end



puts stringy(10,0)
puts stringy(10,1)
puts stringy(10)
puts stringy(0)
