def chessBoardCellColor(cell1, cell2)
  a = cell1[0].ord - 64 + cell1[1].ord.to_i
  b = cell2[0].ord - 64 + cell2[1].ord.to_i
  (a % 2 == 0 && b % 2 == 0) || (a % 2 == 1 && b % 2 == 1)
end

puts chessBoardCellColor("A1", "C3")
puts chessBoardCellColor("A1", "H3")
