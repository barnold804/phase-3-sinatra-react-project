puts "🌱 Seeding spices..."

# Seed your database here

puts "Deleting old seed data"
Shelter.destroy_all
Animal.destroy_all
Adopter.destroy_all
Comment.destroy_all

puts "Creating shelters"
shelter = Shelter.create(shelter_name: "Sprout and Spruce's Shelter", shelter_address: Faker::Address.full_address, shelter_phone: Faker::PhoneNumber.phone_number)

puts "Creating animals"
animal1 = Animal.create(animal_name: Faker::Name.name , breed: "cat", age: rand(1..15), shelter_id: shelter.id)
animal2 = Animal.create(animal_name: Faker::Name.name , breed: "dog", age: rand(1..15), shelter_id: shelter.id)
animal3 = Animal.create(animal_name: Faker::Name.name , breed: "dog", age: rand(1..15), shelter_id: shelter.id)
animal4 = Animal.create(animal_name: Faker::Name.name , breed: "cat", age: rand(1..15), shelter_id: shelter.id)
animal5 = Animal.create(animal_name: Faker::Name.name , breed: "snake", age: rand(1..15), shelter_id: shelter.id)
animal6 = Animal.create(animal_name: Faker::Name.name , breed: "dog", age: rand(1..15), shelter_id: shelter.id)
animal7 = Animal.create(animal_name: Faker::Name.name , breed: "parrot", age: rand(1..15), shelter_id: shelter.id)
animal8 = Animal.create(animal_name: Faker::Name.name , breed: "rabbit", age: rand(1..15), shelter_id: shelter.id)
animal9 = Animal.create(animal_name: Faker::Name.name , breed: "hamster", age: rand(1..15), shelter_id: shelter.id)
animal10 = Animal.create(animal_name: Faker::Name.name , breed: "fish", age: rand(1..15), shelter_id: shelter.id)

puts "Creating adopters"
10.times do
Adopter.create(adopter_name: Faker::Name.name, email: Faker::Internet.email, adopter_phone: Faker::PhoneNumber.phone_number)
end

puts "Creating comments"
10.times do
    Comment.create(comments: Faker::Hipster.paragraph, animal_id: Animal.all.sample.id, adopter_id: Adopter.all.sample.id)
end

puts "✅ Done seeding!"
