def buy_fruit(hash)
array = []  
  hash.each do |fruit, quantity|
    quantity.times do
      array << fruit
    end
    
  end
  array
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]