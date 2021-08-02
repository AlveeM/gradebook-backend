# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Assignment.destroy_all
Classroom.destroy_all
Teacher.destroy_all

eric = Teacher.create(name: "Eric", subject: "Physical Education")

dodgeball = Classroom.create(name: "Dodgeball", teacher: eric)
Assignment.create(name: "If you can dodge a wrench", classroom: dodgeball)

cardio = Classroom.create(name: "Cardio", teacher: eric)
# eric.classrooms.create(name: "Cardio")
Assignment.create(name: "Run like the wind", classroom: cardio)


ethan = Teacher.create(name: "Ethan", subject: "Nuclear Chemistry")

chem = ethan.classrooms.create(name: "Nuclear Chemistry 909")

Assignment.create(name: "Space Chemistry", classroom: chem)
Assignment.create(name: "Rocket Surgery Chemistry", classroom: chem)