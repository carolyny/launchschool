def halvsies(array)
new_array =[]
new_array<<array.slice(0,(array.length/2.to_f).round)
new_array<<array.slice((array.length/2.to_f).round, array.length)

end
puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]