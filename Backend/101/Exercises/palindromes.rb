def palindromes(string)
sub_strings = []
sub_strings_reverse = []
index1=0
loop do
break if index1 == string.size
index1.upto(string.size - 1) do |index2|
sub_strings << string[index1..index2]
#sub_strings_reverse << string[index1..index2].reverse
end
index1+=1
end
results = []

sub_strings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end






puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
 '-madam-', 'madam', 'ada', 'oo'
]
#palindromes('knitting cassettes') == [
#  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
#]