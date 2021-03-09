Review.destroy_all
Booking.destroy_all
Renter.destroy_all
Pet.destroy_all
Breed.destroy_all

breed1 = Breed.create(name: "Vizsla", description: "Hungarian hunting dog")
breed2 = Breed.create(name: "Poddle", description: "Fluffy soft toy")
breed3 = Breed.create(name: "Dalmatian", description: "Disney actor")
breed4 = Breed.create(name: "Italian Greyhound", description: "Sweet and savvy")

renter1 = Renter.create(username: "Linda", address: "50 Rockefeller plaza NYC", age: 18,  phone_number: "(917) 667 1689", picture: " ")
renter2 = Renter.create(username: "Bleak", address: "1 rue des Champs Elysees Paris", age: 22,  phone_number: "(201) 789 1345", picture:" ")
renter3 = Renter.create(username: "Lucie", address: "1300 Grand Street Hoboken NJ", age: 18,  phone_number: "(201) 456 9876", picture:" ")
renter4 = Renter.create(username: "Leon", address: "1238 Milano Plaza Milan", age: 45,  phone_number: "48-13-7889", picture:" ")

pet1 = Pet.create(name: "Charlay", description: "Sweet and funny", age:4, color: "Caramel", picture:" ", location: "Hoboken", breed: breed1)
pet2 = Pet.create(name: "Bijou", description: "Curly diva", age:3, color: "White", picture:" ", location: "Paris", breed: breed2)
pet3 = Pet.create(name: "Julio", description: "Speed and chic", age:1, color: "Silver", picture:" ", location: "Milano", breed: breed4)
pet4 = Pet.create(name: "John", description: "Charming and love spagetti", age:2, color: "black and white", picture:" ", location: "Florida", breed: breed3)

Review.create(comment: "That was an horrible puppy!! Don’t rent him is spoiled!", date:"24th of december", rating:1, animal: pet2, human: renter2) 
Review.create(comment: "I love him so much, I bought him!",  date:"12th of July",rating: 5, animal: pet2, human: renter2)
Review.create(comment: "Great", rating: 4, date: "9th of March", animal: pet4, human: renter1)
Review.create(comment: "I loved the experience", date:"4th of July" , rating: 5, animal: pet3, human: renter3)
Review.create(comment: "A wonderful piece of sweetness", date:"14th of July", rating: 5, animal: pet4, human: renter4)

Booking.create(location: "Paris", date:"24th of december", pet: pet1, renter: renter2)  
Booking.create(location: "Paris", date:"12th of July" , pet: pet2, renter: renter2)
Booking.create(location: "Paris", date:"9th of March", pet: pet4, renter: renter1)
Booking.create(location: "Paris", date:"4th of July" , pet: pet3, renter: renter3)
Booking.create(location: "Paris", date:"14th of July", pet: pet4, renter: renter4)

puts "We Got This right ?! SEEDED!!!"