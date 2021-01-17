def adjacentElementsProduct(array)
  result = -10000000
  (array.length - 1).times do |index|
    result = [result, array[index] * array[index+1]].max
  end 
  result
end

puts adjacentElementsProduct([3, 6, -2, -5, 7, 3])
puts adjacentElementsProduct([0, 0])
