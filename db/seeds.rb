Role.destroy_all
Audition.destroy_all
Actor.destroy_all

puts 'creating roles..'
hamlet = Role.create(character_name: "Hamlet")
juliet = Role.create(character_name: "Juliet")
macbeth = Role.create(character_name: "Macbeth")
ophelia = Role.create(character_name: "Ophelia")
othello = Role.create(character_name: "Othello")
desdemona = Role.create(character_name: "Desdemona")
iago = Role.create(character_name: "Iago")
lear = Role.create(character_name: "Lear")
cordelia = Role.create(character_name: "Cordelia")
lady_macbeth = Role.create(character_name: "Lady Macbeth")

puts 'creating actors..'
john_doe = Actor.create(name: "John Doe", phone: 1234567890)
jane_smith = Actor.create(name: "Jane Smith", phone: 2345678901)
alice_johnson = Actor.create(name: "Alice Johnson", phone: 3456789012)
bob_brown = Actor.create(name: "Bob Brown", phone: 4567890123)
charlie_davis = Actor.create(name: "Charlie Davis", phone: 5678901234)
emily_evans = Actor.create(name: "Emily Evans", phone: 6789012345)
frank_harris = Actor.create(name: "Frank Harris", phone: 7890123456)
grace_lee = Actor.create(name: "Grace Lee", phone: 8901234567)
henry_wilson = Actor.create(name: "Henry Wilson", phone: 9012345678)
ivy_martinez = Actor.create(name: "Ivy Martinez", phone: 1012345678)
bob_doe = Actor.create(name: "Bob Doe", phone: 1234567890)
cc_smith = Actor.create(name: "CC Smith", phone: 3456789012)
emma_davis = Actor.create(name: "Emma Davis", phone: 5678901234)

puts 'creating auditions..'
audition1 = Audition.create(location: "New York", hired: false, role: hamlet, actor: john_doe)
audition2 = Audition.create(location: "Los Angeles", hired: true, role: juliet, actor: jane_smith)
audition3 = Audition.create(location: "Chicago", hired: false, role: macbeth, actor: alice_johnson)
audition4 = Audition.create(location: "Houston", hired: true, role: ophelia, actor: bob_brown)
audition5 = Audition.create(location: "Phoenix", hired: true, role: othello, actor: charlie_davis)
audition6 = Audition.create(location: "Philadelphia", hired: true, role: desdemona, actor: emily_evans)
audition7 = Audition.create(location: "San Antonio", hired: false, role: iago, actor: frank_harris)
audition8 = Audition.create(location: "San Diego", hired: true, role: lear, actor: grace_lee)
audition9 = Audition.create(location: "Dallas", hired: false, role: cordelia, actor: henry_wilson)
audition10 = Audition.create(location: "San Jose", hired: true, role: lady_macbeth, actor: john_doe)
audition11 = Audition.create(location: "Tokyo", hired: true, role: hamlet, actor: bob_doe)
audition12 = Audition.create(location: "Chicago", hired: false, role: macbeth, actor: cc_smith)
audition13 = Audition.create(location: "Phoenix", hired: true, role: othello, actor: emma_davis)
