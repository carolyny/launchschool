def egyptian(number)
n=1
result_array = []
sum = Rational(0,1)

loop do
  sum += Rational(1,n)
  if sum <= number
    result_array << n
    n+=1
  else
    sum -=Rational(1,n)
    n+=1
  end
  break if sum == number
end
result_array
end

#puts egyptian(Rational(137,60))
puts egyptian(Rational(2,1))
#puts egyptian(Rational(3,1))