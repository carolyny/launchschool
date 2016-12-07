def transpose(matrix)
new_matrix = []
new_row=[]
row=0

loop do
(0..2).each do |column|
new_row << matrix[column][row]
end
new_matrix << new_row
new_row=[]
row+=1
break if row == matrix.size
end
new_matrix
end

p transpose([[1,2,3],[4,5,6],[7,8,9]])

