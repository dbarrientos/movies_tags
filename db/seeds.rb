# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MovieTag.destroy_all
Movie.destroy_all
Tag.destroy_all



m = Movie.new(name: "Terminator")
m.tags << Tag.new(name:"Terrible de buena")
m.tags << Tag.new(name:"Acción")
m.save
