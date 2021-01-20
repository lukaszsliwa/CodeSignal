def bishopAndPawn(bishop, pawn)
  (bishop[0].ord - pawn[0].ord).abs == (bishop[1].ord - pawn[1].ord).abs
end

puts bishopAndPawn('a1', 'c3')
puts bishopAndPawn('h1', 'h3')

