def extractEachKth(array, k)
  array.map.with_index { |x, i| (i + 1) % k == 0 ? nil : x }.select { |x| !x.nil? }
end

puts extractEachKth([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3).inspect
