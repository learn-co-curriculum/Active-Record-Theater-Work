# db/seeds.rb

puts "Clearing existing data"
Actor.destroy_all
Role.destroy_all
Audition.destroy_all

puts "Creating Actors..."
john = Actor.create!(name: "John Doe", phone: 1234567890)
jane = Actor.create!(name: "Jane Smith", phone: 2345678901)
alice = Actor.create!(name: "Alice Johnson", phone: 3456789012)
bob = Actor.create!(name: "Bob Brown", phone: 4567890123)

puts "Creating Roles..."
hamlet = Role.create!(character_name: "Hamlet")
ophelia = Role.create!(character_name: "Ophelia")
macbeth = Role.create!(character_name: "Macbeth")
lady_macbeth = Role.create!(character_name: "Lady Macbeth")

puts "Creating Auditions..."
Audition.create!(location: "New York", hired: true, role: hamlet, actor: john)
Audition.create!(location: "Los Angeles", hired: false, role: ophelia, actor: jane)
Audition.create!(location: "Chicago", hired: true, role: macbeth, actor: alice)
Audition.create!(location: "San Francisco", hired: false, role: lady_macbeth, actor: bob)
Audition.create!(location: "New York", hired: true, role: hamlet, actor: alice)
Audition.create!(location: "Los Angeles", hired: false, role: hamlet, actor: jane)

puts "Seed data successfully created!"
