def chessKnight(cell)
  moves = 8
  if cell[0].ord >= 'c'.ord && cell[0].ord <= 'f'.ord && cell[1].ord >= '3'.ord && cell[1].ord <= '6'.ord
    return moves
  end
    
  if (cell[0] == 'a' || cell[0] == 'h') && (cell[1] == '1' || cell[1] == '8')
    return moves / 4
  end
    
  if ((cell[0] == 'b' || cell[0] == 'g') && (cell[1] == '1' || cell[1] == '8')) ||
       ((cell[0] == 'a' || cell[0] == 'h') && (cell[1] == '2' || cell[1] == '7'))
    return (moves / 4) + 1 
  end
    
  horizontal, vertical = 0, 0
  if cell[0].ord < 'c'.ord
    horizontal = 'c'.ord - cell[0].ord
  elsif cell[0].ord > 'f'.ord
    horizontal = cell[0].ord - 'f'.ord
  end

  if cell[1].ord < '3'.ord
    vertical = '3'.ord - cell[1].ord
  elsif cell[1].ord > '6'.ord
    vertical = cell[1].ord - '6'.ord
  end
    
  moves - (vertical + horizontal) * 2
end

puts chessKnight('a1')
puts chessKnight('c2')

