def substrings(string)
result = []
index1=0
loop do
break if index1 == string.size
index1.upto(string.size - 1) do |index2|
result << string[index1..index2]
end
index1+=1
end
puts result
result





end



puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

