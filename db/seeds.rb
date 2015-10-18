# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
deeznuts = User.create(
name: "DeezNuts",
email: "DeezNuts2016@gmail.com",
password: "getcrackin"
)
jack = User.create(
name: "JackSchitt",
email: "JackSchitt65@gmail.com",
password: "idontknowjack"
)
wifey = User.create(
name: "DeezNutssWifey",
email: "DeezNuts2016forwomen@hotmail.com",
password: "getcrackindeezwhips"
)

Post.create(content: "Ha Gottem", user_id: deeznuts.id)
Post.create(content: "I dont know Jack Schitt, but who am I?", user_id: jack.id)
Post.create(content: "Tax evasion is cool", user_id: wifey.id)