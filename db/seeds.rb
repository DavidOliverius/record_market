# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

genres = [
    'House', 'Techno', 'Electro', 'Tech House', 'Trance', 'Minimal', 'Breakbeat', 
    'Progressive House', 'Breaks', 'Garage House', 'Psy-Trance', 'UK Garage', 'Progressive Trance'] 

if Genre.count == 0
    genres.each do |genre|
        Genre.create(name: genre)
        puts "created #{genre} genre"
    end
end