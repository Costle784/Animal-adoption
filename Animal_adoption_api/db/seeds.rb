# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
Animal.destroy_all



location1=Location.create!({name:"Paw Justice", address:"5050 Love St. NW, Washington D.C. 20007", photo_url:"http://craigdunn.co.nz/wp-content/uploads/2014/08/PawJustice.jpg", phone_number:"(424)530-6789"})
location2=Location.create!({name:"Furry Friends Inc.", address:"2020 Kitty St. NW, Washington D.C. 20007", photo_url:"https://s-media-cache-ak0.pinimg.com/originals/08/46/71/0846717a62954c4c78c64244d3306e98.jpg",phone_number:"(560)234-8545"})
location3=Location.create!({name:"Ruff Road", address:"15 New York Ave. SE, Washington D.C. 204019", photo_url:"https://ruffroadpetrescue.files.wordpress.com/2016/08/ruff-road-logo1-e1472334054575.jpg?w=0&h=320&crop=1",phone_number:"(560)234-8545"})
location4=Location.create!({name:"Petluv", address:"4040 State St. NW, Washington D.C. 20007", photo_url:"https://topiclessbar.files.wordpress.com/2012/02/belong-pet-shop.jpg", phone_number:"(603)532-4808"})


animal1 = Animal.create!({animal_type:"Cat", animal_breed:"Persian Cat", name:"Apple Jack", gender:"Male", age:3, is_adopted:false, preferences:"Obsessed with Catnip", days_left:7, photo_url:"https://purrfectcatbreeds.com/wp-content/uploads/2014/05/persian-cat3.jpg", location:location1 })
animal2 = Animal.create!({animal_type:"Dog", animal_breed:"German Sheperd",name:"Bongo", gender:"Male",age:2, is_adopted:false, preferences:"Eats out of the Garbage", days_left:9, photo_url:"http://sheprescue.org/images/miley%20von%20meerane%204.JPG", location:location3})
animal3 = Animal.create!({animal_type:"Rabbit", animal_breed:"Harlequin Rabbit",name:"Snickerdoodle", gender:"Female",age:1, is_adopted:false, preferences:"Sleeps all day", days_left:10, photo_url:"http://da1urhpfd469z.cloudfront.net/uploads/advertphotos/17/0329/29890592-434-640x480.jpg", location:location1})
animal4 = Animal.create!({animal_type:"Bird", animal_breed:"African Grey Parrot", name:"Mr. Feathers", gender:"Male",age:5, is_adopted:false, preferences:"Likes mimicking people", days_left:45, photo_url:"https://s-media-cache-ak0.pinimg.com/originals/8e/1a/e5/8e1ae50a5f1098511fbf51362e7fa8eb.jpg", location:location1})
animal5 = Animal.create!({animal_type:"Hamster", animal_breed:"Golden Tortoiseshell Shorthaired Syrian Hamster", name:"Nibbles", gender:"Female", age: 1, is_adopted:false, preferences:"Hides in boxes", days_left:2, photo_url:"https://s-media-cache-ak0.pinimg.com/originals/34/58/fe/3458feaf0b7c06cafa450ca79a45de0c.jpg",location:location1})
animal6 = Animal.create!({animal_type:"Cat", animal_breed:"Siamese Kitten", name:"Mimi", gender:"Female", age:10, is_adopted:false, preferences:"Likes to play with balls", days_left: 10, photo_url:"http://images21.freeadspets.com/2015/12/05/FreeAdsPets.com-cats-gender-female-age-young-siamese-kittens-12-weeks-old-sacramento.JPG",location:location2})
animal7 = Animal.create!({animal_type:"Chinchilla", animal_breed:"Lanigera Chinchilla", name:"Oscar", gender:"Male", age:2, is_adopted:false, preferences:"Loves carrots and pecans", days_left: 8, photo_url:"http://i124.photobucket.com/albums/p20/chinchillachateau/pinkwhiteIvorySandi.jpg",location:location2})
animal8 = Animal.create!({animal_type:"Dog", animal_breed:"Siberian Husky Puppy",name:"Ziggy", gender:"Male", age:12 , is_adopted:false, preferences:"Loves bacon and mud puddles",days_left:10, photo_url:"https://www.pets4homes.co.uk/images/classifieds/2016/01/27/1190957/large/husky-puppy-for-sale-age-17-weeks-56a894ea673ea.jpg",location:location2})
animal9 = Animal.create!({animal_type:"Rabbit", animal_breed:"Black Holland Lop Rabbit", name:"Cottonball", gender:"Female", age:3, is_adopted:false, preferences:"Likes to chew on cardboard", days_left:7, photo_url:"http://i.ebayimg.com/00/s/ODAwWDYwMA==/z/7ZQAAOSwOyJX4sUA/$_35.JPG",location:location2})
animal10 = Animal.create!({animal_type:"Bird", animal_breed:"Moluccan Cockatoo", name:"Toots", gender:"Male", age:5, is_adopted:false, preferences:"Likes to move to music", days_left:35, photo_url:"https://s-media-cache-ak0.pinimg.com/236x/ee/89/6a/ee896a6eddafdb2e7ae4d67ea766328f.jpg",location:location3})
