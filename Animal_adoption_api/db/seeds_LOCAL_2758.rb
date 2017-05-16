# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
Animal.destroy_all



location1=Location.create!({name:"Paw Justice", address:"1250 Love St. NW, Washington D.C. 20007",address_url:"https://www.google.com/maps/place/Love+Funding+Corporation/@38.9069202,-77.0445726,17z/data=!3m1!4b1!4m5!3m4!1s0x89b7b7c78064c053:0x373b5af2879f3e89!8m2!3d38.906916!4d-77.0423839?hl=en", photo_url:"http://craigdunn.co.nz/wp-content/uploads/2014/08/PawJustice.jpg", phone_number:"(424)530-6789"})
location2=Location.create!({name:"Furry Friends Inc.", address:"2020 Kitty St. NW, Washington D.C. 20007", address_url:"https://www.google.com/maps/place/2020+K+St+NW,+Washington,+DC+20006/@38.9021386,-77.0481812,17z/data=!3m1!4b1!4m5!3m4!1s0x89b7b7b0b4cc2531:0xef5323874e572e47!8m2!3d38.9021344!4d-77.0459925?hl=en", photo_url:"https://s-media-cache-ak0.pinimg.com/originals/08/46/71/0846717a62954c4c78c64244d3306e98.jpg",phone_number:"(560)234-8545"})
location3=Location.create!({name:"Ruff Road", address:"15 New York Ave. SE, Washington D.C. 204019", address_url:"https://www.google.com/maps/place/Unleashed+by+Petco/@38.8638732,-77.0535232,12z/data=!4m8!1m2!2m1!1spet+store+near+Southeast+Drive,+Wa", photo_url:"https://ruffroadpetrescue.files.wordpress.com/2016/08/ruff-road-logo1-e1472334054575.jpg?w=0&h=320&crop=1", phone_number:"(560)234-8545"})
location4=Location.create!({name:"Petluv", address:"4040 State St. NW, Washington D.C. 20007", address_url:"https://www.google.com/maps/place/Doggie+Style+LLC/@38.9344568,-77.0962675,14z/data=!4m8!1m2!2m1!1spet+store+NW+Washington+DC!3m4!1s0x89b7b7c4fbb562d3:0x74d32b5fda2cc712!8m2!3d38.9150361!4d-77.0414693?hl=en", photo_url: "https://topiclessbar.files.wordpress.com/2012/02/belong-pet-shop.jpg", phone_number:"(603)532-4808"})


animal1 = Animal.create!({animal_type:"Persian Cat", name:"Apple Jack", gender:"Male", age:3, is_adopted:false, preferences:"Obsessed with Catnip", days_left:7, photo_url:"https://purrfectcatbreeds.com/wp-content/uploads/2014/05/persian-cat3.jpg", location:location1 })
animal2 = Animal.create!({animal_type:"German Sheperd",name:"Bongo", gender:"Male",age:2, is_adopted:false, preferences:"Eats out of the Garbage", days_left:9, photo_url:"http://sheprescue.org/images/miley%20von%20meerane%204.JPG", location:location3})
animal3 = Animal.create!({animal_type:"Harlequin Rabbit",name:"Snickerdoodle", gender:"Female",age:1 , is_adopted:false, preferences:"Sleeps all day", days_left:10, photo_url:"http://da1urhpfd469z.cloudfront.net/uploads/advertphotos/17/0329/29890592-434-640x480.jpg", location:location1})
animal4 = Animal.create!({animal_type:"African Grey Parrot", name:"Mr. Feathers", gender:"Male",age:5, is_adopted:false, preferences:"Likes mimicking people", days_left:45, photo_url:"https://s-media-cache-ak0.pinimg.com/originals/8e/1a/e5/8e1ae50a5f1098511fbf51362e7fa8eb.jpg", location:location1})
animal5 = Animal.create!({animal_type:"Golden Tortoiseshell Shorthaired Syrian Hamster", name:"Nibbles", gender:"Female", age: 1, is_adopted:false, preferences:"Hides in boxes", days_left:2, photo_url:"https://s-media-cache-ak0.pinimg.com/originals/34/58/fe/3458feaf0b7c06cafa450ca79a45de0c.jpg",location:location1})
animal6 = Animal.create!({animal_type:"Siamese Kitten", name:"Mimi", gender:"Female", age:10, is_adopted:false, preferences:"Likes to play with balls", days_left: 10, photo_url:"http://images21.freeadspets.com/2015/12/05/FreeAdsPets.com-cats-gender-female-age-young-siamese-kittens-12-weeks-old-sacramento.JPG",location:location2})
animal7 = Animal.create!({animal_type:"Lanigera Chinchilla", name:"Oscar", gender:"Male", age:2, is_adopted:false, preferences:"Loves carrots and pecans", days_left: 8, photo_url:"http://i124.photobucket.com/albums/p20/chinchillachateau/pinkwhiteIvorySandi.jpg",location:location2})
animal8 = Animal.create!({animal_type:"Siberian Husky Puppy",name:"Ziggy", gender:"Male", age:12 , is_adopted:false, preferences:"Loves bacon and mud puddles",days_left:10, photo_url:"https://www.pets4homes.co.uk/images/classifieds/2016/01/27/1190957/large/husky-puppy-for-sale-age-17-weeks-56a894ea673ea.jpg",location:location2})
animal9 = Animal.create!({animal_type:"Black Holland Lop Rabbit", name:"Cottonball", gender:"Female", age:3, is_adopted:false, preferences:"Likes to chew on cardboard", days_left:7, photo_url:"http://i.ebayimg.com/00/s/ODAwWDYwMA==/z/7ZQAAOSwOyJX4sUA/$_35.JPG",location:location2})
animal10 = Animal.create!({animal_type:"Moluccan Cockatoo", name:"Toots", gender:"Male", age:5, is_adopted:false, preferences:"Likes to move to music", days_left:35, photo_url:"https://s-media-cache-ak0.pinimg.com/236x/ee/89/6a/ee896a6eddafdb2e7ae4d67ea766328f.jpg",location:location3})
