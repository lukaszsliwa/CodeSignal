def avoidObstacles(array)
  2.upto(array.max) do |i|
    quantity = 0
    
    array.each do |x|
      break if (x % i) == 0

      quantity += 1
    end
    
    return i if quantity == array.size
  end
  array.max + 1
end

puts avoidObstacles([5, 3, 6, 7, 9])

