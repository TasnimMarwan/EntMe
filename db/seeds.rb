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
#m10 = Movie.create(title: "Interstellar", image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/interstellar.jpg")