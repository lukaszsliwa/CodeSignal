def arrayMaximalAdjacentDifference(inputArray)
  result = -10000000000
  inputArray.each_with_index do |element, index|
    next if index == 0
    
    difference = (element - inputArray[index - 1]).abs
    result = [result, difference].max
  end
  result
end

puts arrayMaximalAdjacentDifference([2, 4, 1, 0])

