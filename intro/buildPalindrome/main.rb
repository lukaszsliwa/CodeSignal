def buildPalindrome(string)
  return string if string == string.reverse
  index = 0
  0.upto(string.size - 1) do |index|
    result = string + string[0..index].reverse
    return result if result == result.reverse
  end
  string + string.reverse
end

puts buildPalindrome("abcdc")

