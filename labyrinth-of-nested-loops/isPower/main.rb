def isPower(n)
  return true if n == 1
  (2..(n - 1)).each do |a|
    p = 1
    loop do
      return true if a ** p == n
      break if a ** p > n
      p += 1
    end
  end
  false
end

puts isPower(125)
puts isPower(72)

