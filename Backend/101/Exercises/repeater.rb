def repeater(string)
result = []
string.chars.each do |char|
result<<char<<char

end
result.join
end





puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''