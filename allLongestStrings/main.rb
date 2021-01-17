def allLongestStrings(array)
    longest = 0;

    array.each { |x| longest = [x.size, longest].max }
    array.select { |x| x.size == longest }
end

puts allLongestStrings(["aba", "aa", "ad", "vcd", "aba"])
