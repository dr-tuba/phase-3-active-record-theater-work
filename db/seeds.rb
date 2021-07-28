puts "Clearing database..."
Role.destroy_all
Audition.destroy_all

puts "Seeding roles..."
10.times do 
    Role.create(character_name: Faker::FunnyName.name_with_initial)
end

puts "Seeding auditions..."
10.times do 
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Space.planet,
        phone: Faker::PhoneNumber.cell_phone,
        hired: Faker::Boolean.boolean,
        role_id: Role.ids.sample
    )
end

puts "Done!"