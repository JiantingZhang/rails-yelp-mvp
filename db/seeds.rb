
Restaurant.delete_all

10.times do
puts "creating a restaurant record"
  Restaurant.create(name: Faker::Company.name,
            address: Faker::Address.city,
            category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
            phone_number: Faker::PhoneNumber.cell_phone)
puts "finished creating the record"
end
puts "finished creating all 10 records"

