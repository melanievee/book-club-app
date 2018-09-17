# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Club.delete_all
Membership.delete_all
User.delete_all

puts "Seeding clubs"
club = Club.create(
  name: "My awesome book club"
)

puts "Seeding users"
lucille = User.create(
  first_name: "Lucille",
  last_name: "Bluth",
  email: "lucille@bookclubtest.com",
)
buster = User.create(
  first_name: "Buster",
  last_name: "Bluth",
  email: "buster@bookclubtest.com",
)
gob = User.create(
  first_name: "Gob",
  last_name: "Bluth",
  email: "gob@bookclubtest.com",
)
nonMember = User.create(
  first_name: "Tobias",
  last_name: "Funke",
  email: "tobias@bookclubtest.com",
)

puts "Seeding memberships"
Membership.create(
  club_id: club.id,
  user_id: lucille.id,
  is_admin: true,
)

Membership.create(
  club_id: club.id,
  user_id: buster.id,
  is_admin: false,
)

Membership.create(
  club_id: club.id,
  user_id: gob.id,
  is_admin: false,
)
