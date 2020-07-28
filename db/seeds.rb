# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD

# def make_seeds
#     make_cities
#     make_neighborhoods
#     make_clients
#     make_stylists
#     make_reviews
#     p "Seeding Done!"
# end

# def make_cities
    City.create(city: "New York City", state: "NY")
# end

# def make_neighborhoods
    Neighborhood.create(name: "FiDi", city_id: City.first)
    Neighborhood.create(name: "Tribeca", city_id: City.first)
    Neighborhood.create(name: "Chinatown", city_id: City.first)
    Neighborhood.create(name: "SoHo", city_id: City.first)
    Neighborhood.create(name: "Lower East Side", city_id: City.first)
    Neighborhood.create(name: "East Village", city_id: City.first)
    Neighborhood.create(name: "Greenwich Village", city_id: City.first)
    Neighborhood.create(name: "Chelsea", city_id: City.first)
    Neighborhood.create(name: "Gramercy", city_id: City.first)
    Neighborhood.create(name: "Midtown West", city_id: City.first)
    Neighborhood.create(name: "Midtown East", city_id: City.first)
    Neighborhood.create(name: "Upper West Side", city_id: City.first)
    Neighborhood.create(name: "Upper East Side", city_id: City.first)
    Neighborhood.create(name: "Harlem", city_id: City.first)
    Neighborhood.create(name: "East Harlem", city_id: City.first)
    Neighborhood.create(name: "Hamilton Heights", city_id: City.first)
    Neighborhood.create(name: "Washington Heights", city_id: City.first)
    Neighborhood.create(name: "Inwood", city_id: City.first)
# end

# def make_clients
    Client.create(name: "Herbert Garrison", age: 41)
    Client.create(name: "Sheila Broflovski", age: 43)
    Client.create(name: "Liane Cartman", age: 38)
    Client.create(name: "Randy Marsh", age: 40)
    Client.create(name: "Diane Choksondik", age: 52)
# end

# def make_stylists
    Stylist.create(name: "Marie Robinson", bio: "Considered by many as the best stylist in NYC, Marie Robinson owes her long list of A-list patrons to her unmatched talent and warm personality.", years_of_practice: 15, licenses: "NYSDOS Natural Hair Styling License", city_id: 1, neighborhood_id: 1)
    Stylist.create(name: "Mary Lee", bio: "Experienced hairstylist for celebreties on tour, Mary returned to her roots in NYC to continue pushing the envelope with innovative techniques that will turn heads in the streets.", years_of_practice: 13, licenses: "NYSDOS Natural Hair Styling License", city_id: 1, neighborhood_id: 2)
    Stylist.create(name: "Drew Calloway", bio: "Raised in the South, Drew relocated to NYC to take his techniques and clients to the next level.", years_of_practice: 10, licenses: "NYSDOS Natural Hair Styling License", city_id: 1, neighborhood_id: 3)
    Stylist.create(name: "Paulette Bonafonte", bio: "Don't let her sometimes shy exterior fool you - Paulette's spunky personality and mastery of hair will give you the look you always wanted. Sometimes wears tight and short clothes for her crush, the UPS guy.", years_of_practice: 18, licenses: "NYSDOS Natural Hair Styling License", city_id: 1, neighborhood_id: 4)
# end

# def make_reviews
    Review.create(rating: 5, description: "Drew knew how to make me feel fabulous and laugh, even after both sex changes over the years. Highly recommend!", client_id: Client.first.id, stylist_id: Stylist.third.id)
    Review.create(rating: 5, description: "Paulette is so kind and knows how to make me look just right. We've resolved our differences after I unknowingly slept with the UPS man. I hope their first date goes well!", client_id: Client.third.id, stylist_id: Stylist.last.id)
    Review.create(rating: 5, description: "Mary's haircut resparked things between my wife, Sharon, and I. The kids said my haircut is lit!", client_id: Client.fourth.id, stylist_id: Stylist.second.id)
# end

# make_seeds
=======
>>>>>>> 8473b53aef6d52b16899b36e8941d8590c0b7459
