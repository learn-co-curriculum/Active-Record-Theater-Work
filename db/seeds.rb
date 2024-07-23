puts "seeding"

role1 = Role.create(character_name: "Hamlet")
role2 = Role.create(character_name: "Ophelia")
role3 = Role.create(character_name: "Macbeth")
role4 = Role.create(character_name: "Lady Macbeth")

puts "......seeding auditons"

Audition.create(actor: "John Doe", location: "New York", phone: 1234567890, hired: false, role: role1)
Audition.create(actor: "Jane Smith", location: "Los Angeles", phone: 2345678901, hired: true, role: role2)
Audition.create(actor: "Tom Brown", location: "Chicago", phone: 3456789012, hired: false, role: role3)
Audition.create(actor: "Alice Johnson", location: "San Francisco", phone: 4567890123, hired: true, role: role4)

puts "finish seeding"
