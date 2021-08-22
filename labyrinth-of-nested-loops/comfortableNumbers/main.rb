def comfortableNumbers(l, r)
  count = 0
  (l..r).each do |a|
    ((a + 1)..r).each do |b|
      a_sum = a.to_s.split('').map { |x| x.to_i }.sum
      b_sum = b.to_s.split('').map { |x| x.to_i }.sum
      count += 1 if b <= a + a_sum && a >= b - b_sum
    end
  end
  count
end

