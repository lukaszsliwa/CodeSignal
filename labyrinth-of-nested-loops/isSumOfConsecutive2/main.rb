def isSumOfConsecutive2(n)
  ways = 0
  (1..(n / 2)).each do |i|
    temp = 0
    x = i
    while temp < n
      temp += x
      x += 1
    end
    ways += 1 if temp == n
  end 
  ways
end

puts isSumOfConsecutive2(9)
puts isSumOfConsecutive2(8)

