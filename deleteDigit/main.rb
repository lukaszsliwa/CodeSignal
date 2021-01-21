def deleteDigit(n)
  result = 0
  0.upto(n.to_s.size - 1) do |x|
    p = n.to_s
    p[x] = ''
    result = [result, p.to_i].max
  end
  result
end

puts deleteDigit(152)
puts deleteDigit(1001)

