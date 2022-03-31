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
animal1 = Animal.create(animal_name: "Luna" , breed: "Cat-Scottish Fold", age: rand(1..15), shelter_id: shelter.id)
animal2 = Animal.create(animal_name: "Bruce" , breed: "Dog-American Foxhound", age: rand(1..15), shelter_id: shelter.id)
animal3 = Animal.create(animal_name: "Snoopy" , breed: "Dog-Beagle", age: rand(1..15), shelter_id: shelter.id)
animal4 = Animal.create(animal_name: "Bella" , breed: "Cat-Siamese", age: rand(1..15), shelter_id: shelter.id)
animal5 = Animal.create(animal_name: "Princess" , breed: "Snake-Rosy Boa", age: rand(1..15), shelter_id: shelter.id)
animal6 = Animal.create(animal_name: "Vader" , breed: "Dog-Boxer", age: rand(1..15), shelter_id: shelter.id)
animal7 = Animal.create(animal_name: 'Minion' , breed: "Parrot-Cockatiel", age: rand(1..15), shelter_id: shelter.id)
animal8 = Animal.create(animal_name: "Fluffy" , breed: "Rabbit- American Chinchilla", age: rand(1..15), shelter_id: shelter.id)
animal9 = Animal.create(animal_name: "George" , breed: "Hamster-Roborovski", age: rand(1..15), shelter_id: shelter.id)
animal10 = Animal.create(animal_name: "Bob" , breed: "Fish-Fantail Goldfish", age: rand(1..15), shelter_id: shelter.id)

puts "Creating adopters"
10.times do
Adopter.create(adopter_name: Faker::Name.name, email: Faker::Internet.email, adopter_phone: Faker::PhoneNumber.phone_number)
end

puts "Creating comments"
# 10.times do
#     Comment.create(comments: Faker::Hipster.paragraph, animal_id: Animal.all.sample.id, adopter_id: Adopter.all.sample.id)
# end
Comment.create(comments: "This shelter is awesome!", animal_id: 1, adopter_id: 1)
Comment.create(comments: "This shelter really cares for these animals!", animal_id: 1, adopter_id: 1)
Comment.create(comments: "The animals are all so cute!", animal_id: 1, adopter_id: 1)


puts "✅ Done seeding!"
