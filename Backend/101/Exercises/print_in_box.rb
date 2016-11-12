def print_in_box(string)
  
  box_width = string.length + 2
  top = "+#{'-' * (box_width + 2)}+"
  puts top
  
  puts "|#{' ' * (box_width + 2)}|"
  
  puts "|  #{string}  |"
  puts "|#{' ' * (box_width + 2)}|"
  puts top


end




print_in_box('To boldly go where no one has gone before.')
print_in_box('')