def arrayMaxConsecutiveSum(array, k)
  sums = [array[0..(k - 1)].sum]
  1.upto(array.size - k) do |i|
    sums << (sums[i - 1] - array[i - 1] + array[i + k - 1])
  end
  sums.max
end

puts arrayMaxConsecutiveSum([2, 3, 5, 1, 6], 2)

