def addTwoDigits(n)
  n.to_s.split('').map(&:to_i).sum
end

puts addTwoDigits(29)
