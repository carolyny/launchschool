def countdown(starting_number)
  return if starting_number == 0 # Base Case (when to stop)

  puts starting_number
  starting_number -= 1 # Working towards Base Case
  countdown(starting_number) # Recursive call (calling ourselves)
end