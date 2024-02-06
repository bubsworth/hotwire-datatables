# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10_000.times do |i|
  Employee.create(
    name: Faker::Name.name,
    position: ["Accountant", "Cheif Executive Officer (CEO)", "Cheif Financial Officer (CFO)", "Cheif Marketing Officer (CMO)"].sample,
    office: ["London", "Singapore", "Tokyo", "New York", "Edinburgh", "San Francisco"].sample,
    age: rand(20..100),
    start_date: rand(1..1000).days.ago.to_date,
  )
end
