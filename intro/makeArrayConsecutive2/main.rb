def makeArrayConsecutive2(statues)
  sizes, result = {}, 0
  statues = statues.sort
  statues.each { |x| sizes[x] = true }
  from, to = statues.first, statues.last
  from.upto(to) do |x| 
    result += 1 unless sizes[x] == true
  end
  result
end

puts makeArrayConsecutive2([6, 2, 3, 8])
puts makeArrayConsecutive2([2, 2, 2])
puts makeArrayConsecutive2([2, 3, 2])

