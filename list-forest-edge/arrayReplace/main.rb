def arrayReplace(inputArray, elemToReplace, substitutionElem)
  inputArray.map { |x| x == elemToReplace ? substitutionElem : x }
end

