def almostIncreasingSequence(sequence)
  number_of_invalids = 0

  1.upto(sequence.length - 1) do |index|
    if sequence[index] <= sequence[index-1]
      number_of_invalids += 1
      return false if number_of_invalids > 1 || \
        index >= 2 && !sequence[index + 1].nil? && \
        sequence[index] <= sequence[index - 2] && \
        sequence[index + 1] <= sequence[index - 1]
    end
  end

  true
end

puts almostIncreasingSequence([1, 3, 2, 1])
puts almostIncreasingSequence([1, 3, 2])
puts almostIncreasingSequence([])
puts almostIncreasingSequence([1, 2])

