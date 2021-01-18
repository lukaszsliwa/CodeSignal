def minesweeper(matrix)
  solution, values = [], {}
  0.upto(matrix.size - 1) do |i|
    values[i] = [0] * matrix[i].size
    solution[i] = [0] * matrix[i].size
    
    0.upto(matrix[i].size - 1) do |j|
      values[i][j] = (matrix[i][j] ? 1 : 0)
    end
  end
    
  0.upto(matrix.size - 1) do |i|
    0.upto(matrix[i].size - 1) do |j|
      solution[i][j] ||= 0
      solution[i][j] += values[i - 1][j - 1].to_i if i - 1 >= 0 && j - 1 >= 0
      solution[i][j] += values[i - 1][j].to_i if i - 1 >= 0
      solution[i][j] += values[i - 1][j + 1].to_i if i - 1 >= 0
      solution[i][j] += values[i][j - 1].to_i if j - 1 >= 0
      solution[i][j] += values[i][j + 1].to_i if j + 1 < matrix[i].size
      solution[i][j] += values[i + 1][j - 1].to_i if i + 1 < matrix.size && j - 1 >= 0
      solution[i][j] += values[i + 1][j].to_i if i + 1 < matrix.size
      solution[i][j] += values[i + 1][j + 1].to_i if i + 1 < matrix.size && j + 1 < matrix[i].size
    end
  end
  solution
end

puts minesweeper([[true, false, false], [false, true, false], [false, false, false]]).inspect
puts minesweeper([[true,false,false,true], [false,false,true,false], [true,true,false,true]]).inspect
