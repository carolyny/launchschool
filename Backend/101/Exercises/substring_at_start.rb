
def substrings_at_start(string)
array = string.chars
result_array = []
substring = ""
array.each do |char|
substring += char
result_array << substring
end
result_array
end


puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

