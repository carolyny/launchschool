def swap(string)
word_array = []
string_array_new = []
string_array = string.split

string_array.each do |word|

  word_array = word.chars
  first = word_array.first
  last = word_array.last
  word_array.pop
  word_array << first
  word_array.delete_at(0)
  word_array.unshift (last)
  new_word = word_array.join
  string_array_new << new_word

end

string_array_new.flatten.join(" ")


end




puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'