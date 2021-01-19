def arrayReplace(array, elem, sub)
  array.map { |x| x == elem ? sub : x }
end

puts arrayReplace([1, 2, 1], 1, 3)
