def differentSymbolsNaive(s)
  s.split('').uniq.size
end

puts differentSymbolsNaive('cabca')
