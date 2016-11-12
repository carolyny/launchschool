def countup(ending_number)
  return if ending_number == 0 
  ending_number -= 1
  countup(ending_number)
  puts ending_number+1
end
countup(5)