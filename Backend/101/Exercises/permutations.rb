def permutations(array)
  result = []
  return [array] if array.size == 1 # Base Case (when to stop)
  
  
  array.each_with_index do |element, index|
    subarray = array[0...index] + array[(index+1)..-1]# Working towards Base Case
    sub_permutations = permutations(subarray)# Recursive call (calling ourselves)
    sub_permutations.each do |permutation|
      result << [element] + permutation 
    end
  end
  result
end

p permutations([1,2,3,4])