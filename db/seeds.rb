puts "Deleting All Data..."
Role.delete_all
Audition.delete_all

Role.reset_pk_sequence
Audition.reset_pk_sequence



puts "Seeding Roles..."
Role.create(character_name: "Sponge Bob")
Role.create(character_name: "Shrek")
Role.create(character_name: "Totoro")
Role.create(character_name: "Betty Boop")
Role.create(character_name: "Goofy")
Role.create(character_name: "Buttercup")


puts "Seeding Auditions..."
Audition.create(actor: "William", location: "Ruby", phone: 232323232, hired: false, role_id: 2 )
Audition.create(actor: "Kenneth", location: "Nola", phone: 232323232, hired: false, role_id: 6 )
Audition.create(actor: "Jordan", location: "Penn", phone: 232323232, hired: true, role_id: 1 )
Audition.create(actor: "Caleb", location: "Nola", phone: 232323232, hired: false, role_id: 5 )
Audition.create(actor: "Andy", location: "Nola", phone: 232323232, hired: false, role_id: 1 )
Audition.create(actor: "Jasmin", location: "Nola", phone: 232323232, hired: false, role_id: 2 )


puts "Seeding done!"

