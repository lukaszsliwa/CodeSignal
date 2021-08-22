def rangeBitCount(a, b)
  (a..b).to_a.map { |x| x.to_s(2).split('').map(&:to_i) }.flatten.sum
end

