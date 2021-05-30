# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# administrador = User.create(name: "Rafael Carrilho", email: "rafael.carrilho@injunior.com.br", password:"12345678", password_confirmation:"12345678", role:1)
# estudante = User.create(name: "Thiago Andrade", email: "thiago.andrade@injunior.com.br", password:"12345678", password_confirmation:"12345678", role:3)
# instrutor = User.create(name: "Gyselle Melo", email: "gyselle.melo@injunior.com.br", password:"12345678", password_confirmation:"12345678", role:2)

# 25.times.each do 
#     News.create(title: "Nova notícia", user_id: 1, content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius libero at diam egestas, eget interdum nisi dignissim. Curabitur eu porta ante. Sed fringilla erat dui, at lacinia orci suscipit quis. Nulla accumsan nec mauris nec pretium. Phasellus molestie convallis cursus. Morbi nisl enim, suscipit hendrerit bibendum nec, fermentum id sem. Donec varius fringilla turpis. Nam eleifend dictum erat, in egestas dui tincidunt a. Duis vitae aliquet eros.")
# end

subjects = ["Rails", "React", "HTML", "CSS", "Javascript", "Ruby", "Criação"]
subjects.each do |sub|
    Subject.create(name: sub)
end