def triangle(number)
index = 0
until index == number + 1
  puts " " * (number-index) + "*" * (index)
  index+=1
  end
  
end

triangle(5)
triangle(10)
