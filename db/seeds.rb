# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.destroy_all
Text.destroy_all
sylvia = Author.create(name:"Sylvia Plath", bio:"She was a sad woman.", wiki:"https://en.wikipedia.org/wiki/Sylvia_Plath")
sylvia_excerpt = Text.create(title:"Journal Excerpt", content:"“I can never read all the books I want; I can never be all the people I want and live all the lives I want. I can never train myself in all the skills I want. And why do I want? I want to live and feel all the shades, tones and variations of mental and physical experience possible in my life. And I am horribly limited.", author: sylvia)
