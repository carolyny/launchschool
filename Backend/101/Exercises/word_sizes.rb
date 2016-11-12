def word_sizes(sentance)

words = sentance.split
word_hash = Hash.new(0)

words.each do |word|
  clean_word = word.delete('^A-Za-z')
  word_hash[clean_word.length] += 1
end

word_hash.each do |k,v|
  puts "key #{k} value #{v}"
end
word_hash
end






puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}