def isIPv4Address(input)
  array = /^([0-9]+)\.([0-9]+)\.([0-9]+)\.([0-9]+)$/.match(input)
  return false if array.nil?
  
  a, b, c, d = array[1].to_i, array[2].to_i, array[3].to_i, array[4].to_i
  
  return false if a < 0 || a > 255
  return false if b < 0 || b > 255
  return false if c < 0 || c > 255
  return false if d < 0 || d > 255
  
  "#{a}.#{b}.#{c}.#{d}" == input
end


puts isIPv4Address("172.16.254.1")
puts isIPv4Address("172.316.254.1")
puts isIPv4Address(".16.254.1")
