def firstDigit(string)
  string.split('').each do |x|
    return x if %w(0 1 2 3 4 5 6 7 8 9).include?(x)
  end
end

puts firstDigit('var_1__Int').inspect
puts firstDigit('q2q-q').inspect
puts firstDigit('0ss').inspect

