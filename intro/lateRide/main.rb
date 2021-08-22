def lateRide(n)
    ((n / 60) / 10) + ((n / 60) % 10) + ((n % 60) / 10) + ((n % 60) % 10)
end

puts lateRide(240)
puts lateRide(808)


