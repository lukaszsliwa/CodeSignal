def matrixElementsSum(matrix)
    price = 0
    matrix.each_with_index do |row, y|
      row.each_with_index do |_, x|
        if y == 0
          price += matrix[y][x]
        else
          matrix[y][x] = 0 if matrix[y-1][x] == 0
          price += matrix[y][x]
        end
      end
    end
    price         
end

puts matrixElementsSum([[0, 1, 1, 2], [0, 5, 0, 0], [2, 0, 3, 3]]) # 9
puts matrixElementsSum([[1, 1, 1, 0], [0, 5, 0, 1], [2, 1, 3, 10]]) #9
