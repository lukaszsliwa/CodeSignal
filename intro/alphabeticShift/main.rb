def alphabeticShift(input)
  input.split('').map { |x| x == 'z' ? 'a' : x.next }.join
end

puts alphabeticShift("crazy")
