

def toggle(light)
light*-1
end

light_array = Array.new(10){|i| -1}
result = []
i=0
loop do
break if i == 10
light_array.each_with_index do |light, index|
if (index+1)%(i+1) == 0
  light = light*-1
else
  light
end
result << light
end
i+=1
light_array = result
end

puts result.to_s



