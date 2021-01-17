def isLucky(n)
  numbers = n.to_s.split('')
  a, b = 0, 0
  0.upto(numbers.size / 2 - 1) do |index|
    a += numbers[index].to_i;
    b += numbers[numbers.size / 2 + index].to_i
  end
  a == b
end

puts isLucky(1230)
puts isLucky(239017)
