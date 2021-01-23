def spiralNumbers(n)
  matrix = [[]] * n
  matrix = matrix.map { |row| [0] * n }
  i, j, di, dj = 0, 0, 0, 1
  1.upto(n * n) do |v|
    matrix[i][j] = v
    if matrix[(i + di) % n][(j + dj) % n] > 0
      v = di
      di = dj
      dj = -v
    end
    i += di
    j += dj
  end
  matrix
end

puts spiralNumbers(3).inspect

