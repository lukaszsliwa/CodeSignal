def longestDigitsPrefix(string)
  return '' unless %w(0 1 2 3 4 5 6 7 8 9).include?(string[0])
  string.split('').each_with_index do |x, i|
    return string[0..(i - 1)] unless %w(0 1 2 3 4 5 6 7 8 9).include?(x)
  end
  string
end

puts longestDigitsPrefix('123aa1').inspect
puts longestDigitsPrefix('a12s2').inspect
puts longestDigitsPrefix('0123456789').inspect

