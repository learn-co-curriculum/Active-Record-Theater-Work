Audition.destroy_all
Role.destroy_all

role1 = Role.create(character_name: "Spider-Man")
role2 = Role.create(character_name: "Iron Man")

actors = ["Yuriy Ivanenko", "Cayla", "Liam", "Lumpy", "Gabby"]

actors.each_with_index do |actor, index|
  Audition.create(
    actor: actor,
    location: "Marvel Studios",
    phone: "555-1234",
    hired: index.odd?,
    role: role1
  )
end


Audition.create(
  actor: "TJ Martin",
  location: "Marvel Studios",
  phone: "555-5678",
  hired: true,
  role: role2
)
