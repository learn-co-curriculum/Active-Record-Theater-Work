# db/seeds.rb
Role.destroy_all
Audition.destroy_all

Role.create([
  { character_name: 'Hamlet' },
  { character_name: 'Ophelia' },
  { character_name: 'Macbeth' },
  { character_name: 'Lady Macbeth' }
])

Audition.create([
  { actor: 'John Doe', location: 'New York', phone: 1234567890, hired: true, role_id: Role.find_by(character_name: 'Hamlet').id },
  { actor: 'Jason Bourne', location: 'New York', phone: 9992345678, hired: true, role_id: Role.find_by(character_name: 'Hamlet').id },
  { actor: 'Jane Smith', location: 'Los Angeles', phone: 9876543210, hired: true, role_id: Role.find_by(character_name: 'Ophelia').id },
  { actor: 'Alice Johnson', location: 'Chicago', phone: 5556667777, hired: false, role_id: Role.find_by(character_name: 'Macbeth').id },
  { actor: 'Bob Brown', location: 'San Francisco', phone: 4445556666, hired: true, role_id: Role.find_by(character_name: 'Lady Macbeth').id }
])
