def secondRightmostZeroBit(n)
    return 2 ** n.to_s(2).split('').reverse.map.with_index { |x, i| x == '0' ? i : nil }.select { |x| !x.nil? }[1]
end

puts secondRightmostZeroBit(37).inspect

