def reverseParentheses(inputString)
    if inputString.include?('(')
      str = /\(([^()]*)\)/i.match(inputString)[1]
      reversed = str.reverse
      return reverseParentheses(
        inputString.gsub(/\(#{str}\)/, reversed)
      )
    else
      return inputString
    end
end

def reverseInParentheses(inputString)
    reverseParentheses(inputString)
end


puts reverseParentheses("(bar)")
puts reverseParentheses("foo(bar)baz")
puts reverseParentheses("foo(bar)baz(blim)")
puts reverseParentheses("foo(bar(baz))blim")
