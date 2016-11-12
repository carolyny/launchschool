def center_of(string)
result = ""
center = string.length/2

if string.length.odd?
result = string.chars[center]
else
result = string.chars[center-1] + string.chars[center]
end
result
end




puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'