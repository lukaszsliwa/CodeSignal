def isMAC48Address(string)
  !/^([0-9A-F]{2})-([0-9A-F]{2})-([0-9A-F]{2})-([0-9A-F]{2})-([0-9A-F]{2})-([0-9A-F]{2})$/.match(string).nil?
end

puts isMAC48Address('00-1B-63-84-45-E6')
puts isMAC48Address('Z1-1B-63-84-45-E6')
puts isMAC48Address('not a MAC-48 address')

