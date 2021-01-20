def isBeautifulString(input)
  counts = [0] * 256
  input.split('').each { |x| counts[x.ord] += 1 }
  ('a'..'z').each do |char|
    if counts[char.ord] < counts[char.ord + 1]
      return false
    end
  end
  true
end

puts isBeautifulString("bbbaacdafe")
puts isBeautifulString("aabbb")
puts isBeautifulString("bbc")

