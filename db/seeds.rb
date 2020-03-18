# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    bri = User.create(username: "bri", bio: "I love dreamy impressionist paintings")
    stephen = User.create(username: "stephen", bio: "I am really into japanese sculptures and contemporary art")
    erin = User.create(username: "erin", bio: "I like whatever catches my eye")

    bripost = Post.create(image: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/436923/796299/restricted", 
    post_content: "I like that this painting depicts an ordinary moment, but also leaves so much to question -- why is his room empty? 
    And if his room is empty, 
    why does he take the care to keep a beautiful vase and hang some paintings? Is he a minimalist? 
    Is he going through a life change? There is a lot to ponder here.",
    artwork_title: "Morning",
    artist: "Maximilien Luce", genre: "Pontillist", user_id: bri.id)

    stephenpost = Post.create(image: "https://cdn.kastatic.org/ka-perseus-images/8eefc9d24cf33bca103752b89e6863d50e75003f.jpg", 
    artwork_title: "Electronic Superhighway: Continental U.S., Alaska, Hawaii, 1995",
    post_content: "This piece makes me think of all of the ways we are connected, whether it be through physical roads and through media, 
    what are the pathways that connect us?",
    artist: "Nam June Paik", genre: "Contemporary", user_id: stephen.id)

    erinpost = Post.create(image: "https://gagosian.com/media/images/gallery/news/2019/FFYxpkmmxNHQ_1480x1480.jpg", 
    post_content: "This makes me think of happiness and boldness and it’s also like a spotlight in blue and green sadness. 
    It’s like a contained cone of warmth which is how I think those feelings of sunniness usually appear", 
    artwork_title: "Orange Mood",
    artist: "Helen Frankenthaler", genre: "Painting", user_id: erin.id)

    bripost = Post.create(image: "https://preview.redd.it/bn9weyiojkdz.jpg?auto=webp&s=de920eb909d5310451eab60266442b97c529a228", 
    post_content: "This is a great reminder of how free a baby is to look any way and still be loved immensely, at what point do we learn to train our face
        to look acceptable?",
    artwork_title: "Class B",
    artist: "Johnson Tsang", genre: "Sculpture", user_id: bri.id)

    erinpost = Post.create(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQWsvzwtSMJiF89mcKXB8b6FXdEb2hUqVoY6EPrYhEBX5Le_nNM", 
    post_content: "This was such a powerful performance that revealed a lot about human nature", 
    artwork_title: "Rythmn 0",
    artist: "Marina Ambromovic", genre: "Performance", user_id: erin.id)

    erinpost = Post.create(image: "https://modernartnotespodcast.files.wordpress.com/2019/12/robert-zakanitch-towards-humming-1969..jpg?w=1100", 
    post_content: "I feel really calm looking at this.", 
    artwork_title: "Towards Humming",
    artist: "Robert Zakanitch", genre: "Painting", user_id: erin.id)

    erinpost = Post.create(image: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/9-the-garden-of-earthly-delights-hieronymus-bosch.jpg", 
    post_content: "It could take hours to take all of this in", 
    artwork_title: "The Garden of Earthly Delights",
    artist: "Hieronymus Bosch", genre: "Painting", user_id: erin.id)

    bripost = Post.create(image: "https://uploads8.wikiart.org/images/henri-de-toulouse-lautrec/in-bed-1893.jpg!Large.jpg", 
    post_content: "This looks so cozy", 
    artwork_title: "In bed",
    artist: "Henri de Toulouse - Lautrec", genre: "Painting", user_id: bri.id)

    


    bri_comment_stephen = Comment.create(content: "omg i love this piece!", post_id: bripost.id, user_id: stephen.id)
    stephen_comment_bri = Comment.create(content: "beautiful", post_id: stephenpost.id, user_id: bri.id)
   


   
   