
light_array = Array.new(1000){|i| -1}
result = []
i=0

1000.times do
light_array.each_with_index do |light, index|
  if (index+1)%(i+1) == 0
    result << light*-1
  else
    result << light
  end
end
light_array = result
result = []
i+=1
end

on_array = []
light_array.each_with_index do |light, index|
if light == 1
  on_array << index+1
else
end
on_array
end

puts on_array.to_s
puts on_array.size.to_s

