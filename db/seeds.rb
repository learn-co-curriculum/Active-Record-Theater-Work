puts "Seeding..."

10.times do
    r1 = Role.create(character_name: Faker::Superhero.name)
    
    a1 = Audition.create(
        actor: Faker::Kpop.solo,
        location: Faker::University.name,
        phone: Faker::PhoneNumber.phone_number,
        hired: rand(0..1),
        role_id: r1.id
    )
    
        
    end
        
puts "Done Seeding..."