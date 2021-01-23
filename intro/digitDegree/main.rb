def digitDegree(n)
  n, degree = n.to_s, 0
  while n.size > 1
    n = n.split('').map { |x| x.to_i }.sum.to_s
    degree += 1
  end
  degree
end

puts digitDegree(5)
puts digitDegree(100)
puts digitDegree(91)

