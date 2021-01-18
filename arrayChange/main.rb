def arrayChange(array)
  result, counter = [], 0
  array.each_with_index do |value, index|
    if index == 0
      result[0] = value
      next
    end
    
    if result[index - 1] >= value
      result[index] = result[index - 1] + 1
    else
      result[index] = value
    end
  end
  
  array.map.with_index { |value, index| result[index] - value }.sum
end

puts arrayChange([1, 1, 1]) #3
puts arrayChange([1, 2, 1]) #2
puts arrayChange([2, 1, 3, 1]) #7