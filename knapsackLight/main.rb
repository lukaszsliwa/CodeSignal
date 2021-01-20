def knapsackLight(value1, weight1, value2, weight2, maxW)
  return value1 + value2 if weight1 + weight2 <= maxW
  return value1 if weight1 <= maxW and (weight2 > maxW or value1 >= value2)
  return value2 if weight2 <= maxW and (weight1 > maxW or value2 >= value1)
  0
end

puts knapsackLight(10, 5, 6, 4, 8)
puts knapsackLight(10, 5, 6, 4, 9)
puts knapsackLight(5, 3, 7, 4, 6)

