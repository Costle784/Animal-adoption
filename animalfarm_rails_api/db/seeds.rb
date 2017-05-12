# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.destroy_all
Animal.destroy_all


location = Location.create({name:"", address:"", phone_number:"", photo_url:""})
animal = Animal.create({animal_type:"", location:"", name:"", gender:"", age:"", is_adopted:"", preferences:"", time_left:"" , photo_url:""})

location=Location.create{{name:"Petluv", address:"5050 Love St. NW, Washington D.C. 20007", phone_number:"(424)530-6789"}}
location=Location.create{{name:"Furry Friends Inc.", address:"2020 Kitty St. NW, Washington D.C. 20007", phone_number:"(560)234-8545"}}

animal = Animal.create{{animal_type:"Persian Cat", location:"Petluv", name:"Apple Jack", gender:"Male", age:"3 years old", is_adopted:"No", preferences:"Obsessed with Catnip", time_left:"7 years", photo_url:"https://purrfectcatbreeds.com/wp-content/uploads/2014/05/persian-cat3.jpg"}}
animal = Animal.create{{animal_type:"German Sheperd", location: "Petluv",name:"Bongo", gender:"Male",age:"2 years old", is_adopted:"No", preferences:"Eats out of the Garbage", time_left:"9 years", photo_url:"http://sheprescue.org/images/miley%20von%20meerane%204.JPG"}}
animal = Animal.create{{animal_type:"Harlequin Rabbit", location: "Petluv",name:"Snickerdoodle", gender:"Female",age:"1 year old", is_adopted:"No", preferences:"Sleeps all day", time_left:"10 years", photo_url:"http://da1urhpfd469z.cloudfront.net/uploads/advertphotos/17/0329/29890592-434-640x480.jpg"}}
animal = Animal.create{{animal_type:"African Grey Parrot", location: "Petluv", name:"Mr. Feathers", gender:"Male",age:"5 years old", is_adopted:"No", preferences:"Likes mimicking people", time_left:"45 years", photo_url:"https://s-media-cache-ak0.pinimg.com/originals/8e/1a/e5/8e1ae50a5f1098511fbf51362e7fa8eb.jpg"}}
animal = Animal.create{{animal_type:"Golden Tortoiseshell Shorthaired Syrian Hamster", location: "Petluv", name:"Nibbles", gender:"Female", age:"1 year old", is_adopted:"No", preferences:"Hides in boxes", time_left:"2 years", photo_url:"https://s-media-cache-ak0.pinimg.com/originals/34/58/fe/3458feaf0b7c06cafa450ca79a45de0c.jpg"}}
animal = Animal.create{{animal_type:"Siamese Kitten", location:"Furry Friends Inc.", name:"Mimi", gender:"Female", age:"10 weeks old", is_adopted:"No", preferences:"Likes to play with balls", time_left:"10 years and 38 weeks", photo_url:"http://images21.freeadspets.com/2015/12/05/FreeAdsPets.com-cats-gender-female-age-young-siamese-kittens-12-weeks-old-sacramento.JPG"}}
animal = Animal.create{{animal_type:"Lanigera Chinchilla", location:"Furry Friends Inc.", name:"Oscar", gender:"Male", age:"2 years old", is_adopted:"No", preferences:"Loves carrots and pecans", time_left:"8 years", photo_url:"http://i124.photobucket.com/albums/p20/chinchillachateau/pinkwhiteIvorySandi.jpg"}}
animal = Animal.create{{animal_type:"Siberian Husky Puppy", location:"Furry Friends Inc.", name:"Ziggy", gender:"Male", age:"12 weeks old", is_adopted:"No", preferences:"Loves bacon and mud puddles",time_left:"10 years and 36 weeks", photo_url:"https://www.pets4homes.co.uk/images/classifieds/2016/01/27/1190957/large/husky-puppy-for-sale-age-17-weeks-56a894ea673ea.jpg"}}
animal = Animal.create{{animal_type:"Black Holland Lop Rabbit", location:"Furry Friends Inc.", name:"Cottonball", gender:"Female", age:"3 years old", is_adopted:"No", preferences:"Likes to chew on cardboard", time_left:"7 years", photo_url:"http://i.ebayimg.com/00/s/ODAwWDYwMA==/z/7ZQAAOSwOyJX4sUA/$_35.JPG"}}
animal = Animal.create{{animal_type:"Moluccan Cockatoo", location:"Furry Friends Inc.", name:"Toots", gender:"Male", age:"5 years old", is_adopted:"No", preferences:"Likes to move to music", time_left:"35 years", photo_url:"https://s-media-cache-ak0.pinimg.com/236x/ee/89/6a/ee896a6eddafdb2e7ae4d67ea766328f.jpg"}}
