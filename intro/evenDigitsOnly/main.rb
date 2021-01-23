def evenDigitsOnly(n)
  n.to_s.split('').all? { |x| %w(0 2 4 6 8).include?(x) }
end

puts evenDigitsOnly(248622)
puts evenDigitsOnly(642386)
