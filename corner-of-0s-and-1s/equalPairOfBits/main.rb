def equalPairOfBits(n, m)
    return 2 ** (0..32).to_a.map { |i| n.to_s(2).rjust(32, '0').split('').reverse[i] == m.to_s(2).rjust(32, '0').split('').reverse[i] ? i : nil }.select {|x| !x.nil? }[0]
end

