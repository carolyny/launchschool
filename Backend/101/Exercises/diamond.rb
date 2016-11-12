def diamonds(oddnum)
 n=1
 loop do
   break if n >= oddnum
    puts ("*" *n).center(oddnum)
    n+=2
  end
  loop do
   break if n < 1
    puts ("*" *n).center(oddnum)
    n-=2
  end
  
end

diamonds(11)