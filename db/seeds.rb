Audition.delete_all
Role.delete_all

role1 = Role.create(character_name: "Hamlet")
role2 = Role.create(character_name: "Othello")
role3 = Role.create(character_name: "Macbeth")

Audition.create(actor: "John Doe", location: "New York", role: role1, hired: false, phone: "555-1234")
Audition.create(actor: "Jane Smith", location: "Los Angeles", role: role1, hired: true, phone: "555-5678")
Audition.create(actor: "Sam Johnson", location: "Chicago", role: role2, hired: false, phone: "555-8765")
Audition.create(actor: "Emily Davis", location: "San Francisco", role: role3, hired: true, phone: "555-4321")
Audition.create(actor: "Michael Brown", location: "Houston", role: role3, hired: false, phone: "555-3456")

puts "Seeding completed!"
