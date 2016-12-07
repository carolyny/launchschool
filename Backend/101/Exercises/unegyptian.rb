def unegyptian(array)
sum = Rational(0,1)
array.each do |number|
  sum += Rational(1,number)
end
sum

end


puts unegyptian([1,2,3,4,5])