def knapsackLight(value1, weight1, value2, weight2, maxW)
  return value1 + value2 if weight1 + weight2 <= maxW
  return [value1, value2].max if weight1 <= maxW && weight2 <= maxW
  return value1 if weight1 <= maxW
  return value2 if weight2 <= maxW
  0
end

puts knapsackLight(10, 5, 6, 8, 8)
puts knapsackLight(10, 5, 6, 4, 9)

