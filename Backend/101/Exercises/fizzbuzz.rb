def fizzbuzz(first, last)
number = first
loop do
 if number%15 == 0
    puts "fizzbuzz"
  elsif number%5 == 0
  puts "buzz"
  elsif number%3 == 0
  puts "fizz"
  else
  puts number.to_s
  end
break if number == last
number +=1

  end
  
end
    





fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz