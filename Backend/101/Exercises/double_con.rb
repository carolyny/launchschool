def double_consonants(string)
result =[]


string.chars.each do |char|
  if char =~ /[A-Za-z]/ && char =~ /[^AEIOUaeiou]/
    result<<char<<char
  else
    result<<char
  end
end
  result.join



end



puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""