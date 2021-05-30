# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

administrador = User.create(name: "Rafael Carrilho", email: "rafael.carrilho@injunior.com.br", password:"12345678", password_confirmation:"12345678", role:1)
estudante = User.create(name: "Thiago Andrade", email: "thiago.andrade@injunior.com.br", password:"12345678", password_confirmation:"12345678", role:3)
instrutor = User.create(name: "Gyselle Melo", email: "gyselle.melo@injunior.com.br", password:"12345678", password_confirmation:"12345678", role:2)