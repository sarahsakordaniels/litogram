# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.destroy_all
Text.destroy_all
Artist.destroy_all
ArtWork.destroy_all

sylvia = Author.create(name:"Sylvia Plath", bio:"She was a sad woman.", wiki:"https://en.wikipedia.org/wiki/Sylvia_Plath")

sylvia_excerpt = Text.create(title:"Journal Excerpt", content: 'I can never read all the books I want; I can never be all the people I want and live all the lives I want. I can never train myself in all the skills I want. And why do I want? I want to live and feel all the shades, tones and variations of mental and physical experience possible in my life. And I am horribly limited.', author: sylvia)

varo = Artist.create(name:"Remedios Varo", bio:"Remedios Varo Uranga (16 December 1908 – 8 October 1963) was a Spanish surrealist artist working in Spain, France, and Mexico.", wiki:"https://en.wikipedia.org/wiki/Remedios_Varo")

plant = ArtWork.create(title:"Plant", style:"Surrealism", description: "A plant in free space", year: 1960, image_link: "https://uploads3.wikiart.org/images/remedios-varo/plant-1960.jpg", wiki:"https://www.wikiart.org/en/remedios-varo/plant-1960/", artist: varo)


magniloquent = WordOfTheDay.create(word:"magniloquent", definition: "speaking in or characterized by a high-flown often bombastic style or manner",
origin:"Magnus means 'great' in Latin; loqui is a Latin verb meaning 'to speak.' Combine the two and you get magniloquus, the Latin predecessor of magniloquent. English-speakers started using magniloquent in the 1600s—even though we have had its synonym grandiloquent since the 1500s. Grandiloquent comes from Latin grandiloquus, which combines loqui and grandis, another word for 'great' in Latin. Today, these synonyms continue to exist side by side and to be used interchangeably, though grandiloquent is the more common of the two.", example:"The magniloquent sportscaster sometimes got so carried away with his monologues that he would forget to describe the action on the field.",
part_of_speech: "adjective", pronunciation: "mag-NIL-uh-kwunt")
