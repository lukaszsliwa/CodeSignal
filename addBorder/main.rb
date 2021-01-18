def addBorder(picture)
  border = '*' * (picture.first.size + 2)
  bordered = [border]
  picture.each do |row|
    bordered << '*' + row + '*'
  end
  bordered << border
end

puts addBorder(["abc", "ded"])

