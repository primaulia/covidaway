# setup the db
puts "Destroy all data"
Citizen.destroy_all
Clinic.destroy_all

# create one normal citizen
puts "create one normal citizen"
Citizen.create!(
  email: 'prima@gmail.com',
  password: 'test123',
  nric: 'S1231231A',
  postal_code: '123123'
)

# create one admin
puts "create one admin"
Citizen.create!(
  email: 'admin@gmail.com',
  password: 'test123',
  nric: 'S1231232A',
  postal_code: '123123',
  role: 'admin'
)

# create 3 clinics
puts "Creating 3 clinics"
3.times do |index|
  Clinic.create(
    address: "Address #{index + 1}",
    capacity: rand(5..20)
  )
end

puts "Done!"