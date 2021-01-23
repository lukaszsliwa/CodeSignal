def differentSquares(matrix)
  squares = {}
  0.upto(matrix.size - 1) do |row|
    0.upto(matrix[row].size - 1) do |cell|
      next if row + 1 >= matrix.size || cell + 1 >= matrix[row].size
      value = 1000 * matrix[row][cell] + 100 * matrix[row][cell + 1] + 10 * matrix[row + 1][cell] + matrix[row + 1][cell + 1]
      squares[value] ||= 0
      squares[value] += 1
    end
  end
  squares.keys.size
end

puts differentSquares([[1, 2, 1], [2, 2, 2], [2, 2, 2], [1, 2, 3], [2, 2, 1]])
