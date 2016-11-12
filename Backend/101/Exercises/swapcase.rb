def swapcase(word)
chars = word.chars
char_array = []
chars.each do |char|
if char == char.upcase
  char = char.downcase
elsif char == char.downcase
  char = char.upcase
end
char_array << char
end
char_array.join
  end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'