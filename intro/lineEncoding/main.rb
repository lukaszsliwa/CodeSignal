def lineEncoding(s)
  counter = 1
  result = []
  s.split('').each_with_index do |x, index|
    next if index == 0
    if s[index - 1] == x
      counter += 1
    else
      result << (counter == 1 ? "#{s[index - 1]}" : "#{counter}#{s[index - 1]}")
      counter = 1
    end
  end
  result << (counter == 1 ? "#{s[s.size - 1]}" : "#{counter}#{s[s.size - 1]}")
  result.join
end

puts lineEncoding("aabbbc").inspect
puts lineEncoding("abc").inspect
puts lineEncoding("aab").inspect

