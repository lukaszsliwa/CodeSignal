def alternatingSums(a)
    sum1, sum2 = 0, 0
    a.each_with_index { |value, index| index % 2 == 0 ? sum1 += value : sum2 += value }
    [sum1, sum2]
end

puts alternatingSums([50, 60, 60, 45, 70])

