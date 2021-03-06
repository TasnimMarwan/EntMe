# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

m1 = Music.create(title: "Ocean's 11", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/oceans-11.jpg", price: 10)
m2 = Music.create(title: "The Perfect Storm", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/the-perfect-storm.jpg", price: 20)
m3 = Music.create(title: "Contagion", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/contagion.jpg", price: 30)
f4 = Film.create(title: "The Departed", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/the-departed.jpg", price: 40)
f5 = Film.create(title: "Inception", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/inception.jpg", price: 50)
f6 = Film.create(title: "The Dark Knight Rises", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/dark-knight-rises.jpg", price: 60)
g7 = Game.create(title: "Iron Man", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/iron-man.jpg", price: 70)
g8 = Game.create(title: "Sherlock Holmes", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/sherlock-holmes.jpg", price: 80)
g9 = Game.create(title: "Closer", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/closer.jpg",price: 90)

m11 = Music.create(title: "Ocean's 11", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/oceans-11.jpg", price: 110)
m12 = Music.create(title: "The Perfect Storm", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/the-perfect-storm.jpg", price: 120)
m13 = Music.create(title: "Contagion", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/contagion.jpg", price: 130)
f14 = Film.create(title: "The Departed", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/the-departed.jpg", price: 140)
f15 = Film.create(title: "Inception", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/inception.jpg", price: 150)
f16 = Film.create(title: "The Dark Knight Rises", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/dark-knight-rises.jpg", price: 160)
g17 = Game.create(title: "Iron Man", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/iron-man.jpg", price: 170)
g18 = Game.create(title: "Sherlock Holmes", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/sherlock-holmes.jpg", price: 180)
g19 = Game.create(title: "Closer", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/closer.jpg",price: 190)

c1 = Category.create(name: "First Category")
c2 = Category.create(name: "Second Category")
c3 = Category.create(name: "Third Category")
c4 = Category.create(name: "Forth Category")
c5 = Category.create(name: "Fifth Category")
c6 = Category.create(name: "Sixth Category")

c1.products << [m1, m3]
c2.products << [m2]
c3.products << [f4, f5]
c4.products << [f6]
c5.products << [g8, g9]
c6.products << [g7]
c1.products << [m11, m13]
c2.products << [m12]
c3.products << [f14, f15]
c4.products << [f16]
c5.products << [g18, g19]
c6.products << [g17]