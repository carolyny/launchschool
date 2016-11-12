def staggered_case(string)
array = string.chars
character_number = 1
loop do
break if character_number == (array.length + 1)
if character_number.odd? 
array[character_number - 1] = array[character_number-1].upcase
else
array[character_number - 1] = array[character_number - 1].downcase
end
character_number +=1

end
array.join
end







puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'