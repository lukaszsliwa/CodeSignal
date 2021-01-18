def boxBlur(image)
  solution = []
  1.upto(image.size - 1) do |i|
    next if image[i].nil?
    
    temp = []
    1.upto(image[i].size - 1) do |j|
      break if image[i].nil? || image[i - 1].nil? || image[i + 1].nil? || \
        image[i][j].nil? || image[i - 1][j].nil? || image[i + 1][j].nil? || \
        image[i][j - 1].nil? || image[i][j + 1].nil? || \
        image[i - 1][j - 1].nil? || image[i - 1][j + 1].nil? || \
        image[i + 1][j - 1].nil? || image[i + 1][j + 1].nil?
      
      pixel = (image[i][j] + image[i - 1][j] + image[i + 1][j] + \
        image[i][j - 1] + image[i][j + 1] + \
        image[i - 1][j - 1] + image[i - 1][j + 1] + \
        image[i + 1][j - 1] + image[i + 1][j + 1]) / 9
      
      temp.append(pixel)
    end
    solution << temp unless temp.empty?
  end
  solution
end

puts boxBlur([[1, 1, 1], [1, 7, 1], [1, 1, 1]]).inspect
puts boxBlur([[7, 4, 0, 1], [5, 6, 2, 2], [6, 10, 7, 8], [1, 4, 2, 0]]).inspect
