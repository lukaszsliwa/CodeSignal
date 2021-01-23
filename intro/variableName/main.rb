def variableName(name)
  !/^([a-zA-Z\_])([a-zA-Z0-9\_]*)$/.match(name).nil?
end

puts variableName("var_1__Int")
puts variableName("qq-q")
puts variableName("2w2")

