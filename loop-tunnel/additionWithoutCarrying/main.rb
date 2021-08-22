def additionWithoutCarrying(param1, param2)
  size = [param1.to_s.size, param2.to_s.size].max
  param1 = param1.to_s.rjust(size, '0').split('')
  param2 = param2.to_s.rjust(size, '0').split('')
  result = []
  size.times do |i|
    result << ((param1[i].to_i + param2[i].to_i) % 10).to_s
  end
  result.join.to_i
end

puts additionWithoutCarrying(456, 1734)

