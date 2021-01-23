def messageFromBinaryCode(code)
  code.chars.each_slice(8).to_a.map do |array|
    array.join.to_i(2).chr
  end.join
end

puts messageFromBinaryCode("010010000110010101101100011011000110111100100001").inspect

