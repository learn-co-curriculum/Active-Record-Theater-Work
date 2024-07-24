Audition.destroy_all
Role.destroy_all

role1 = Role.create(character_name: "Spider-Man")
role2 = Role.create(character_name: "Iron Man")

Audition.create(
  actor: "Yuriy Ivanenko",
  location: "Marvel Studios",
  phone: "555-1234",
  hired: false,
  role: role1
)

Audition.create(
  actor: "TJ Martin",
  location: "Marvel Studios",
  phone: "555-5678",
  hired: true,
  role: role2
)
