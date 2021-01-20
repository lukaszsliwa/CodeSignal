def absoluteValuesSumMinimization(a)
    result = a.map { |el| a.map { |x| (x - el).abs }.sum }.min
    a.sort.each do |el|
        return el if a.map { |x| (x - el).abs }.sum == result
    end
end

puts absoluteValuesSumMinimization([2, 4, 7])
puts absoluteValuesSumMinimization([2, 3])