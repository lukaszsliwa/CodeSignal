def squareDigitsSequence(a0)
  a = {}
  a[a0] = true
  a_next = a0
  loop do
    a_next = a_next.to_s.split('').map { |x| x.to_i ** 2 }.sum
    return a.keys.size + 1 if a[a_next]
    a[a_next] = true
  end
end

puts squareDigitsSequence(16)
puts squareDigitsSequence(103)

