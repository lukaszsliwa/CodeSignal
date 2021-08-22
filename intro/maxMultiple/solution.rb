def maxMultiple(divisor, bound)
  result = -1
  (0..bound).each do |i|
    result = i if i % divisor == 0 && result <= i
  end
  result
end

puts maxMultiple(3, 10)
