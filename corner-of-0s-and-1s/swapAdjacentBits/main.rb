def swapAdjacentBits(n)
    return (0..32).step(2).map { |x| n.to_s(2).rjust(32, '0')[x..x+1] }.select { |x| x != '' }.map { |x| x.reverse.split('') }.flatten.map(&:to_i).reverse.map.with_index { |x, i| x * (2 ** i) }.sum
end

puts swapAdjacentBits(13)
puts swapAdjacentBits(74)

