def findEmailDomain(address)
  address.split('@').last
end

puts findEmailDomain("prettyandsimple@example.com")
puts findEmailDomain("fully-qualified-domain@codesignal.com")

